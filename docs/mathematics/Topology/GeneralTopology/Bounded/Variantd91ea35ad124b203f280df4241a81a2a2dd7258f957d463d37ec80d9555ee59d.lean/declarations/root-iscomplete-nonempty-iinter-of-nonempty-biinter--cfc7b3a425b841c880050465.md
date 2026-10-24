# _root_.IsComplete.nonempty_iInter_of_nonempty_biInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17414866de7bb9117ba33b7fc910fa445fee5aff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec10b5be-0f8f-bce7-9b85-a5022f0a2308",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fa68018-480c-ad38-0ef9-3e21993bd2dc",
  "kind": "theorem",
  "lexical_name": "_root_.IsComplete.nonempty_iInter_of_nonempty_biInter",
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
  "slug": "root-iscomplete-nonempty-iinter-of-nonempty-biinter--cfc7b3a425b841c880050465",
  "source": {
    "blob": "17414866de7bb9117ba33b7fc910fa445fee5aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 481,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc7b3a425b841c8800504651c9f0a622e7b803e9d001928bb7fd97ed63043b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fa68018-480c-ad38-0ef9-3e21993bd2dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsComplete.nonempty_iInter_of_nonempty_biInter {s : ℕ → Set α}
    (h0 : IsComplete (s 0)) (hs : ∀ n, IsClosed (s n)) (h's : ∀ n, IsBounded (s n))
    (h : ∀ N, (⋂ n ≤ N, s n).Nonempty) (h' : Tendsto (fun n => diam (s n)) atTop (𝓝 0)) :
    (⋂ n, s n).Nonempty := by
  let u N := (h N).some
  have I : ∀ n N, n ≤ N → u N ∈ s n := by
    intro n N hn
    apply mem_of_subset_of_mem _ (h N).choose_spec
    intro x hx
    simp only [mem_iInter] at hx
    exact hx n hn
  have : CauchySeq u := by
    apply cauchySeq_of_le_tendsto_0 _ _ h'
    intro m n N hm hn
    exact dist_le_diam_of_mem (h's N) (I _ _ hm) (I _ _ hn)
  obtain ⟨x, -, xlim⟩ : ∃ x ∈ s 0, Tendsto (fun n : ℕ => u n) atTop (𝓝 x) :=
    cauchySeq_tendsto_of_isComplete h0 (fun n => I 0 n (zero_le _)) this
  refine ⟨x, mem_iInter.2 fun n => ?_⟩
  apply (hs n).mem_of_tendsto xlim
  filter_upwards [Ici_mem_atTop n] with p hp
  exact I n p hp

/-- In a complete space, if a family of closed sets with diameter tending to `0` is such that each
finite intersection is nonempty, then the total intersection is also nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17414866de7bb9117ba33b7fc910fa445fee5aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
