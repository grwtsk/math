# finite_nat_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae2b15a5-a759-430f-e643-a1f01e28eb3c",
  "kind": "theorem",
  "lexical_name": "finite_nat_iff",
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
  "slug": "finite-nat-iff--5554336e946cce2e4f8de58b",
  "source": {
    "blob": "444a107e19247b6889c7d55808d01e9936973bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 288,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5554336e946cce2e4f8de58b4df036b966f5ea16988b29adbbcba8d4dd33d505",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae2b15a5-a759-430f-e643-a1f01e28eb3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_nat_iff {a b : ℕ} : Finite a b ↔ a ≠ 1 ∧ 0 < b := by
  rw [← not_iff_not, not_finite_iff_forall, not_and_or, Ne.def, Classical.not_not, not_lt,
    le_zero_iff]
  exact
    ⟨fun h =>
      or_iff_not_imp_right.2 fun hb =>
        have ha : a ≠ 0 := fun ha => hb <| zero_dvd_iff.mp <| by rw [ha] at h; exact h 1
        Classical.by_contradiction fun ha1 : a ≠ 1 =>
          have ha_gt_one : 1 < a :=
            lt_of_not_ge fun _ =>
              match a with
              | 0 => ha rfl
              | 1 => ha1 rfl
              | b+2 => by linarith
          not_lt_of_ge (le_of_dvd (Nat.pos_of_ne_zero hb) (h b)) (lt_pow_self ha_gt_one b),
      fun h => by cases h <;> simp [*]⟩
#align multiplicity.finite_nat_iff multiplicity.finite_nat_iff

alias ⟨_, _root_.has_dvd.dvd.multiplicity_pos⟩ := dvd_iff_multiplicity_pos

end Monoid

section CommMonoid

variable [CommMonoid α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variantf89a9a8f3973863aa400910ab5631f24ba64f4289e298e17052a84b8fe77888f.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `444a107e19247b6889c7d55808d01e9936973bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
