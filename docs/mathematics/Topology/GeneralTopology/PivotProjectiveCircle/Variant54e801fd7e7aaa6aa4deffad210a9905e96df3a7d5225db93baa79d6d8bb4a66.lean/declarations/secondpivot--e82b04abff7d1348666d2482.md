# secondPivot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e478316f48bc81e9e7f7b1d4a40480b874c5288c367ce732f77d327581e6039",
  "kind": "def",
  "lexical_name": "secondPivot",
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
  "slug": "secondpivot--e82b04abff7d1348666d2482",
  "source": {
    "blob": "06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e82b04abff7d1348666d2482da9aa8699e1bd096de59a024b4ff2e5145eddbbd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e478316f48bc81e9e7f7b1d4a40480b874c5288c367ce732f77d327581e6039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def secondPivot : Fin 1 ↪o Fin 2 :=
  OrderEmbedding.ofStrictMono (fun _ => 1) (by
    intro i j h
    exact False.elim ((not_lt_of_ge (by exact le_of_eq (Subsingleton.elim j i))) h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
