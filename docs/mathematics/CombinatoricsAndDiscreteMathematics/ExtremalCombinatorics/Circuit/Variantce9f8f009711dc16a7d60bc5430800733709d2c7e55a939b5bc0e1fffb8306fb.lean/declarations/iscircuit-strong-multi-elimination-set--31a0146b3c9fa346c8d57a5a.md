# IsCircuit.strong_multi_elimination_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3f53515-7116-868e-54f2-fb3ce891bc9b",
  "kind": "lemma",
  "lexical_name": "IsCircuit.strong_multi_elimination_set",
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
  "slug": "iscircuit-strong-multi-elimination-set--31a0146b3c9fa346c8d57a5a",
  "source": {
    "blob": "d3901a8675ad7f7c3c93f4af2b41779145649b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 460,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31a0146b3c9fa346c8d57a5ae011e09d647c25dde8ccb676f64180e0ac19266a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f53515-7116-868e-54f2-fb3ce891bc9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.strong_multi_elimination_set (hC₀ : M.IsCircuit C₀) (X : Set α) (S : Set (Set α))
    (z : α) (hCS : ∀ C ∈ S, M.IsCircuit C) (hXC₀ : X ⊆ C₀) (hX : ∀ x ∈ X, ∃ C ∈ S, C ∩ X = {x})
    (hzC₀ : z ∈ C₀) (hz : ∀ C ∈ S, z ∉ C) : ∃ C' ⊆ (C₀ ∪ ⋃₀ S) \ X, M.IsCircuit C' ∧ z ∈ C' := by
  choose! C hC using hX
  simp only [and_imp, forall_and, and_assoc] at hC
  have hwin := hC₀.strong_multi_elimination (fun x : X ↦ x) (fun x ↦ C x) z ?_ ?_ ?_ ?_ hzC₀ ?_
  · obtain ⟨C', hC'ss, hC', hz⟩ := hwin
    refine ⟨C', hC'ss.trans (diff_subset_diff (union_subset_union_right _ ?_) (by simp)), hC', hz⟩
    simpa using fun e heX ↦ (subset_sUnion_of_mem (hC.1 e heX))
  · simpa using fun e heX ↦ hCS _ <| hC.1 e heX
  · simpa using fun e heX ↦ hXC₀ heX
  · simp only [Subtype.forall, ← singleton_subset_iff (s := C _)]
    exact fun e heX ↦ by simp [← hC.2 e heX]
  · simp only [Subtype.forall, Subtype.mk.injEq]
    refine fun e heX f hfX hef ↦ ?_
    simpa [hC.2 f hfX] using subset_inter (singleton_subset_iff.2 hef) (singleton_subset_iff.2 heX)
  simpa using fun e heX heC ↦ hz _ (hC.1 e heX) heC

/-- The strong isCircuit elimination axiom. For any pair of distinct circuits `C₁, C₂` and all
`e ∈ C₁ ∩ C₂` and `f ∈ C₁ \ C₂`, there is a circuit `C` with `f ∈ C ⊆ (C₁ ∪ C₂) \ {e}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variantce9f8f009711dc16a7d60bc5430800733709d2c7e55a939b5bc0e1fffb8306fb.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3901a8675ad7f7c3c93f4af2b41779145649b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
