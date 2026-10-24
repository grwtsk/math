# transpose_conjTranspose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca1e1d7c-8851-a2ea-843a-06b35ef56fa2",
  "kind": "theorem",
  "lexical_name": "transpose_conjTranspose",
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
  "slug": "transpose-conjtranspose--2187a8b73c0d7c6488868b23",
  "source": {
    "blob": "7bf3528dd1ead79a6daa08e87e4f254320941ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2187a8b73c0d7c6488868b239cc2128871fe9e92774c88748e652ea0d541f35e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca1e1d7c-8851-a2ea-843a-06b35ef56fa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transpose_conjTranspose [Star α] (M : Matrix m n α) :
    Mᵀᴴ = M.map star :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bf3528dd1ead79a6daa08e87e4f254320941ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
