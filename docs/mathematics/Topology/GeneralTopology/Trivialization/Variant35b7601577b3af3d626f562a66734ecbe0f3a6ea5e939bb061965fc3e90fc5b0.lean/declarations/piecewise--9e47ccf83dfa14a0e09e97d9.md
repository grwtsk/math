# piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:809722548f70a14b1dc55db6e15d2cc2d592527322d4ce44ae09733f70a41a93",
  "kind": "def",
  "lexical_name": "piecewise",
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
  "slug": "piecewise--9e47ccf83dfa14a0e09e97d9",
  "source": {
    "blob": "3ad56c4d3fa8bca7a5bfdedaa6bb14ec96e1fd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 777,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e47ccf83dfa14a0e09e97d9910fc8fd1bbfdeb6240190bf96eff78c83ebc4c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:809722548f70a14b1dc55db6e15d2cc2d592527322d4ce44ae09733f70a41a93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def piecewise (e e' : Trivialization F proj) (s : Set B)
    (Hs : e.baseSet ∩ frontier s = e'.baseSet ∩ frontier s)
    (Heq : EqOn e e' <| proj ⁻¹' (e.baseSet ∩ frontier s)) : Trivialization F proj where
  toLocalHomeomorph :=
    e.toLocalHomeomorph.piecewise e'.toLocalHomeomorph (proj ⁻¹' s) (s ×ˢ univ)
      (e.isImage_preimage_prod s) (e'.isImage_preimage_prod s)
      (by rw [e.frontier_preimage, e'.frontier_preimage, Hs]) (by rwa [e.frontier_preimage])
  baseSet := s.ite e.baseSet e'.baseSet
  open_baseSet := e.open_baseSet.ite e'.open_baseSet Hs
  source_eq := by simp [source_eq]
  target_eq := by simp [target_eq, prod_univ]
  proj_toFun p := by
    rintro (⟨he, hs⟩ | ⟨he, hs⟩)
    -- porting note: was `<;> simp [*]`
    · simp [piecewise_eq_of_mem _ _ _ hs, *]
    · simp [piecewise_eq_of_not_mem _ _ _ hs, *]
#align trivialization.piecewise Trivialization.piecewise

/-- Given two bundle trivializations `e`, `e'` of a topological fiber bundle `proj : Z → B`
over a linearly ordered base `B` and a point `a ∈ e.baseSet ∩ e'.baseSet` such that
`e` equals `e'` on `proj ⁻¹' {a}`, `e.piecewise_le_of_eq e' a He He' Heq` is the bundle
trivialization over `Set.ite (Iic a) e.baseSet e'.baseSet` that is equal to `e` on points `p`
such that `proj p ≤ a` and is equal to `e'` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad56c4d3fa8bca7a5bfdedaa6bb14ec96e1fd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
