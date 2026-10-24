# newtonMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5b11ce15ab9e35ace498b66a3307bdfff8b806f1cc9d4f126f9c297f819b367",
  "kind": "def",
  "lexical_name": "newtonMap",
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
  "slug": "newtonmap--abd1bd59bce3356f3fcbbce6",
  "source": {
    "blob": "fb98012aeb3fe5b3aba94584d22a7ec33d79fd9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 44,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abd1bd59bce3356f3fcbbce6ee876538e57197a624f711da9be8c1ddf07ee79b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5b11ce15ab9e35ace498b66a3307bdfff8b806f1cc9d4f126f9c297f819b367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def newtonMap (x : S) : S :=
  x - (Ring.inverse <| aeval x (derivative P)) * aeval x P

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Newton/Variantbaeb38fd534b59f6fc381851cb753685189af66a7533029c5f5042b6cba9c788.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb98012aeb3fe5b3aba94584d22a7ec33d79fd9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
