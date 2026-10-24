# lintegral_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e7ae7b53a019fd5b5af650a77118dc1428dd2e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0445f593-beef-99cb-9d45-f38569c73111",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fb5ae37-38e7-34c4-bd3c-9987a2100378",
  "kind": "theorem",
  "lexical_name": "lintegral_join",
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
  "slug": "lintegral-join--a31f6db7fa153e7ac6ee0883",
  "source": {
    "blob": "6e7ae7b53a019fd5b5af650a77118dc1428dd2e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 190,
    "path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a31f6db7fa153e7ac6ee088321150e1349da3f86ad13ade4da2cfe8d39a6e525",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fb5ae37-38e7-34c4-bd3c-9987a2100378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_join {m : Measure (Measure α)} {f : α → ℝ≥0∞} (hf : AEMeasurable f (join m)) :
    ∫⁻ x, f x ∂join m = ∫⁻ μ, ∫⁻ x, f x ∂μ ∂m := by
  wlog hfm : Measurable f generalizing f
  · rcases hf with ⟨g, hgm, hfg⟩
    rw [lintegral_congr_ae hfg, this hgm.aemeasurable hgm]
    exact lintegral_congr_ae <| (ae_ae_of_ae_join hfg).mono fun μ hμ ↦
      .symm <| lintegral_congr_ae hμ
  simp_rw [lintegral_eq_iSup_eapprox_lintegral hfm, SimpleFunc.lintegral,
    join_apply (SimpleFunc.measurableSet_preimage _ _)]
  clear hf
  suffices
    ∀ (s : ℕ → Finset ℝ≥0∞) (f : ℕ → ℝ≥0∞ → Measure α → ℝ≥0∞), (∀ n r, Measurable (f n r)) →
      Monotone (fun n μ => ∑ r ∈ s n, r * f n r μ) →
      ⨆ n, ∑ r ∈ s n, r * ∫⁻ μ, f n r μ ∂m = ∫⁻ μ, ⨆ n, ∑ r ∈ s n, r * f n r μ ∂m by
    refine
      this (fun n => SimpleFunc.range (SimpleFunc.eapprox f n))
        (fun n r μ => μ (SimpleFunc.eapprox f n ⁻¹' {r})) ?_ ?_
    · exact fun n r => measurable_coe (SimpleFunc.measurableSet_preimage _ _)
    · exact fun n m h μ => SimpleFunc.lintegral_mono (SimpleFunc.monotone_eapprox _ h) le_rfl
  intro s f hf hm
  rw [lintegral_iSup _ hm]
  swap
  · fun_prop
  congr
  funext n
  rw [lintegral_finsetSum (s n)]
  · simp_rw [lintegral_const_mul _ (hf _ _)]
  · exact fun r _ => (hf _ _).const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e7ae7b53a019fd5b5af650a77118dc1428dd2e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
