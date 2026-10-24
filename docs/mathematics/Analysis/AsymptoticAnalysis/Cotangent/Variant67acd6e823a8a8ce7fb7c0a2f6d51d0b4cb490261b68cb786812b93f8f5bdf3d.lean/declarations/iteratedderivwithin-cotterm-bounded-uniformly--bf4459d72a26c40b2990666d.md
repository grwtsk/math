# iteratedDerivWithin_cotTerm_bounded_uniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95f3a7c6-3810-2587-14cd-d2dcf2afe5cb",
  "kind": "lemma",
  "lexical_name": "iteratedDerivWithin_cotTerm_bounded_uniformly",
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
  "slug": "iteratedderivwithin-cotterm-bounded-uniformly--bf4459d72a26c40b2990666d",
  "source": {
    "blob": "72269d22ee9620a3a366eb7fcbc9aadc9ff593ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 308,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf4459d72a26c40b2990666d36b5e3c01f90a420d02b26a6c8addebbb0ac6825",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f3a7c6-3810-2587-14cd-d2dcf2afe5cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDerivWithin_cotTerm_bounded_uniformly
    {k : ℕ} {K : Set ℂ} (A B : ℝ) (hB : 0 < B)
    (hKAB : K ⊆ (↑) '' verticalStrip A B) (n : ℕ) {a : ℂ} (ha : a ∈ K) :
    ‖iteratedDerivWithin k (fun z ↦ cotTerm z n) ℍₒ a‖ ≤ cotTermUpperBound k A B hB n := by
  rcases hKAB ha with ⟨a, haAB, rfl⟩
  simp only [eqOn_iteratedDerivWithin_cotTerm_upperHalfPlaneSet k n a.im_pos, Complex.norm_mul,
    norm_pow, norm_neg, norm_one, one_pow, Complex.norm_natCast, one_mul, cotTermUpperBound,
    Int.reduceNeg, norm_zpow, Real.norm_eq_abs, two_mul, add_mul]
  gcongr
  have h1 := summand_bound_of_mem_verticalStrip (k := k + 1) (by positivity) ![1, n + 1] hB haAB
  have h2 := abs_norm_eq_max_natAbs_neg n ▸ summand_bound_of_mem_verticalStrip (k := k + 1)
    (by positivity) ![1, -(n + 1)] hB haAB
  apply norm_add_le_of_le
  · simpa (disch := positivity) [sub_eq_add_neg, ← Real.rpow_intCast, abs_norm_eq_max_natAbs,
      abs_of_nonneg] using h1
  · simpa (disch := positivity) [sub_eq_add_neg, ← Real.rpow_intCast, abs_norm_eq_max_natAbs,
      abs_of_nonneg] using h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant67acd6e823a8a8ce7fb7c0a2f6d51d0b4cb490261b68cb786812b93f8f5bdf3d.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72269d22ee9620a3a366eb7fcbc9aadc9ff593ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
