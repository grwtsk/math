# Filter.EventuallyEq.isExtrFilter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:013bec20-fa91-2a0b-67cc-2defe0d7683e",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.isExtrFilter_iff",
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
  "slug": "filter-eventuallyeq-isextrfilter-iff--6c06438453745a38a9de40fc",
  "source": {
    "blob": "834fdb4b48ee89651568a7939a67cf50977551b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 570,
    "path": "GRWTSK/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c06438453745a38a9de40fcc5e7ea2da9544dbbb4909bdc42d0534672d83ff2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:013bec20-fa91-2a0b-67cc-2defe0d7683e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.isExtrFilter_iff {α β : Type*} [Preorder β] {f g : α → β} {a : α}
    {l : Filter α} (heq : f =ᶠ[l] g) (hfga : f a = g a) : IsExtrFilter f l a ↔ IsExtrFilter g l a :=
  ⟨fun h => h.congr heq hfga, fun h => h.congr heq.symm hfga.symm⟩

end Eventually

/-! ### `isMaxOn`/`isMinOn` imply `ciSup`/`ciInf` -/


section ConditionallyCompleteLinearOrder

variable [ConditionallyCompleteLinearOrder α] {f : β → α} {s : Set β} {x₀ : β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Extr/Variantdb6e86a33df6934a0ad1ad3e5eaec8160d7b46d48f9f2cef1c9cd720bd8cdb14.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834fdb4b48ee89651568a7939a67cf50977551b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
