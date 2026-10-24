# continuousWithinAt_right_of_monotoneOn_of_exists_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4968b626-1c52-938c-3e7d-4e9309fa65d9",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_right_of_monotoneOn_of_exists_between",
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
  "slug": "continuouswithinat-right-of-monotoneon-of-exists-between--35cd0e014dd72d3cef0b2007",
  "source": {
    "blob": "73d4df1f1c1aea4e7d1a68ddcf606b5c821777ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35cd0e014dd72d3cef0b20077cee77226a4c08e873f65e6686725a6ddc896073",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4968b626-1c52-938c-3e7d-4e9309fa65d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_right_of_monotoneOn_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝[≥] a) (hfs : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioo (f a) b) :
    ContinuousWithinAt f (Ici a) a := by
  have ha : a ∈ Ici a := left_mem_Ici
  have has : a ∈ s := mem_of_mem_nhdsWithin ha hs
  refine' tendsto_order.2 ⟨fun b hb => _, fun b hb => _⟩
  · filter_upwards [hs, @self_mem_nhdsWithin _ _ a (Ici a)] with _ hxs hxa using hb.trans_le
      (h_mono has hxs hxa)
  · rcases hfs b hb with ⟨c, hcs, hac, hcb⟩
    have : a < c := not_le.1 fun h => hac.not_le <| h_mono hcs has h
    filter_upwards [hs, Ico_mem_nhdsWithin_Ici (left_mem_Ico.2 this)]
    rintro x hx ⟨_, hxc⟩
    exact (h_mono hx hcs hxc.le).trans_lt hcb
#align continuous_at_right_of_monotone_on_of_exists_between continuousWithinAt_right_of_monotoneOn_of_exists_between

/-- If a function `f` with a densely ordered codomain is monotone on a right neighborhood of `a` and
the closure of the image of this neighborhood under `f` is a right neighborhood of `f a`, then `f`
is continuous at `a` from the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d4df1f1c1aea4e7d1a68ddcf606b5c821777ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
