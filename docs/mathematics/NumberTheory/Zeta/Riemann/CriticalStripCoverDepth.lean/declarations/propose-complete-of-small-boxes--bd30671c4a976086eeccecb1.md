# propose_complete_of_small_boxes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77e634f2-7972-5283-2b43-4fcb31130228",
  "kind": "theorem",
  "lexical_name": "propose_complete_of_small_boxes",
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
  "slug": "propose-complete-of-small-boxes--bd30671c4a976086eeccecb1",
  "source": {
    "blob": "7fb26810de85a88a3d8e130575d6766542ff52db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd30671c4a976086eeccecb1c846aa1aab5e420d9d8ca03a1007964d00575e88",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e634f2-7972-5283-2b43-4fcb31130228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem propose_complete_of_small_boxes {count : ℕ} (disks : Fin count → Disk)
    (root : Rectangle) {ε : ℝ} (hε : 0 ≤ ε)
    (hlocal : SmallBoxCovered disks root ε) :
    ∀ (fuel : ℕ) (b : Rectangle), b.WellFormed → b.Within root →
      (3 / 4 : ℝ) ^ fuel * (b.span : ℝ) ≤ ε →
      ∃ t, propose disks fuel b = some t ∧ check disks t b = true := by
  intro fuel
  induction fuel with
  | zero =>
      intro b hb hsub hbudget
      have hsize : (b.span : ℝ) ≤ ε := by simpa only [pow_zero, one_mul] using hbudget
      obtain ⟨t, ht, hc⟩ := full_firstLeaf_complete disks b hb (hlocal b hb hsub hsize)
      exact ⟨t, by simpa only [propose] using ht, hc⟩
  | succ fuel ih =>
      intro b hb hsub hbudget
      cases hf : firstLeaf disks b (List.ofFn (fun i : Fin count => i)) with
      | some t =>
          exact ⟨t, by simp only [propose, hf], firstLeaf_sound disks b _ t hf⟩
      | none =>
          by_cases hreal : b.left < b.right ∧ b.top - b.bottom ≤ b.right - b.left
          · let cut : ℚ := (b.left + b.right) / 2
            have hw := b.west_midpoint_properties hb hreal.2
            have he := b.east_midpoint_properties hb hreal.2
            have hwb : (3 / 4 : ℝ) ^ fuel * ((b.west cut).span : ℝ) ≤ ε :=
              decay_budget_step (by exact_mod_cast hw.2.2) hbudget
            have heb : (3 / 4 : ℝ) ^ fuel * ((b.east cut).span : ℝ) ≤ ε :=
              decay_budget_step (by exact_mod_cast he.2.2) hbudget
            obtain ⟨l, hl, hcl⟩ := ih (b.west cut) hw.1 (hw.2.1.trans hsub) hwb
            obtain ⟨r, hr, hcr⟩ := ih (b.east cut) he.1 (he.2.1.trans hsub) heb
            have hcut : b.left < cut ∧ cut < b.right := by
              dsimp only [cut]
              constructor <;> linarith [hreal.1]
            refine ⟨.splitReal cut l r, ?_, ?_⟩
            · simpa only [propose, hf, if_pos hb, if_pos hreal, hl, hr]
            · simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using
                And.intro (And.intro hb hcut) (And.intro hcl hcr)
          · by_cases himag : b.bottom < b.top
            · let cut : ℚ := (b.bottom + b.top) / 2
              have hlong : b.right - b.left ≤ b.top - b.bottom := by
                by_cases hx : b.left < b.right
                · have hnot : ¬ b.top - b.bottom ≤ b.right - b.left :=
                    fun h => hreal ⟨hx, h⟩
                  exact (lt_of_not_ge hnot).le
                · have hx' := le_of_not_gt hx
                  linarith [hb.1, hb.2]
              have hs := b.south_midpoint_properties hb hlong
              have hn := b.north_midpoint_properties hb hlong
              have hsb : (3 / 4 : ℝ) ^ fuel * ((b.south cut).span : ℝ) ≤ ε :=
                decay_budget_step (by exact_mod_cast hs.2.2) hbudget
              have hnb : (3 / 4 : ℝ) ^ fuel * ((b.north cut).span : ℝ) ≤ ε :=
                decay_budget_step (by exact_mod_cast hn.2.2) hbudget
              obtain ⟨l, hl, hcl⟩ := ih (b.south cut) hs.1 (hs.2.1.trans hsub) hsb
              obtain ⟨r, hr, hcr⟩ := ih (b.north cut) hn.1 (hn.2.1.trans hsub) hnb
              have hcut : b.bottom < cut ∧ cut < b.top := by
                dsimp only [cut]
                constructor <;> linarith
              refine ⟨.splitImag cut l r, ?_, ?_⟩
              · simpa only [propose, hf, if_pos hb, if_neg hreal, if_pos himag, hl, hr]
              · simpa only [check, Bool.and_eq_true, decide_eq_true_eq] using
                  And.intro (And.intro hb hcut) (And.intro hcl hcr)
            · have hy : b.top ≤ b.bottom := le_of_not_gt himag
              have hx : b.right ≤ b.left := by
                apply le_of_not_gt
                intro hpos
                exact hreal ⟨hpos, by linarith [hb.1]⟩
              have hspan : b.span = 0 := by
                unfold Rectangle.span
                linarith [hb.1, hb.2]
              have hsize : (b.span : ℝ) ≤ ε := by simpa only [hspan, Rat.cast_zero] using hε
              obtain ⟨t, ht, _⟩ := full_firstLeaf_complete disks b hb
                (hlocal b hb hsub hsize)
              rw [hf] at ht
              cases ht

/-- Rechecking succeeds on the exact proposal produced by the completeness proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb26810de85a88a3d8e130575d6766542ff52db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
