# componentCompl_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75660083070159c24632b762a0f12c445799a3d692270c77cb706d50327944a7",
  "kind": "instance",
  "lexical_name": "componentCompl_finite",
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
  "slug": "componentcompl-finite--499c6c4d413d605ce3e090cf",
  "source": {
    "blob": "aff42121a744691f26f7e22c5b32f1e807903aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:499c6c4d413d605ce3e090cf218f52406b59c926de27125e35cd46075554deb4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75660083070159c24632b762a0f12c445799a3d692270c77cb706d50327944a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance componentCompl_finite [LocallyFinite G] [Gpc : Fact G.Preconnected] (K : Finset V) :
    Finite (G.ComponentCompl K) := by
  classical
  rcases K.eq_empty_or_nonempty with rfl | h
  -- If K is empty, then removing K doesn't change the graph, which is connected, hence has a
  -- single connected component
  · dsimp [ComponentCompl]
    rw [Finset.coe_empty, Set.compl_empty]
    have := Gpc.out.subsingleton_connectedComponent
    exact Finite.of_equiv _ (induceUnivIso G).connectedComponentEquiv.symm
  -- Otherwise, we consider the function `touch` mapping a connected component to one of its
  -- vertices adjacent to `K`.
  · let touch (C : G.ComponentCompl K) : {v : V | ∃ k : V, k ∈ K ∧ G.Adj k v} :=
      let p := C.exists_adj_boundary_pair Gpc.out h
      ⟨p.choose.1, p.choose.2, p.choose_spec.2.1, p.choose_spec.2.2.symm⟩
    -- `touch` is injective
    have touch_inj : touch.Injective := fun C D h' => ComponentCompl.pairwise_disjoint.eq
      (Set.not_disjoint_iff.mpr ⟨touch C, (C.exists_adj_boundary_pair Gpc.out h).choose_spec.1,
                                 h'.symm ▸ (D.exists_adj_boundary_pair Gpc.out h).choose_spec.1⟩)
    -- `touch` has finite range
    have : Finite (Set.range touch) := by
      refine @Subtype.finite _ (Set.Finite.to_subtype ?_) _
      apply Set.Finite.ofFinset (K.biUnion (fun v => G.neighborFinset v))
      simp only [Finset.mem_biUnion, mem_neighborFinset, Set.mem_ofPred_eq, implies_true]
    -- hence `touch` has a finite domain
    apply Finite.of_injective_finite_range touch_inj

section Ends

variable (G)

open CategoryTheory

set_option backward.isDefEq.respectTransparency.types false in
/--
The functor assigning, to a finite set in `V`, the set of connected components in its complement.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Defs/Variant9579e7ab48bf39dad9307fc7c74ae5e5decadc7c87391147c3bbc2942a35a51e.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff42121a744691f26f7e22c5b32f1e807903aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
