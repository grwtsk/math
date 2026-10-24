# liftCover_restrict'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d5fba1b99da404407efb85573bf4a3f2eafa102",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f190c66-0a47-9db1-087b-5017ce94f987",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67ff8069-5ce9-40f2-39c6-4685ebb69dc6",
  "kind": "theorem",
  "lexical_name": "liftCover_restrict'",
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
  "slug": "liftcover-restrict--02ade0e96ff847b2275dacb0",
  "source": {
    "blob": "2d5fba1b99da404407efb85573bf4a3f2eafa102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 458,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ade0e96ff847b2275dacb0dd832c52230034761c6b21283f62f3c4a0ee2688",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ff8069-5ce9-40f2-39c6-4685ebb69dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftCover_restrict' {s : Set α} {hs : s ∈ A} :
    (liftCover' A F hF hA).restrict s = F s hs := ext <| liftCover_coe' (hF := hF) (hA := hA)
#align continuous_map.lift_cover_restrict' ContinuousMap.liftCover_restrict'

end Gluing

end ContinuousMap

namespace Homeomorph

variable {α β γ : Type*} [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]

variable (f : α ≃ₜ β) (g : β ≃ₜ γ)

/-- The forward direction of a homeomorphism, as a bundled continuous map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5fba1b99da404407efb85573bf4a3f2eafa102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
