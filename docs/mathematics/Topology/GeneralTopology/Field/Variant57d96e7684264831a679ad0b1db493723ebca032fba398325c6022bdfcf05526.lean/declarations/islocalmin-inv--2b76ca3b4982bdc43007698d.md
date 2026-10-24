# IsLocalMin.inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c902c5897534a25d40b45f758545d2c83c46d45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48345024-7808-2471-b3c8-0a695d69c1ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59ec40d4-8605-81d6-dbb9-35b4eb24103c",
  "kind": "theorem",
  "lexical_name": "IsLocalMin.inv",
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
  "slug": "islocalmin-inv--2b76ca3b4982bdc43007698d",
  "source": {
    "blob": "4c902c5897534a25d40b45f758545d2c83c46d45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b76ca3b4982bdc43007698da541f3ede6cd3252cfe84e9a2e8c9bfa8e561d1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59ec40d4-8605-81d6-dbb9-35b4eb24103c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalMin.inv {f : α → β} {a : α} (h1 : IsLocalMin f a) (h2 : ∀ᶠ z in 𝓝 a, 0 < f z) :
    IsLocalMax f⁻¹ a := by
  filter_upwards [h1, h2] with z h3 h4 using (inv_le_inv₀ h4 h2.self_of_nhds).mpr h3

end LocalExtr

section Preconnected

/-! Some results about functions on preconnected sets valued in a ring or field with a topology. -/

open Set

variable {α 𝕜 : Type*} {f g : α → 𝕜} {S : Set α} [TopologicalSpace α] [TopologicalSpace 𝕜]
  [T1Space 𝕜]

/-- If `f` is a function `α → 𝕜` which is continuous on a preconnected set `S`, and
`f ^ 2 = 1` on `S`, then either `f = 1` on `S`, or `f = -1` on `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant57d96e7684264831a679ad0b1db493723ebca032fba398325c6022bdfcf05526.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c902c5897534a25d40b45f758545d2c83c46d45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
