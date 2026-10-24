# Monotone.isBoundedUnder_le_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecaf1de3-2ef1-dc46-26c0-f66c1feb251e",
  "kind": "theorem",
  "lexical_name": "Monotone.isBoundedUnder_le_comp_iff",
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
  "slug": "monotone-isboundedunder-le-comp-iff--1697fb4402d568ffef015bcb",
  "source": {
    "blob": "a0632c7969cafd48efce9bb8f5bcd6e44b36284f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 445,
    "path": "GRWTSK/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1697fb4402d568ffef015bcb7ac5058a58b30309ab405a12a99f7823e18f5b1e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecaf1de3-2ef1-dc46-26c0-f66c1feb251e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.isBoundedUnder_le_comp_iff [Nonempty β] [LinearOrder β] [Preorder γ] [NoMaxOrder γ]
    {g : β → γ} {f : α → β} {l : Filter α} (hg : Monotone g) (hg' : Tendsto g atTop atTop) :
    IsBoundedUnder (· ≤ ·) l (g ∘ f) ↔ IsBoundedUnder (· ≤ ·) l f := by
  refine ⟨?_, fun h => h.isBoundedUnder (α := β) hg⟩
  rintro ⟨c, hc⟩; rw [eventually_map] at hc
  obtain ⟨b, hb⟩ : ∃ b, ∀ a ≥ b, c < g a := eventually_atTop.1 (hg'.eventually_gt_atTop c)
  exact ⟨b, hc.mono fun x hx => not_lt.1 fun h => (hb _ h.le).not_ge hx⟩

@[to_dual isBoundedUnder_ge_comp_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsBounded/Variant38666f7346e1209e24521fe28c3634a1ffafc2ed5aae39c2fbfeb3c79e7a46fb.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0632c7969cafd48efce9bb8f5bcd6e44b36284f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
