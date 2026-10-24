# OppositeShift.natIsoId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d8529bb964f1bb1ee2fd9a218dffebf8beb2a1cd7c7a1ae88dc1d573f61383d",
  "kind": "def",
  "lexical_name": "OppositeShift.natIsoId",
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
  "slug": "oppositeshift-natisoid--aca2e4a20f15e33ce15ab40b",
  "source": {
    "blob": "94026f4e06977842b12c603bb7c07817320474c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aca2e4a20f15e33ce15ab40b69c81bd26c28ef44a993b8f8f121592c12b2b244",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d8529bb964f1bb1ee2fd9a218dffebf8beb2a1cd7c7a1ae88dc1d573f61383d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OppositeShift.natIsoId : 𝟭 (OppositeShift C A) ≅ OppositeShift.functor A (𝟭 C) := Iso.refl _

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/--
The natural isomorphism `NatTrans.OppositeShift.natIsoId C A` commutes with shifts.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94026f4e06977842b12c603bb7c07817320474c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
