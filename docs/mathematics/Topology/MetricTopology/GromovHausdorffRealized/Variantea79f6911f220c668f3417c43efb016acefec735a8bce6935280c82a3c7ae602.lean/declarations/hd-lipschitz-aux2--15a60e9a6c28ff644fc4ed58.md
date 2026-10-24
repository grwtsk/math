# HD_lipschitz_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b03ca9e8-7280-713c-7280-7bc36d5777e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c57d5541-aae8-8564-7894-f8c420dbd71e",
  "kind": "theorem",
  "lexical_name": "HD_lipschitz_aux2",
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
  "slug": "hd-lipschitz-aux2--15a60e9a6c28ff644fc4ed58",
  "source": {
    "blob": "79d6fc85f20103763d3f5f2db3629e393cbf6505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 321,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a60e9a6c28ff644fc4ed58d52eca53a75fe55b1c4238ecb81cd7b429819e7e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c57d5541-aae8-8564-7894-f8c420dbd71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem HD_lipschitz_aux2 (f g : Cb X Y) :
    (⨆ y, ⨅ x, f (inl x, inr y)) ≤ (⨆ y, ⨅ x, g (inl x, inr y)) + dist f g := by
  obtain ⟨cg, hcg⟩ := g.isBounded_range.bddBelow
  have Hcg : ∀ x, cg ≤ g x := fun x => hcg (mem_range_self x)
  obtain ⟨cf, hcf⟩ := f.isBounded_range.bddBelow
  have Hcf : ∀ x, cf ≤ f x := fun x => hcf (mem_range_self x)
  -- prove the inequality but with `dist f g` inside, by using inequalities comparing
  -- iSup to iSup and iInf to iInf
  have Z : (⨆ y, ⨅ x, f (inl x, inr y)) ≤ ⨆ y, ⨅ x, g (inl x, inr y) + dist f g :=
    ciSup_mono (HD_bound_aux2 _ (dist f g)) fun y =>
      ciInf_mono ⟨cf, forall_mem_range.2 fun i => Hcf _⟩ fun y => coe_le_coe_add_dist
  -- move the `dist f g` out of the infimum and the supremum, arguing that continuous monotone maps
  -- (here the addition of `dist f g`) preserve infimum and supremum
  have E1 : ∀ y, (⨅ x, g (inl x, inr y)) + dist f g = ⨅ x, g (inl x, inr y) + dist f g := by
    intro y
    refine Monotone.map_ciInf_of_continuousAt (continuousAt_id.add continuousAt_const) ?_ ?_
    · intro x y hx
      simpa
    · change BddBelow (range fun x : X => g (inl x, inr y))
      exact ⟨cg, forall_mem_range.2 fun i => Hcg _⟩
  have E2 : (⨆ y, ⨅ x, g (inl x, inr y)) + dist f g = ⨆ y, (⨅ x, g (inl x, inr y)) + dist f g := by
    refine Monotone.map_ciSup_of_continuousAt (continuousAt_id.add continuousAt_const) ?_ ?_
    · intro x y hx
      simpa
    · simpa using HD_bound_aux2 _ 0
  -- deduce the result from the above two steps
  simpa [E2, E1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d6fc85f20103763d3f5f2db3629e393cbf6505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
