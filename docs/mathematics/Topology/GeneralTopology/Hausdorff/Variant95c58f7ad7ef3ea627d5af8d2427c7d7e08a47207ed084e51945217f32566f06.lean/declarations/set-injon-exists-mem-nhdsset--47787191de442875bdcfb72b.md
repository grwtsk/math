# Set.InjOn.exists_mem_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7c9a4de3b9c0ea0eef31a6f5b98170c89b7f98d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91ea5c2c-35eb-5852-16cd-5a623d6cab18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2be8056b-e5e8-66b8-9bfc-3ea02c499b10",
  "kind": "theorem",
  "lexical_name": "Set.InjOn.exists_mem_nhdsSet",
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
  "slug": "set-injon-exists-mem-nhdsset--47787191de442875bdcfb72b",
  "source": {
    "blob": "c7c9a4de3b9c0ea0eef31a6f5b98170c89b7f98d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47787191de442875bdcfb72b3004d6642a6882a0c341df6d96f13c5a92dc44a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2be8056b-e5e8-66b8-9bfc-3ea02c499b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.InjOn.exists_mem_nhdsSet {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    [T2Space Y] {f : X → Y} {s : Set X} (inj : InjOn f s) (sc : IsCompact s)
    (fc : ∀ x ∈ s, ContinuousAt f x) (loc : ∀ x ∈ s, ∃ u ∈ 𝓝 x, InjOn f u) :
    ∃ t ∈ 𝓝ˢ s, InjOn f t := by
  have : ∀ x ∈ s ×ˢ s, ∀ᶠ y in 𝓝 x, f y.1 = f y.2 → y.1 = y.2 := fun (x, y) ⟨hx, hy⟩ ↦ by
    rcases eq_or_ne x y with rfl | hne
    · rcases loc x hx with ⟨u, hu, hf⟩
      exact Filter.mem_of_superset (prod_mem_nhds hu hu) <| forall_prod_set.2 hf
    · suffices ∀ᶠ z in 𝓝 (x, y), f z.1 ≠ f z.2 from this.mono fun _ hne h ↦ absurd h hne
      refine (fc x hx).prodMap' (fc y hy) <| isClosed_diagonal.isOpen_compl.mem_nhds ?_
      exact inj.ne hx hy hne
  rw [← eventually_nhdsSet_iff_forall, sc.nhdsSet_prod_eq sc] at this
  exact eventually_prod_self_iff.1 this

/-- If a function `f` is

- injective on a compact set `s`;
- continuous at every point of this set;
- injective on a neighborhood of each point of this set,

then it is injective on an open neighborhood of this set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant95c58f7ad7ef3ea627d5af8d2427c7d7e08a47207ed084e51945217f32566f06.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7c9a4de3b9c0ea0eef31a6f5b98170c89b7f98d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
