# symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d78a94d0e85f8b0f651e35332bb8881ddce9f1656493a8adc89a8285affd83b1",
  "kind": "def",
  "lexical_name": "symm",
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
  "slug": "symm--f40cdc759a7fdde82c9b7b70",
  "source": {
    "blob": "3213c4c1040cef0940bf9fb0b314b0c8ad5cd9bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f40cdc759a7fdde82c9b7b700cac853c77c907b045988cb87b383c6643bbf9e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d78a94d0e85f8b0f651e35332bb8881ddce9f1656493a8adc89a8285affd83b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def symm {A : Type u₁} [Ring A] [Algebra R A] {B : Type u₂} [Ring B] [Algebra R B]
    (e : MoritaEquivalence R A B) : MoritaEquivalence R B A where
  eqv := e.eqv.symm
  linear := e.eqv.inverseLinear R

-- TODO: We have restricted all the rings to the same universe here because of the complication
-- `max u₁ u₂`, `max u₂ u₃` vs `max u₁ u₃`. But once we proved the definition of Morita
-- equivalence is equivalent to the existence of a full idempotent element, we can remove this
-- restriction in the universe.
-- Or alternatively, @alreadydone has sketched an argument on how the universe restriction can be
-- removed via a categorical argument,
-- see [here](https://github.com/leanprover-community/mathlib4/pull/20640#discussion_r1912189931)
/--
For any `R`-algebras `A`, `B`, and `C`, if `A` is Morita equivalent to `B` and `B` is Morita
equivalent to `C`, then `A` is Morita equivalent to `C`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a697ac50ac58a634958f818aae46131e31e55c25d82b7bee3fa51d1adbde014.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3213c4c1040cef0940bf9fb0b314b0c8ad5cd9bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
