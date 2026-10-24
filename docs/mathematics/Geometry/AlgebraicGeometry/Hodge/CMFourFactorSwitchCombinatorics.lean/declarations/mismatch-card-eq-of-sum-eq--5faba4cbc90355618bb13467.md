# mismatch_card_eq_of_sum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15ef9fa0-04e0-a555-2712-c155aa5701f3",
  "kind": "theorem",
  "lexical_name": "mismatch_card_eq_of_sum_eq",
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
  "slug": "mismatch-card-eq-of-sum-eq--5faba4cbc90355618bb13467",
  "source": {
    "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 81,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5faba4cbc90355618bb134677e7a28f0b3aea77cccadc65bb8f11740ba7c031c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15ef9fa0-04e0-a555-2712-c155aa5701f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mismatch_card_eq_of_sum_eq
    (x y : I → ℤ)
    (hx : ∀ i, IsSign (x i))
    (hy : ∀ i, IsSign (y i))
    (hsum : ∑ i, x i = ∑ i, y i) :
    posNegCount x y = negPosCount x y := by
  have hdiff : ∑ i, (x i - y i) = 0 := by
    rw [Finset.sum_sub_distrib, hsum, sub_self]
  have hind :
      2 * (∑ i, mismatchIndicator x y i) = 0 := by
    calc
      2 * (∑ i, mismatchIndicator x y i) =
          ∑ i, 2 * mismatchIndicator x y i := by
            rw [Finset.mul_sum]
      _ = ∑ i, (x i - y i) := by
            apply Finset.sum_congr rfl
            intro i _
            rw [sub_eq_two_mul_mismatchIndicator x y hx hy i]
      _ = 0 := hdiff
  have hzero : ∑ i, mismatchIndicator x y i = 0 := by
    exact (mul_eq_zero.mp hind).resolve_left (by norm_num)
  rw [sum_mismatchIndicator_eq_count_sub_count x y] at hzero
  exact_mod_cast sub_eq_zero.mp hzero

/-- Therefore the two mismatch sets admit a pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
