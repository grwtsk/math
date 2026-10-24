# toContinuousLinearMap_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:371a8a00-a1a0-2acd-3716-47aa12f4a6dd",
  "kind": "lemma",
  "lexical_name": "toContinuousLinearMap_id",
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
  "slug": "tocontinuouslinearmap-id--f561f66d537ec8d5de2d2d2b",
  "source": {
    "blob": "4cd390aa97fa412f1cbf6d43eb0fc2f43855d951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f561f66d537ec8d5de2d2d2bd11c800b84c3ff20a104bc174a79cdc8a5568ba4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:371a8a00-a1a0-2acd-3716-47aa12f4a6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toContinuousLinearMap_id :
    (PositiveContinuousLinearMap.id R E₁).toContinuousLinearMap = .id R E₁ := rfl

section Comp

variable [AddCommMonoid E₃] [PartialOrder E₃] [Module R E₃] [TopologicalSpace E₃]
variable [AddCommMonoid E₄] [PartialOrder E₄] [Module R E₄] [TopologicalSpace E₄]

/-- Composition of positive continuous linear maps. -/
@[simps! apply toPositiveLinearMap]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd390aa97fa412f1cbf6d43eb0fc2f43855d951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
