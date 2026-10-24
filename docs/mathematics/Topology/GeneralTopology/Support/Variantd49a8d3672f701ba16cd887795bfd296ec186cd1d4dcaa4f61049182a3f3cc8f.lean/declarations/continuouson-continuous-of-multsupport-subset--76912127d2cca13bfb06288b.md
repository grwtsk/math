# ContinuousOn.continuous_of_mulTSupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2792dc5a-7894-8c7f-e9e3-45215b49e703",
  "kind": "lemma",
  "lexical_name": "ContinuousOn.continuous_of_mulTSupport_subset",
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
  "slug": "continuouson-continuous-of-multsupport-subset--76912127d2cca13bfb06288b",
  "source": {
    "blob": "da02e37a4f7990f23c54c42fcac72a5a2b61cdbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76912127d2cca13bfb06288bd6183c0cc26096d95fc78fab962e76a350fb7d9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2792dc5a-7894-8c7f-e9e3-45215b49e703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousOn.continuous_of_mulTSupport_subset [TopologicalSpace β] {f : α → β}
    {s : Set α} (hs : ContinuousOn f s) (h's : IsOpen s) (h''s : mulTSupport f ⊆ s) :
    Continuous f :=
  continuous_of_mulTSupport fun _ hx ↦ h's.continuousOn_iff.mp hs <| h''s hx

end

/-! ## Functions with compact support -/
section CompactSupport

variable [TopologicalSpace α] [TopologicalSpace α'] [One β] [One γ] [One δ]
  {g : β → γ} {f : α → β} {f₂ : α → γ} {m : β → γ → δ}

/-- A function `f` *has compact multiplicative support* or is *compactly supported* if the closure
of the multiplicative support of `f` is compact. In a T₂ space this is equivalent to `f` being equal
to `1` outside a compact set. -/
@[to_additive /-- A function `f` *has compact support* or is *compactly supported* if the closure of
the support of `f` is compact. In a T₂ space this is equivalent to `f` being equal to `0` outside a
compact set. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variantd49a8d3672f701ba16cd887795bfd296ec186cd1d4dcaa4f61049182a3f3cc8f.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da02e37a4f7990f23c54c42fcac72a5a2b61cdbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
