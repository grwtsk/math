# IsRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a98bf79ee302426a6ca0cfe6ad063384e6a824412ee5b47ab1195d6e86cb68a1",
  "kind": "abbrev",
  "lexical_name": "IsRegular",
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
  "slug": "isregular--f1fa6e5d348e38243a9f959e",
  "source": {
    "blob": "c2f904d842aa847afd163d0099af3d67bacc9d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1fa6e5d348e38243a9f959e89a0bae648781ef983c5ae2f8191ff0c5f31b8a4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a98bf79ee302426a6ca0cfe6ad063384e6a824412ee5b47ab1195d6e86cb68a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsRegular (x : L) : Prop := LieModule.IsRegular R L x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f904d842aa847afd163d0099af3d67bacc9d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
