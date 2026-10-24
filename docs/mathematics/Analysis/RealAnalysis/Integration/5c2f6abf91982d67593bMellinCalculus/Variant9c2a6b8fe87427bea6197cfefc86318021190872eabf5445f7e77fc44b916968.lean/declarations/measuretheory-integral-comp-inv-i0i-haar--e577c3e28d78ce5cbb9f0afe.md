# MeasureTheory.integral_comp_inv_I0i_haar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:649c9df3-3324-5a11-5f91-4a1dabe68e2a",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.integral_comp_inv_I0i_haar",
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
  "slug": "measuretheory-integral-comp-inv-i0i-haar--e577c3e28d78ce5cbb9f0afe",
  "source": {
    "blob": "52982ff97a3b54116682c90b714698b4c7beb983",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e577c3e28d78ce5cbb9f0afe8c72320df0aec8882beee7b57fd2075d235c5c7b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:649c9df3-3324-5a11-5f91-4a1dabe68e2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.integral_comp_inv_I0i_haar (f : ℝ → 𝕂) :
    ∫ (y : ℝ) in Ioi 0, f (1 / y) / y = ∫ (y : ℝ) in Ioi 0, f y / y := by
  have := integral_comp_rpow_Ioi (fun y ↦ f y / y) (p := -1) (by simp)
  rw [← this, setIntegral_congr_fun (by simp)]
  intro y hy
  have : (y : 𝕂) ≠ 0 := (RCLike.ofReal_ne_zero).mpr <| LT.lt.ne' hy
  simp only [abs_neg, abs_one, rpow_neg_one, map_inv₀, div_inv_eq_mul,
    RCLike.real_smul_eq_coe_mul, RCLike.algebraMap_eq_ofReal]
  ring_nf
  simp [field]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52982ff97a3b54116682c90b714698b4c7beb983` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
