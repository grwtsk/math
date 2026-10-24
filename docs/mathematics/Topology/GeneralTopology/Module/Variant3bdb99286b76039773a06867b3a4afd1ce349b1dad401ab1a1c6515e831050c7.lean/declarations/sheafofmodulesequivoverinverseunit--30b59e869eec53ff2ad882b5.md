# sheafOfModulesEquivOverInverseUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d7199f8a434deefe778753cfaab7f3c0eaf792cc4e856102caa3051aedaa93",
  "kind": "def",
  "lexical_name": "sheafOfModulesEquivOverInverseUnit",
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
  "slug": "sheafofmodulesequivoverinverseunit--30b59e869eec53ff2ad882b5",
  "source": {
    "blob": "83b4615f72f0eb91f99f480f2bb73b33736c1bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30b59e869eec53ff2ad882b5a7547c01027c5800ad58a3ca195042843b6d6138",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d7199f8a434deefe778753cfaab7f3c0eaf792cc4e856102caa3051aedaa93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafOfModulesEquivOverInverseUnit (R : X.Sheaf RingCat.{u}) :
    (U.sheafOfModulesEquivOver R).inverse.obj (SheafOfModules.unit.{u} _) ≅
      SheafOfModules.unit.{u} _ :=
  (U.sheafOfModulesEquivOver R).inverse.mapIso (U.sheafOfModulesEquivOverUnit R).symm ≪≫
    ((U.sheafOfModulesEquivOver R).unitIso.app _).symm

end TopologicalSpace.Opens
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b4615f72f0eb91f99f480f2bb73b33736c1bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
