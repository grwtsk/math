# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e02e6f10e7c9c2358402f61624d59160cdea123b2891f538f27b4153e9d35a9e",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--8cd8ca464165f09c3a0e28ee",
  "source": {
    "blob": "7b67f78bf170b77d809de7c9a8933421f846e3cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/ControllerScheduleLiteralSnippet/Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cd8ca464165f09c3a0e28eea855d8f385fc1862798de16be1c6c219a9d9b6bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControllerScheduleLiteralSnippet/Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e02e6f10e7c9c2358402f61624d59160cdea123b2891f538f27b4153e9d35a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    0 < controllerAlpha q j := controllerAlpha_pos q j hj
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControllerScheduleLiteralSnippet/Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControllerScheduleLiteralSnippet/Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b67f78bf170b77d809de7c9a8933421f846e3cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
