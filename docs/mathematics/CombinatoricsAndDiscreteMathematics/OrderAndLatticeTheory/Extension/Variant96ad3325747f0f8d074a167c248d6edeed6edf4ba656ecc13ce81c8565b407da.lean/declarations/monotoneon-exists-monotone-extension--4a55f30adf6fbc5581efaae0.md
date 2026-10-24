# MonotoneOn.exists_monotone_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d7162f-1d95-275f-3eee-6c94691da3b6",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.exists_monotone_extension",
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
  "slug": "monotoneon-exists-monotone-extension--4a55f30adf6fbc5581efaae0",
  "source": {
    "blob": "d7d6b8a83108b8307d51d07cff502be6bd37957e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a55f30adf6fbc5581efaae0da7900611f360e1fe1344db24d1a4d973eb8a14a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d7162f-1d95-275f-3eee-6c94691da3b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.exists_monotone_extension (h : MonotoneOn f s) (hl : BddBelow (f '' s))
    (hu : BddAbove (f '' s)) : ∃ g : α → β, Monotone g ∧ EqOn f g s := by
  classical
    /- The extension is defined by `f x = f a` for `x ≤ a`, and `f x` is the supremum of the values
      of `f` to the left of `x` for `x ≥ a`. -/
    rcases hl with ⟨a, ha⟩
    have hu' : ∀ x, BddAbove (f '' (Iic x ∩ s)) := fun x =>
      hu.mono (image_subset _ inter_subset_right)
    let g : α → β := fun x => if Disjoint (Iic x) s then a else sSup (f '' (Iic x ∩ s))
    have hgs : EqOn f g s := by
      intro x hx
      simp only [g]
      have : IsGreatest (Iic x ∩ s) x := ⟨⟨right_mem_Iic, hx⟩, fun y hy => hy.1⟩
      rw [if_neg this.nonempty.not_disjoint,
        ((h.mono inter_subset_right).map_isGreatest this).csSup_eq]
    refine ⟨g, fun x y hxy => ?_, hgs⟩
    by_cases hx : Disjoint (Iic x) s <;> by_cases hy : Disjoint (Iic y) s <;>
      simp only [g, if_pos, if_neg, not_false_iff, *, refl]
    · rcases not_disjoint_iff_nonempty_inter.1 hy with ⟨z, hz⟩
      exact le_csSup_of_le (hu' _) (mem_image_of_mem _ hz) (ha <| mem_image_of_mem _ hz.2)
    · exact (hx <| hy.mono_left <| Iic_subset_Iic.2 hxy).elim
    · rw [not_disjoint_iff_nonempty_inter] at hx hy
      refine csSup_le_csSup (hu' _) (hx.image _) (image_subset _ ?_)
      exact inter_subset_inter_left _ (Iic_subset_Iic.2 hxy)

/-- If a function is antitone and is bounded on a set `s`, then it admits an antitone extension to
the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7d6b8a83108b8307d51d07cff502be6bd37957e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
