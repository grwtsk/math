# vsub_eq_bot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75f5932b-2709-8b06-99c7-a868f9ea9d60",
  "kind": "theorem",
  "lexical_name": "vsub_eq_bot_iff",
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
  "slug": "vsub-eq-bot-iff--000dbf6dfe320e513e7e2cf6",
  "source": {
    "blob": "1d61393a3ba26dc0b22691ac7c653aaa5808a3a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1116,
    "line": 1112,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000dbf6dfe320e513e7e2cf60eecd0d3dfd5b4437ca42cbcdece0cbe8db15c20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75f5932b-2709-8b06-99c7-a868f9ea9d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1112–1116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vsub_eq_bot_iff : f -ᵥ g = ⊥ ↔ f = ⊥ ∨ g = ⊥ :=
  map₂_eq_bot_iff
#align filter.vsub_eq_bot_iff Filter.vsub_eq_bot_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean#L1112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d61393a3ba26dc0b22691ac7c653aaa5808a3a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
