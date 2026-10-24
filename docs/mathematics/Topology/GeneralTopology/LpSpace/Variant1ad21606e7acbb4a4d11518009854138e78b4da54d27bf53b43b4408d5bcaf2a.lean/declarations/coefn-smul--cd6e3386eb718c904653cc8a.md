# coeFn_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7599905-29d3-036b-6bda-9a6eb77767ca",
  "kind": "theorem",
  "lexical_name": "coeFn_smul",
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
  "slug": "coefn-smul--cd6e3386eb718c904653cc8a",
  "source": {
    "blob": "4237fcde64141bdca7beabfd7e94fd483f08050b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 704,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd6e3386eb718c904653cc8a0456c9fd609ba7b5bcaa828cb5e2a794854cb435",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7599905-29d3-036b-6bda-9a6eb77767ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeFn_smul (c : 𝕜) (f : lp E p) : ⇑(c • f) = c • ⇑f :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4237fcde64141bdca7beabfd7e94fd483f08050b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
