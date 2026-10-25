# lim_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e456629b37dbfeb6c870ef83bb49fccd3d25afd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 414,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddc7d823-1cfe-ac5f-8991-43a423788b9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afd03979-8f80-9d44-465e-d2c94d245a9f",
  "kind": "theorem",
  "lexical_name": "lim_inv",
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
  "slug": "lim-inv--9caf1b08580ad0408afe363a",
  "source": {
    "blob": "8e456629b37dbfeb6c870ef83bb49fccd3d25afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 414,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9caf1b08580ad0408afe363a0f1d437c5411aa571ce2dc441b43c6d3edcaccd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afd03979-8f80-9d44-465e-d2c94d245a9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lim_inv {f : CauSeq β abv} (hf : ¬LimZero f) : lim (inv f hf) = (lim f)⁻¹ :=
  have hl : lim f ≠ 0 := by rwa [← lim_eq_zero_iff] at hf
  lim_eq_of_equiv_const <|
    show LimZero (inv f hf - const abv (lim f)⁻¹) from
      have h₁ : ∀ (g f : CauSeq β abv) (hf : ¬LimZero f), LimZero (g - f * inv f hf * g) :=
        fun g f hf => by
          have h₂ : g - f * inv f hf * g = 1 * g - f * inv f hf * g := by rw [one_mul g]
          have h₃ : f * inv f hf * g = (f * inv f hf) * g := by simp [mul_assoc]
          have h₄ : g - f * inv f hf * g = (1 - f * inv f hf) * g := by rw [h₂, h₃, ← sub_mul]
          have h₅ : g - f * inv f hf * g = g * (1 - f * inv f hf) := by rw [h₄, mul_comm]
          have h₆ : g - f * inv f hf * g = g * (1 - inv f hf * f) := by rw [h₅, mul_comm f]
          rw [h₆]; exact mul_limZero_right _ (Setoid.symm (CauSeq.inv_mul_cancel _))
      have h₂ :
        LimZero
          (inv f hf - const abv (lim f)⁻¹ -
            (const abv (lim f) - f) * (inv f hf * const abv (lim f)⁻¹)) := by
              rw [sub_mul, ← sub_add, sub_sub, sub_add_eq_sub_sub, sub_right_comm, sub_add]
              show LimZero
                (inv f hf - const abv (lim f) * (inv f hf * const abv (lim f)⁻¹) -
                  (const abv (lim f)⁻¹ - f * (inv f hf * const abv (lim f)⁻¹)))
              exact sub_limZero
                (by rw [← mul_assoc, mul_right_comm, const_inv hl]; exact h₁ _ _ _)
                (by rw [← mul_assoc]; exact h₁ _ _ _)
      (limZero_congr h₂).mpr <| mul_limZero_left _ (Setoid.symm (equiv_lim f))
#align cau_seq.lim_inv CauSeq.lim_inv

end

section

variable [IsComplete α abs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant2c8b0988f608a9c7977f003b4e30fa8c713afbbedef891dd3d1817ce894d9270.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e456629b37dbfeb6c870ef83bb49fccd3d25afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
