# IsEquivalent.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79496265-63aa-165a-386b-ddf53133cb06",
  "kind": "theorem",
  "lexical_name": "IsEquivalent.smul",
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
  "slug": "isequivalent-smul--fe857fba7a156a4ddf26220e",
  "source": {
    "blob": "e3721128507af0291f8ac0b223a7ade4f362d0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 238,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe857fba7a156a4ddf26220e6707beba24118bd1511aff540f335031df14ca32",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79496265-63aa-165a-386b-ddf53133cb06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquivalent.smul {α E 𝕜 : Type*} [NormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    {a b : α → 𝕜} {u v : α → E} {l : Filter α} (hab : a ~[l] b) (huv : u ~[l] v) :
    (fun x ↦ a x • u x) ~[l] fun x ↦ b x • v x := by
  rcases hab.exists_eq_mul with ⟨φ, hφ, habφ⟩
  have : ((fun x ↦ a x • u x) - (fun x ↦ b x • v x)) =ᶠ[l] fun x ↦ b x • (φ x • u x - v x) := by
    convert!
      (habφ.comp₂ (· • ·) <| EventuallyEq.refl _ u).fun_sub
        (EventuallyEq.refl _ fun x ↦ b x • v x) using 1
    ext
    rw [Pi.mul_apply, mul_comm, mul_smul, ← smul_sub]
  refine (isLittleO_congr this.symm <| EventuallyEq.rfl).mp ((isBigO_refl b l).smul_isLittleO ?_)
  rcases huv.isBigO.exists_pos with ⟨C, hC, hCuv⟩
  rw [IsEquivalent] at *
  rw [isLittleO_iff] at *
  rw [IsBigOWith] at hCuv
  simp only [Metric.tendsto_nhds, dist_eq_norm] at hφ
  intro c hc
  specialize hφ (c / 2 / C) (div_pos (div_pos hc zero_lt_two) hC)
  specialize huv (div_pos hc zero_lt_two)
  refine hφ.mp (huv.mp <| hCuv.mono fun x hCuvx huvx hφx ↦ ?_)
  have key :=
    calc
      ‖φ x - 1‖ * ‖u x‖ ≤ c / 2 / C * ‖u x‖ := by gcongr
      _ ≤ c / 2 / C * (C * ‖v x‖) := by gcongr
      _ = c / 2 * ‖v x‖ := by field
  calc
    ‖((fun x : α ↦ φ x • u x) - v) x‖ = ‖(φ x - 1) • u x + (u x - v x)‖ := by
      simp [sub_smul, sub_add]
    _ ≤ ‖(φ x - 1) • u x‖ + ‖u x - v x‖ := norm_add_le _ _
    _ = ‖φ x - 1‖ * ‖u x‖ + ‖u x - v x‖ := by rw [norm_smul]
    _ ≤ c / 2 * ‖v x‖ + ‖u x - v x‖ := by gcongr
    _ ≤ c / 2 * ‖v x‖ + c / 2 * ‖v x‖ := by gcongr; exact huvx
    _ = c * ‖v x‖ := by ring

end SMul

section mul_inv

variable {α ι β : Type*} [NormedField β] {t u v w : α → β} {l : Filter α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant1ae37c4ba9ad9d7d5a271484f89eae8a58ffb60429fbc273544bbe9998223d3b.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3721128507af0291f8ac0b223a7ade4f362d0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
