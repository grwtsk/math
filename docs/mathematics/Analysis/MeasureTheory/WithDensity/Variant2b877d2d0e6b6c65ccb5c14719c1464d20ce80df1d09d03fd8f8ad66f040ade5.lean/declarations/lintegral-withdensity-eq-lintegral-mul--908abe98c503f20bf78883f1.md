# lintegral_withDensity_eq_lintegral_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5614894732293f9dbc288ad091284a54d909a3f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3bdf23a-950c-821b-62a4-e769caabdce5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:563489ad-ca1c-5735-99f9-e4a75cbc2f48",
  "kind": "theorem",
  "lexical_name": "lintegral_withDensity_eq_lintegral_mul",
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
  "slug": "lintegral-withdensity-eq-lintegral-mul--908abe98c503f20bf78883f1",
  "source": {
    "blob": "5614894732293f9dbc288ad091284a54d909a3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 398,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908abe98c503f20bf78883f15d3679d248c53f2614d1a5f6552586b7dc19e11d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:563489ad-ca1c-5735-99f9-e4a75cbc2f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_withDensity_eq_lintegral_mul (μ : Measure α) {f : α → ℝ≥0∞}
    (h_mf : Measurable f) :
    ∀ {g : α → ℝ≥0∞}, Measurable g → ∫⁻ a, g a ∂μ.withDensity f = ∫⁻ a, (f * g) a ∂μ := by
  apply Measurable.ennreal_induction
  · intro c s h_ms
    simp [*, mul_comm _ c, ← indicator_mul_right]
  · intro g h _ h_mea_g _ h_ind_g h_ind_h
    simp [mul_add, *, Measurable.fun_mul]
  · intro g h_mea_g h_mono_g h_ind
    have : Monotone fun n a => f a * g n a := fun m n hmn x => by dsimp; grw [h_mono_g hmn x]
    simp [lintegral_iSup, ENNReal.mul_iSup, h_mf.fun_mul (h_mea_g _), *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5614894732293f9dbc288ad091284a54d909a3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
