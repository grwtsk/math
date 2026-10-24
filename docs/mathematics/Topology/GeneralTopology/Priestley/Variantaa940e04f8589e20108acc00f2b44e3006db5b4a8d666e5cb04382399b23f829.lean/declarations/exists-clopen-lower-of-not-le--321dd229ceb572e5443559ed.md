# exists_clopen_lower_of_not_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c888f5f9-3a34-9871-3bae-bba4df9e67d3",
  "kind": "theorem",
  "lexical_name": "exists_clopen_lower_of_not_le",
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
  "slug": "exists-clopen-lower-of-not-le--321dd229ceb572e5443559ed",
  "source": {
    "blob": "37793a3abcb56a207fbba0af1eaea1db1581bb91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:321dd229ceb572e5443559ed8bd903bc4cd05c703e76ecddd37c59e0dcb9e0fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c888f5f9-3a34-9871-3bae-bba4df9e67d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_clopen_lower_of_not_le (h : ¬x ≤ y) :
    ∃ U : Set α, IsClopen U ∧ IsLowerSet U ∧ x ∉ U ∧ y ∈ U :=
  let ⟨U, hU, hU', hx, hy⟩ := exists_clopen_upper_of_not_le h
  ⟨Uᶜ, hU.compl, hU'.compl, Classical.not_not.2 hx, hy⟩
#align exists_clopen_lower_of_not_le exists_clopen_lower_of_not_le

end Preorder

section PartialOrder

variable [PartialOrder α] [PriestleySpace α] {x y : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37793a3abcb56a207fbba0af1eaea1db1581bb91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
