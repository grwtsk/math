# _root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.Set.PairwiseDisjoint.countable_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5806c3f3-c13b-1525-8048-3e3e809c9efb",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.Set.PairwiseDisjoint.countable_of_isOpen",
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
  "slug": "root-grwtsk-topology-generaltopology-istopologicalbasis-variantf7cc8e789--d330d5fb2d586d0a35635859",
  "source": {
    "blob": "98d06395051f49536a70c1b3294eecd50089e4b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 411,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d330d5fb2d586d0a35635859c0229df71b2d677ce5bdce82f53f2dfd59c0107b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5806c3f3-c13b-1525-8048-3e3e809c9efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.Set.PairwiseDisjoint.countable_of_isOpen [SeparableSpace α] {ι : Type*}
    {s : ι → Set α} {a : Set ι} (h : a.PairwiseDisjoint s) (ha : ∀ i ∈ a, IsOpen (s i))
    (h'a : ∀ i ∈ a, (s i).Nonempty) : a.Countable := by
  rcases exists_countable_dense α with ⟨u, ⟨u_encodable⟩, u_dense⟩
  have : ∀ i : a, ∃ y, y ∈ s i ∩ u := fun i =>
    dense_iff_inter_open.1 u_dense (s i) (ha i i.2) (h'a i i.2)
  choose f hfs hfu using this
  lift f to a → u using hfu
  have f_inj : Injective f := by
    refine' injective_iff_pairwise_ne.mpr
      ((h.subtype _ _).mono fun i j hij hfij => hij.le_bot ⟨hfs i, _⟩)
    simp only [congr_arg Subtype.val hfij, hfs j]
  exact ⟨@Encodable.ofInj _ _ u_encodable f f_inj⟩
#align set.pairwise_disjoint.countable_of_is_open Set.PairwiseDisjoint.countable_of_isOpen

/-- In a separable space, a family of disjoint sets with nonempty interiors is countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98d06395051f49536a70c1b3294eecd50089e4b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
