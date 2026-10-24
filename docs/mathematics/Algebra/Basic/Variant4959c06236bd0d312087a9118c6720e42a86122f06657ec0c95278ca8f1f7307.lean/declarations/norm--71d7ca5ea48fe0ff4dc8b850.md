# norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b257cdfdd61b7e519fba435c7188a48c83def1c3c4a0452742f700e4a97ecc66",
  "kind": "def",
  "lexical_name": "norm",
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
  "slug": "norm--71d7ca5ea48fe0ff4dc8b850",
  "source": {
    "blob": "a21c9684a38a5b2db5fffdebb43d58394c4c2387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 429,
    "path": "GRWTSK/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71d7ca5ea48fe0ff4dc8b850d45a868dcb9255c8fc068a5ef43f346c573ed12c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b257cdfdd61b7e519fba435c7188a48c83def1c3c4a0452742f700e4a97ecc66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def norm (n : ℤ√d) : ℤ :=
  n.re * n.re - d * n.im * n.im

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4959c06236bd0d312087a9118c6720e42a86122f06657ec0c95278ca8f1f7307.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a21c9684a38a5b2db5fffdebb43d58394c4c2387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
