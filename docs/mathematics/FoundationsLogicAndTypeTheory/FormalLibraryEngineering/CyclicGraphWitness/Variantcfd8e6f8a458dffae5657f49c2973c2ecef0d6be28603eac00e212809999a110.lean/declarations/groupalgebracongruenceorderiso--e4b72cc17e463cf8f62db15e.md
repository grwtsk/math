# groupAlgebraCongruenceOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad5fe5aabc91772fdf0d02001141b2a4a1f87c9fb5978dd4b6d33ff4e434d3fb",
  "kind": "def",
  "lexical_name": "groupAlgebraCongruenceOrderIso",
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
  "slug": "groupalgebracongruenceorderiso--e4b72cc17e463cf8f62db15e",
  "source": {
    "blob": "b920203acb962d3848738812eec3281e9e5c0372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4b72cc17e463cf8f62db15e370b1adf2f9b2c49fc4439319eb62d8a5ff4686b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad5fe5aabc91772fdf0d02001141b2a4a1f87c9fb5978dd4b6d33ff4e434d3fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def groupAlgebraCongruenceOrderIso : AddCon (ZMod M) ≃o Congruence (cyclicGroupAlgebra M) where
  toFun c := ⟨c.toSetoid, by
    intro index left right related
    fin_cases index
    · change ∀ coord : Fin 2, c (left coord) (right coord) at related
      exact c.add (related 0) (related 1)
    · change ∀ coord : Fin 1, c (left coord) (right coord) at related
      exact c.neg (related 0)
    · exact c.refl 0⟩
  invFun c :=
    { toSetoid := c.val
      add' := by
        intro a b u v hab huv
        have h := c.compatible (0 : Fin 3) ![a, u] ![b, v] (by
          intro coord
          fin_cases coord
          · exact hab
          · exact huv)
        exact h }
  left_inv c := by rfl
  right_inv c := by rfl
  map_rel_iff' := Iff.rfl

/-- In an additive commutative group every subgroup is normal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variantcfd8e6f8a458dffae5657f49c2973c2ecef0d6be28603eac00e212809999a110.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b920203acb962d3848738812eec3281e9e5c0372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
