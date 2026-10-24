# le_of_tendsto_of_tendsto'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:206c3534-969f-565b-de23-f89366ec69e9",
  "kind": "theorem",
  "lexical_name": "le_of_tendsto_of_tendsto'",
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
  "slug": "le-of-tendsto-of-tendsto--ca26931e21102624483e1895",
  "source": {
    "blob": "4f6fa8f6051335641899793c88fd959661b7b8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 755,
    "line": 751,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca26931e21102624483e189531f0d01bd037edb36384c0e7db6222215f58aea3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:206c3534-969f-565b-de23-f89366ec69e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–755.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_tendsto_of_tendsto' {f g : β → α} {b : Filter β} {a₁ a₂ : α} [NeBot b]
    (hf : Tendsto f b (𝓝 a₁)) (hg : Tendsto g b (𝓝 a₂)) (h : ∀ x, f x ≤ g x) : a₁ ≤ a₂ :=
  le_of_tendsto_of_tendsto hf hg (Eventually.of_forall h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6fa8f6051335641899793c88fd959661b7b8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
