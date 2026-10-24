# exists_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ee28923-627e-432b-47c7-4b2292973a6c",
  "kind": "lemma",
  "lexical_name": "exists_index",
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
  "slug": "exists-index--b5eca9c3c36067872d701751",
  "source": {
    "blob": "3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 504,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5eca9c3c36067872d7017513efe6824109dfa914f2e0bfe8f3dc21d97ade8a8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee28923-627e-432b-47c7-4b2292973a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_index : ∃ (i' : I) (hii' : i' ⟶ A.i),
    ((D.map hii' ≫ pullback.lift A.a A.b (A.ha.symm.trans A.hb)) ⁻¹'
      ((Scheme.Pullback.diagonalCoverDiagonalRange f A.𝒰S A.𝒰X : Set <|
        ↑(pullback f f))ᶜ)) = ∅ := by
  let W := Scheme.Pullback.diagonalCoverDiagonalRange f A.𝒰S A.𝒰X
  by_contra! h
  let Z (i' : I) (hii' : i' ⟶ A.i) :=
    (D.map hii' ≫ pullback.lift A.a A.b (A.ha.symm.trans A.hb)) ⁻¹' Wᶜ
  have hZ (i') (hii' : i' ⟶ A.i) : IsClosed (Z i' hii') :=
    (W.isOpen.isClosed_compl).preimage <| Scheme.Hom.continuous _
  obtain ⟨s, hs⟩ := exists_mem_of_isClosed_of_nonempty' D A.c A.hc Z hZ h
    (fun _ _ ↦ (hZ _ _).isCompact) (fun i i' hii' hij ↦ by simp [Z, Set.MapsTo])
  refine hs A.i (𝟙 A.i) (Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange _ _ _ ?_)
  use (A.c.π.app A.i ≫ A.a) s
  have H : A.c.π.app A.i ≫ A.a ≫ pullback.diagonal f =
      A.c.π.app A.i ≫ pullback.lift A.a A.b (A.ha.symm.trans A.hb) := by ext <;> simp [hab]
  simp [← Scheme.Hom.comp_apply, -Scheme.Hom.comp_base, H]

/-- (Implementation)
The index `i'` such that `a` and `b` restricted onto `i'` maps into the diagonal components.
See the section docstring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant7b1cc53858facace1758cd39ec5f961ab2aa029b3262b53f779d0f5bc7e53e52.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d0043ac128ef5a67c459ffc0c0daad5f8c9d1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
