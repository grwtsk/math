# Units.mulArchimedean_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 501,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0764c411-45a5-bf98-b95a-2fda1eb911b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13cdf8e7-67c8-1fc6-1bfd-89e617ab2d0b",
  "kind": "lemma",
  "lexical_name": "Units.mulArchimedean_iff",
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
  "slug": "units-mularchimedean-iff--0e3e5c1812b950cae9c5ed16",
  "source": {
    "blob": "2144c65ecf08d5c4a3d68152d38d997816769f90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 501,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e3e5c1812b950cae9c5ed161e7fd71a17843578827c54dc787f3c414ee0dfba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13cdf8e7-67c8-1fc6-1bfd-89e617ab2d0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Units.mulArchimedean_iff {G₀} [LinearOrderedCommGroupWithZero G₀] :
    MulArchimedean G₀ˣ ↔ MulArchimedean G₀ := by
  constructor <;> intro _
  · exact OrderMonoidIso.withZeroUnits.mulArchimedean
  · infer_instance

section LocallyFiniteOrder

variable {X : Type*} [Preorder X] [LocallyFiniteOrder X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variantff03da17c387def47c8551e5728e3c7bc77207328e49fcdff7a16264829cb29a.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2144c65ecf08d5c4a3d68152d38d997816769f90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
