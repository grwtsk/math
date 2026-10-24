# fixedPoints_ne_univ_of_faithfulSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:807a825a-a2b1-b9c7-32ab-7f0a37efd29a",
  "kind": "theorem",
  "lexical_name": "fixedPoints_ne_univ_of_faithfulSMul",
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
  "slug": "fixedpoints-ne-univ-of-faithfulsmul--5435c4773e9438cb4ca2e0a0",
  "source": {
    "blob": "e8b7146c2591c59265354220065f59c8426af74f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 220,
    "path": "GRWTSK/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5435c4773e9438cb4ca2e0a0d359b7ba8cc96ba3be2ae2ef142ff1b374090e58",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:807a825a-a2b1-b9c7-32ab-7f0a37efd29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPoints_ne_univ_of_faithfulSMul
    [Nontrivial G] [FaithfulSMul G α]
    {n : ℕ} (hn : 0 < n) (hn' : n < Nat.card α) :
    fixedPoints G (powersetCard α n) ≠ univ := by
  obtain ⟨g, h⟩ := exists_ne (1 : G)
  contrapose! h
  replace h : (toPerm g : Perm (powersetCard α n)) = 1 := by
    ext1 s
    exact eq_univ_iff_forall.mp h s g
  rwa [← toPermHom_apply, map_eq_one_iff] at h
  have := powersetCard.faithfulSMul (G := G) (α := α) hn ?_
  · exact MulAction.toPerm_injective
  ·   simpa [ENat.card_eq_coe_natCard, Nat.cast_lt, Nat.finite_of_card_ne_zero (ne_zero_of_lt hn')]

variable (α)

/-- The obvious map from a type to its 1-combinations, as an equivariant map. -/
@[to_additive /-- The obvious map from a type to its 1-combinations, as an equivariant map. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b7146c2591c59265354220065f59c8426af74f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
