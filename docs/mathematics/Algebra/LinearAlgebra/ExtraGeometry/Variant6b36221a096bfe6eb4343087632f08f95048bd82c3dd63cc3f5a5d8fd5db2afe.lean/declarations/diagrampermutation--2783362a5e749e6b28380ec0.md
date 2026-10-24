# diagramPermutation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:161c312fd5e5467ad3365757b98dd4fcc774b221a42cbf44d56e25ef2b1f7298",
  "kind": "def",
  "lexical_name": "diagramPermutation",
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
  "slug": "diagrampermutation--2783362a5e749e6b28380ec0",
  "source": {
    "blob": "65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2783362a5e749e6b28380ec003e0d408ac591ac02292324b4d96c689a8ac4fb0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:161c312fd5e5467ad3365757b98dd4fcc774b221a42cbf44d56e25ef2b1f7298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagramPermutation (k : Fin 6) : Fin 4 → Fin 4 :=
  ![![0,1,2,3], ![0,1,3,2], ![2,1,0,3],
    ![2,1,3,0], ![3,1,0,2], ![3,1,2,0]] k

/-- Integer permutation matrices acting on the D4 population columns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
