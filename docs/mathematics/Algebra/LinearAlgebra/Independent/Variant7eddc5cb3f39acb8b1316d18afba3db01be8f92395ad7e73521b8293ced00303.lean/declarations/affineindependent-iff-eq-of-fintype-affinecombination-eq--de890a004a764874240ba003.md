# affineIndependent_iff_eq_of_fintype_affineCombination_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c943faf0-7fa5-453b-8d9e-8dddd6ffdb0d",
  "kind": "theorem",
  "lexical_name": "affineIndependent_iff_eq_of_fintype_affineCombination_eq",
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
  "slug": "affineindependent-iff-eq-of-fintype-affinecombination-eq--de890a004a764874240ba003",
  "source": {
    "blob": "cbdbc0e00222ec1efb7a6f5a9996548a64749fa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 232,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de890a004a764874240ba003618c708ce4d482a65f676608c2c850a73e2eae50",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c943faf0-7fa5-453b-8d9e-8dddd6ffdb0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineIndependent_iff_eq_of_fintype_affineCombination_eq [Fintype ι] (p : ι → P) :
    AffineIndependent k p ↔ ∀ w1 w2 : ι → k, ∑ i, w1 i = 1 → ∑ i, w2 i = 1 →
    Finset.univ.affineCombination k p w1 = Finset.univ.affineCombination k p w2 → w1 = w2 := by
  rw [affineIndependent_iff_indicator_eq_of_affineCombination_eq]
  constructor
  · intro h w1 w2 hw1 hw2 hweq
    simpa only [Set.indicator_univ, Finset.coe_univ] using h _ _ w1 w2 hw1 hw2 hweq
  · intro h s1 s2 w1 w2 hw1 hw2 hweq
    have hw1' : (∑ i, (s1 : Set ι).indicator w1 i) = 1 := by
      rwa [Finset.sum_indicator_subset _ (Finset.subset_univ s1)]
    have hw2' : (∑ i, (s2 : Set ι).indicator w2 i) = 1 := by
      rwa [Finset.sum_indicator_subset _ (Finset.subset_univ s2)]
    rw [Finset.affineCombination_indicator_subset w1 p (Finset.subset_univ s1),
      Finset.affineCombination_indicator_subset w2 p (Finset.subset_univ s2)] at hweq
    exact h _ _ hw1' hw2' hweq

/-- A linearly independent family of vectors is also affinely independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant7eddc5cb3f39acb8b1316d18afba3db01be8f92395ad7e73521b8293ced00303.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbdbc0e00222ec1efb7a6f5a9996548a64749fa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
