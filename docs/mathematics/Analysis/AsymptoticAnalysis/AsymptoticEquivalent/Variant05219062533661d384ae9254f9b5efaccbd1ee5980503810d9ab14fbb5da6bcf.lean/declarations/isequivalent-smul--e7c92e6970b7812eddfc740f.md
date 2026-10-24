# IsEquivalent.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ff7be3e2c3db84dab2e81f51fabbd799566260b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e073b60-b739-5b60-50ba-92d485ab205f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0771accd-8e3c-c7cc-a11d-d1a1a2910847",
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
  "slug": "isequivalent-smul--e7c92e6970b7812eddfc740f",
  "source": {
    "blob": "1ff7be3e2c3db84dab2e81f51fabbd799566260b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 216,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7c92e6970b7812eddfc740f9f713b69a4ef42be949ec7110a14c6c456d73ce0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0771accd-8e3c-c7cc-a11d-d1a1a2910847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquivalent.smul {α E 𝕜 : Type*} [NormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    {a b : α → 𝕜} {u v : α → E} {l : Filter α} (hab : a ~[l] b) (huv : u ~[l] v) :
    (fun x ↦ a x • u x) ~[l] fun x ↦ b x • v x := by
  rcases hab.exists_eq_mul with ⟨φ, hφ, habφ⟩
  have : ((fun x ↦ a x • u x) - (fun x ↦ b x • v x)) =ᶠ[l] fun x ↦ b x • (φ x • u x - v x) := by
    convert (habφ.comp₂ (· • ·) <| EventuallyEq.refl _ u).sub
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
      _ = c / 2 * ‖v x‖ := by
        field_simp [hC.ne.symm]
        ring
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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant05219062533661d384ae9254f9b5efaccbd1ee5980503810d9ab14fbb5da6bcf.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff7be3e2c3db84dab2e81f51fabbd799566260b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
