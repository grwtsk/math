# setToFun_congr_measure_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52e2e8871b0e6a3462d3db39fb5a6de994f736e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 921,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8036a207-3347-cad7-bbe3-eb86ccdb7e86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ab7ae3b-4009-329b-3787-4a49aa6a959b",
  "kind": "theorem",
  "lexical_name": "setToFun_congr_measure_of_integrable",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "settofun-congr-measure-of-integrable--49b4447ac7324f369deceaa9",
  "source": {
    "blob": "52e2e8871b0e6a3462d3db39fb5a6de994f736e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 948,
    "line": 921,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b4447ac7324f369deceaa9abd4960e71ae4f10e481502272f0d59a7abea428",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ab7ae3b-4009-329b-3787-4a49aa6a959b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 921–948.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_congr_measure_of_integrable {μ' : Measure α} (c' : ℝ≥0∞) (hc' : c' ≠ ∞)
    (hμ'_le : μ' ≤ c' • μ) (hT : DominatedFinMeasAdditive μ T C)
    (hT' : DominatedFinMeasAdditive μ' T C') (f : α → E) (hfμ : Integrable f μ) :
    setToFun μ T hT f = setToFun μ' T hT' f := by
  -- integrability for `μ` implies integrability for `μ'`.
  have h_int : ∀ g : α → E, Integrable g μ → Integrable g μ' := fun g hg =>
    Integrable.of_measure_le_smul hc' hμ'_le hg
  -- We use `Integrable.induction`
  apply hfμ.induction (P := fun f => setToFun μ T hT f = setToFun μ' T hT' f)
  · intro c s hs hμs
    have hμ's : μ' s ≠ ∞ := by
      refine ((hμ'_le s).trans_lt ?_).ne
      rw [Measure.smul_apply, smul_eq_mul]
      exact ENNReal.mul_lt_top hc'.lt_top hμs
    rw [setToFun_indicator_const hT hs hμs.ne, setToFun_indicator_const hT' hs hμ's]
  · intro f₂ g₂ _ hf₂ hg₂ h_eq_f h_eq_g
    rw [setToFun_add hT hf₂ hg₂, setToFun_add hT' (h_int f₂ hf₂) (h_int g₂ hg₂), h_eq_f, h_eq_g]
  · refine isClosed_eq (continuous_setToFun hT) ?_
    have :
      (fun f : α →₁[μ] E => setToFun μ' T hT' f) = fun f : α →₁[μ] E =>
        setToFun μ' T hT' ((h_int f (L1.integrable_coeFn f)).toL1 f) := by
      ext1 f; exact setToFun_congr_ae hT' (Integrable.coeFn_toL1 _).symm
    rw [this]
    exact (continuous_setToFun hT').comp (continuous_L1_toL1 c' hc' hμ'_le)
  · intro f₂ g₂ hfg _ hf_eq
    have hfg' : f₂ =ᵐ[μ'] g₂ := (Measure.absolutelyContinuous_of_le_smul hμ'_le).ae_eq hfg
    rw [← setToFun_congr_ae hT hfg, hf_eq, setToFun_congr_ae hT' hfg']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean#L921).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e2e8871b0e6a3462d3db39fb5a6de994f736e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
