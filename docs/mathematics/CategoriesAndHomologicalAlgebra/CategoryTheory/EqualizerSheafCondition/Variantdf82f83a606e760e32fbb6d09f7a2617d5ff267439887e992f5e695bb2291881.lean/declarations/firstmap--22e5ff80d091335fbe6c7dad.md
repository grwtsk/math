# firstMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ce2c39defa8c03072023c41a6fe2ba73f99bd13bef7f5e8205c132a3c177405",
  "kind": "def",
  "lexical_name": "firstMap",
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
  "slug": "firstmap--22e5ff80d091335fbe6c7dad",
  "source": {
    "blob": "cccf3d0d7a37313d83d52ab11c966bb623feeac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e5ff80d091335fbe6c7dad2efc0bc7d285ab792ea0abd3bbd147c8dfcc2e1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ce2c39defa8c03072023c41a6fe2ba73f99bd13bef7f5e8205c132a3c177405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstMap : FirstObj P X ⟶ SecondObj P X π :=
  Pi.lift fun _ => Pi.π _ _ ≫ P.map (pullback.fst _ _).op

/--
The second of the two parallel morphisms of the fork diagram, induced by the second projection in
each pullback.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccf3d0d7a37313d83d52ab11c966bb623feeac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
