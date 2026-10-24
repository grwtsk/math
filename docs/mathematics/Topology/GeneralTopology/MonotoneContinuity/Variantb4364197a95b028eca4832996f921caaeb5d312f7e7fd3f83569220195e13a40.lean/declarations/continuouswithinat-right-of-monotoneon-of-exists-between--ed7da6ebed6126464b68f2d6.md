# continuousWithinAt_right_of_monotoneOn_of_exists_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f26fcdf43df039cd60336608ee88b05cf273ec78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:122cd100-12a2-8533-eb6f-47e36ed3338c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70e4fbf7-643b-3081-a6bc-2997838c92bc",
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
  "slug": "continuouswithinat-right-of-monotoneon-of-exists-between--ed7da6ebed6126464b68f2d6",
  "source": {
    "blob": "f26fcdf43df039cd60336608ee88b05cf273ec78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed7da6ebed6126464b68f2d64b4dff4de11ef3ca585122172a6597c04c411ca9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70e4fbf7-643b-3081-a6bc-2997838c92bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_right_of_monotoneOn_of_exists_between {f : α → β} {s : Set α} {a : α}
    (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝[≥] a) (hfs : ∀ b > f a, ∃ c ∈ s, f c ∈ Ioo (f a) b) :
    ContinuousWithinAt f (Ici a) a := by
  have has : a ∈ s := mem_of_mem_nhdsWithin self_mem_Ici hs
  refine tendsto_order.2 ⟨fun b hb => ?_, fun b hb => ?_⟩
  · filter_upwards [hs, @self_mem_nhdsWithin _ _ a (Ici a)] with _ hxs hxa using hb.trans_le
      (h_mono has hxs hxa)
  · rcases hfs b hb with ⟨c, hcs, hac, hcb⟩
    have : a < c := not_le.1 fun h => hac.not_ge <| h_mono hcs has h
    filter_upwards [hs, Ico_mem_nhdsGE this]
    rintro x hx ⟨_, hxc⟩
    exact (h_mono hx hcs hxc.le).trans_lt hcb

/-- If a function `f` with a densely ordered codomain is monotone on a right neighborhood of `a` and
the closure of the image of this neighborhood under `f` is a right neighborhood of `f a`, then `f`
is continuous at `a` from the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variantb4364197a95b028eca4832996f921caaeb5d312f7e7fd3f83569220195e13a40.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26fcdf43df039cd60336608ee88b05cf273ec78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
