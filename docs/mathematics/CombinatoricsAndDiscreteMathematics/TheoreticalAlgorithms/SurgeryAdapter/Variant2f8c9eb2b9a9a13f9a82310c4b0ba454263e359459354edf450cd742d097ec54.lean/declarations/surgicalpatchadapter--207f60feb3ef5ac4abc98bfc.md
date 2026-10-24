# SurgicalPatchAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40ad213730c672a55bd5acc56a55b526b8f307b0aed59467b2a9a05038528e7",
  "kind": "structure",
  "lexical_name": "SurgicalPatchAdapter",
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
  "slug": "surgicalpatchadapter--207f60feb3ef5ac4abc98bfc",
  "source": {
    "blob": "024fd345b8005fc17690b60eaac7b64ef17851dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryAdapter/Variant2f8c9eb2b9a9a13f9a82310c4b0ba454263e359459354edf450cd742d097ec54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:207f60feb3ef5ac4abc98bfcb40641ce01eba2a9094d550bbb2a6adfdb69b6f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryAdapter/Variant2f8c9eb2b9a9a13f9a82310c4b0ba454263e359459354edf450cd742d097ec54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40ad213730c672a55bd5acc56a55b526b8f307b0aed59467b2a9a05038528e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgicalPatchAdapter
    (GlobalLocus : Type uL)
    (F : Fabric) where
  dimension : Nat
  cell : F.Cell dimension
  globalLocus : GlobalLocus
  selected : Subfabric F
  cell_selected : selected.selected dimension cell
  patch : LocalPatch F cell
  boundaryCompatible : patch.BoundaryCompatible

namespace SurgicalPatchAdapter

/-- The adapter exposes exactly the existing local patch boundary predicate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryAdapter/Variant2f8c9eb2b9a9a13f9a82310c4b0ba454263e359459354edf450cd742d097ec54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryAdapter/Variant2f8c9eb2b9a9a13f9a82310c4b0ba454263e359459354edf450cd742d097ec54.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `024fd345b8005fc17690b60eaac7b64ef17851dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
