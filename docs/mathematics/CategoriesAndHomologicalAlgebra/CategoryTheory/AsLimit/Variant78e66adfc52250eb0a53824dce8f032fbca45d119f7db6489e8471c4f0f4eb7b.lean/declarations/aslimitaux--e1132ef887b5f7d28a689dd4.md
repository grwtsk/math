# asLimitAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba6457b3ce7097dbcba99957a4aa1e521ae98d46a7218f462d25bff9d1cf8b1f",
  "kind": "def",
  "lexical_name": "asLimitAux",
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
  "slug": "aslimitaux--e1132ef887b5f7d28a689dd4",
  "source": {
    "blob": "2902c050aac1f640c6ad53bb02a8999dc766e3aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1132ef887b5f7d28a689dd44731c606cec04e38fb203547f1102aa1d2423038",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba6457b3ce7097dbcba99957a4aa1e521ae98d46a7218f462d25bff9d1cf8b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def asLimitAux : IsLimit S.asLimitConeAux :=
  let hc : IsLimit (lightToProfinite.mapCone S.asLimitConeAux) :=
    S.toLightDiagram.isLimit.ofIsoLimit S.isoMapCone.symm
  isLimitOfReflects lightToProfinite hc

/-- A cone over `S.diagram` whose cone point is `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsLimit/Variant78e66adfc52250eb0a53824dce8f032fbca45d119f7db6489e8471c4f0f4eb7b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2902c050aac1f640c6ad53bb02a8999dc766e3aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
