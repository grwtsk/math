# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2509dc0de2fb026be69eb6b823b6b2eb25e5764580a002db794e9d7f6da8c91b",
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
  "slug": "example--9fa468e35fb297ffdf64e5db",
  "source": {
    "blob": "7b67f78bf170b77d809de7c9a8933421f846e3cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/ControllerScheduleLiteralSnippet/Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fa468e35fb297ffdf64e5db8b68db2e56263070ff41945b5b0ac7e968b7c412",
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

Occurrence: `declaration:2509dc0de2fb026be69eb6b823b6b2eb25e5764580a002db794e9d7f6da8c91b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    Tendsto (fun j => sourceMass (controllerAlpha q j)) atTop (nhds 0) :=
  sourceMass_controllerAlpha_tendsto_zero q hres
end
end ControllerScheduleLiteral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControllerScheduleLiteralSnippet/Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControllerScheduleLiteralSnippet/Variant7543e73db1da621457ecbb34470a52e2d8ec59d6d7250454982238a0f0fd2d45.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b67f78bf170b77d809de7c9a8933421f846e3cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
