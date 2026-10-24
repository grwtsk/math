# _root_.RootSystem.flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fc0a24ac5cae55b82c881ab4971f5fee6c80b8fd240366104fc5ad34845ba6e",
  "kind": "def",
  "lexical_name": "_root_.RootSystem.flip",
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
  "slug": "root-rootsystem-flip--6ff9cdb3836c7de9a4473347",
  "source": {
    "blob": "6127116e95964fe6dd67c571b7f8c4b677e62c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ff9cdb3836c7de9a44733471ca47bde02dbf6f8eba98449578688e6ac7bd3a2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fc0a24ac5cae55b82c881ab4971f5fee6c80b8fd240366104fc5ad34845ba6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def _root_.RootSystem.flip (P : RootSystem ι R M N) : RootSystem ι R N M :=
  { toRootPairing := P.toRootPairing.flip
    span_root_eq_top := P.span_coroot_eq_top
    span_coroot_eq_top := P.span_root_eq_top }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6127116e95964fe6dd67c571b7f8c4b677e62c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
