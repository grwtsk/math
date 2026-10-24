# product_one_sub_eq_powerset_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "741bd4ed545637891c2edd55e416224e2c5936b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/NumberTheory/ArithmeticFunctions/FiniteAntipodalWalshExpansion.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c960545-1bb5-fc50-3d84-fec58ebe5dc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ed2408a-22c0-6ce2-34ea-d84a21188961",
  "kind": "theorem",
  "lexical_name": "product_one_sub_eq_powerset_sum",
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
  "slug": "product-one-sub-eq-powerset-sum--3b9794f83c0e61dfd8b5bead",
  "source": {
    "blob": "741bd4ed545637891c2edd55e416224e2c5936b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 19,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/FiniteAntipodalWalshExpansion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b9794f83c0e61dfd8b5bead21cc24d8298989cec7d79c97ac791b6cb793c86d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteAntipodalWalshExpansion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed2408a-22c0-6ce2-34ea-d84a21188961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_one_sub_eq_powerset_sum
    {R : Type*} [CommRing R] (H : Finset ℕ) (f : ℕ → R) :
    (∏ h ∈ H, (1 - f h)) =
      ∑ S ∈ H.powerset, (-1 : R) ^ S.card * ∏ h ∈ S, f h := by
  classical
  induction H using Finset.induction_on with
  | empty =>
      simp
  | @insert h H hh ih =>
      rw [Finset.prod_insert hh, ih, Finset.powerset_insert]
      rw [Finset.sum_disjUnion]
      have hmap :
          (∑ S ∈ H.powerset.image (Finset.insert h),
            (-1 : R) ^ S.card * ∏ j ∈ S, f j) =
          ∑ S ∈ H.powerset,
            (-1 : R) ^ (S.card + 1) * (f h * ∏ j ∈ S, f j) := by
        rw [Finset.sum_image]
        · apply Finset.sum_congr rfl
          intro S hS
          have hnot : h ∉ S := by
            have hsub := Finset.mem_powerset.mp hS
            exact fun hs => hh (hsub hs)
          simp [Finset.card_insert_of_not_mem hnot,
            Finset.prod_insert hnot, mul_assoc, mul_comm, mul_left_comm]
        · intro S hS T hT heq
          exact Finset.insert_inj hh hh |>.mp heq
      rw [hmap]
      simp only [Finset.sum_add_distrib, Finset.mul_sum]
      ring

end GRWTSK.NumberTheory.FiniteAntipodalWalshExpansion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteAntipodalWalshExpansion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/FiniteAntipodalWalshExpansion.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `741bd4ed545637891c2edd55e416224e2c5936b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
