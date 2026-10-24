# symgen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96f857b816ed3d664bbe91f0283c81c0faf7d3e5d9a6e5189569efa628f74224",
  "kind": "def",
  "lexical_name": "symgen",
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
  "slug": "symgen--0dda12bde041f30dd0ba0d8b",
  "source": {
    "blob": "32d8df1b593dd34b5981914d428e9e2fa1e94ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dda12bde041f30dd0ba0d8b10a15b1cff125043c8e9826a8a380a3afb2d285d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96f857b816ed3d664bbe91f0283c81c0faf7d3e5d9a6e5189569efa628f74224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def symgen {G : Type u} [Groupoid.{v} G] [IsFreeGroupoid G] :
    G → Symmetrify (Generators G) :=
  id

/-- If there exists a morphism `a → b` in a free groupoid, then there also exists a zigzag
from `a` to `b` in the generating quiver. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant85f1715dd6f2c9245a2271d9becb01c68b3398248b40ea947a9e39c4dd087c93.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32d8df1b593dd34b5981914d428e9e2fa1e94ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
