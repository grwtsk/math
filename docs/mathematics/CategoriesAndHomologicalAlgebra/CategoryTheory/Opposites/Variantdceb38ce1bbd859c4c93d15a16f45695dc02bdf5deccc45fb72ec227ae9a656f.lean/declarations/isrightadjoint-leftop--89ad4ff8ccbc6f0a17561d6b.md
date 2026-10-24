# IsRightAdjoint.leftOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e22bc6f63ae04cd4aacca733f9aa5e0f383c50f091436dfe85a3c85dd3534a13",
  "kind": "instance",
  "lexical_name": "IsRightAdjoint.leftOp",
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
  "slug": "isrightadjoint-leftop--89ad4ff8ccbc6f0a17561d6b",
  "source": {
    "blob": "f8ecc42e0cbc485910743ec252ccde29d2c64dbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89ad4ff8ccbc6f0a17561d6b08f013a23f1baddf6cba1206abe88c97c5024425",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e22bc6f63ae04cd4aacca733f9aa5e0f383c50f091436dfe85a3c85dd3534a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsRightAdjoint.leftOp {F : C ⥤ Dᵒᵖ} [F.IsRightAdjoint] : F.leftOp.IsLeftAdjoint :=
  inferInstanceAs (F.op ⋙ (opOpEquivalence D).functor).IsLeftAdjoint

-- TODO: Do we need to introduce `Adjunction.rightUnop`?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdceb38ce1bbd859c4c93d15a16f45695dc02bdf5deccc45fb72ec227ae9a656f.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ecc42e0cbc485910743ec252ccde29d2c64dbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
