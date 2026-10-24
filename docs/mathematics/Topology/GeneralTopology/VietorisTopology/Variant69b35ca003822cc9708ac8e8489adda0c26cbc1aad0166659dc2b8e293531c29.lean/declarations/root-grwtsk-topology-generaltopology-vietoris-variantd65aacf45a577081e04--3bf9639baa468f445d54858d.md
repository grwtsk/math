# _root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.IsTopologicalBasis.compacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a875f738-adc3-001e-c774-65aa7d884323",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.IsTopologicalBasis.compacts",
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
  "slug": "root-grwtsk-topology-generaltopology-vietoris-variantd65aacf45a577081e04--3bf9639baa468f445d54858d",
  "source": {
    "blob": "524bba0218c9cea79b453a081dfae042d893f368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 480,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bf9639baa468f445d54858d0b2b0ff605f0be2d401d8434415dc19e9479b8b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a875f738-adc3-001e-c774-65aa7d884323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.IsTopologicalBasis.compacts
    {B : Set (Set α)} (hB : IsTopologicalBasis B) :
    IsTopologicalBasis <|
      (fun u => {K : Compacts α | ↑K ⊆ ⋃₀ u ∧ ∀ U ∈ u, (↑K ∩ U).Nonempty}) ''
      {u | u.Finite ∧ u ⊆ B} := by
  refine isEmbedding_coe.isInducing.isTopologicalBasis hB.vietoris
    |>.isTopologicalBasis_of_exists_subset ?_ ?_ <;> simp_rw [forall_mem_image]
  · intro u ⟨hu, huB⟩
    simp_rw [ofPred_and, ofPred_forall]
    exact .inter
      (isOpen_subsets_of_isOpen <| isOpen_sUnion fun U hU => hB.isOpen <| huB hU)
      (hu.isOpen_biInter fun U hU => isOpen_inter_nonempty_of_isOpen <| hB.isOpen <| huB hU)
  · intro ⟨V, u⟩ ⟨hV, hu, huB, huV⟩ K ⟨hKV, hKu⟩
    dsimp only at *
    obtain ⟨w, hwB, hwV⟩ := hB.open_eq_sUnion hV
    rw [hwV] at hKV
    replace hwV := hwV.symm.subset
    wlog hwK : ∀ W ∈ w, ((K : Set α) ∩ W).Nonempty generalizing w
    · refine this {W ∈ w | (↑K ∩ W).Nonempty} (fun x hx => ?_) (by grind) (by grind) (by grind)
      obtain ⟨W, hWw, hxW⟩ := mem_sUnion.mp (hKV hx)
      exact mem_sUnion_of_mem hxW ⟨hWw, x, hx, hxW⟩
    wlog hw : w.Finite generalizing w
    · rw [sUnion_eq_biUnion] at hKV
      obtain ⟨w', _⟩ := K.isCompact.elim_finite_subcover_image (fun W hW => hB.isOpen (hwB hW)) hKV
      apply this w' <;> grind [sUnion_eq_biUnion]
    wlog huw : u ⊆ w generalizing w
    · apply this (u ∪ w) <;> grind [sUnion_union, Finite.union]
    rw [exists_mem_image]
    exists w
    #adaptation_note /-- Before leanprover/lean4#13166, this was just `grind`.
    The new canonicalizer using `isDefEq` less,
    and so does not unify as many of the conditions that `grind` wants to case split on.
    Alternatively `simp; grind` also works here. -/
    grind (splits := 12)

/-- The topology of `Compacts α` has a basis consisting of sets of the form
`{K | K ⊆ U₁ ∪ … ∪ Uₙ, K ∩ U₁ ≠ ∅, …, K ∩ Uₙ ≠ ∅}`, where `U₁, …, Uₙ` are open sets.

See also `TopologicalSpace.IsTopologicalBasis.compacts` for a variant where the sets `Uᵢ`
are chosen from some basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524bba0218c9cea79b453a081dfae042d893f368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
