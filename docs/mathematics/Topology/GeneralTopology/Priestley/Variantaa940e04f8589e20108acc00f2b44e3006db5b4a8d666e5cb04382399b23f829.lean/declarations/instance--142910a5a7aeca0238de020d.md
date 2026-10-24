# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fce9bfe8df7918617a04523c1ddc9c3a85aefd6078f3ad34a7df4394348d374",
  "kind": "instance",
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
  "slug": "instance--142910a5a7aeca0238de020d",
  "source": {
    "blob": "37793a3abcb56a207fbba0af1eaea1db1581bb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:142910a5a7aeca0238de020de5f905784801c6fdc3e134596ace8eb0e78a6164",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fce9bfe8df7918617a04523c1ddc9c3a85aefd6078f3ad34a7df4394348d374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) PriestleySpace.toT2Space : T2Space α :=
  ⟨fun _ _ h ↦
    let ⟨U, hU, _, hx, hy⟩ := exists_clopen_upper_or_lower_of_ne h
    ⟨U, Uᶜ, hU.isOpen, hU.compl.isOpen, hx, hy, disjoint_compl_right⟩⟩
#align priestley_space.to_t2_space PriestleySpace.toT2Space

end PartialOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37793a3abcb56a207fbba0af1eaea1db1581bb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
