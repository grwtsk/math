# isBounded_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e4417d5-ae08-8c33-9dc0-663ee6cee5f3",
  "kind": "theorem",
  "lexical_name": "isBounded_sup",
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
  "slug": "isbounded-sup--9cd4ffd7c0f4c84b7540ce3d",
  "source": {
    "blob": "ba56343cf89d6a690c97c79be18555888ac929ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cd4ffd7c0f4c84b7540ce3d4d6cbaf29e12c26c76b4d8751db327c9a0b690bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e4417d5-ae08-8c33-9dc0-663ee6cee5f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_sup {p : ι → Seminorm 𝕜 E} {q : ι' → Seminorm 𝕜₂ F} {f : E →ₛₗ[σ₁₂] F}
    (hf : IsBounded p q f) (s' : Finset ι') :
    ∃ (C : ℝ≥0) (s : Finset ι), (s'.sup q).comp f ≤ C • s.sup p := by
  classical
    obtain rfl | _ := s'.eq_empty_or_nonempty
    · exact ⟨1, ∅, by simp [Seminorm.bot_eq_zero]⟩
    choose fₛ fC hf using hf
    use s'.card • s'.sup fC, Finset.biUnion s' fₛ
    have hs : ∀ i : ι', i ∈ s' → (q i).comp f ≤ s'.sup fC • (Finset.biUnion s' fₛ).sup p := by
      intro i hi
      refine' (hf i).trans (smul_le_smul _ (Finset.le_sup hi))
      exact Finset.sup_mono (Finset.subset_biUnion_of_mem fₛ hi)
    refine' (comp_mono f (finset_sup_le_sum q s')).trans _
    simp_rw [← pullback_apply, map_sum, pullback_apply]
    refine' (Finset.sum_le_sum hs).trans _
    rw [Finset.sum_const, smul_assoc]
#align seminorm.is_bounded_sup Seminorm.isBounded_sup

end Seminorm

end Bounded

section Topology

variable [NormedField 𝕜] [AddCommGroup E] [Module 𝕜 E] [Nonempty ι]

/-- The proposition that the topology of `E` is induced by a family of seminorms `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantda67d0a845e8ba4880227d6d45be19e592b7a057a13b66e846a6d5d616e4368e.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba56343cf89d6a690c97c79be18555888ac929ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
