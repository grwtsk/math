# exists_normalized_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9493d2cb-3498-26a2-1397-24cad2acd8eb",
  "kind": "theorem",
  "lexical_name": "exists_normalized_aux2",
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
  "slug": "exists-normalized-aux2--89e950e8d1c8ef846081ee7c",
  "source": {
    "blob": "1869385c3d944b59e8aa3a2782b82eae1267759e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 347,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89e950e8d1c8ef846081ee7c5cd0431336416532714d87e10b64d74befe680e8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9493d2cb-3498-26a2-1397-24cad2acd8eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normalized_aux2 {N : ℕ} {τ : ℝ} (a : SatelliteConfig E N τ)
    (lastc : a.c (last N) = 0) (lastr : a.r (last N) = 1) (hτ : 1 ≤ τ) (δ : ℝ) (hδ1 : τ ≤ 1 + δ / 4)
    (hδ2 : δ ≤ 1) (i j : Fin N.succ) (inej : i ≠ j) (hi : ‖a.c i‖ ≤ 2) (hj : 2 < ‖a.c j‖) :
    1 - δ ≤ ‖a.c i - (2 / ‖a.c j‖) • a.c j‖ := by
  have ah :
      Pairwise fun i j => a.r i ≤ ‖a.c i - a.c j‖ ∧ a.r j ≤ τ * a.r i ∨
        a.r j ≤ ‖a.c j - a.c i‖ ∧ a.r i ≤ τ * a.r j := by
    simpa only [dist_eq_norm] using a.h
  have δnonneg : 0 ≤ δ := by linarith only [hτ, hδ1]
  have D : 0 ≤ 1 - δ / 4 := by linarith only [hδ2]
  have hcrj : ‖a.c j‖ ≤ a.r j + 1 := by simpa only [lastc, lastr, dist_zero_right] using a.inter' j
  have I : a.r i ≤ 2 := by
    rcases lt_or_le i (last N) with (H | H)
    · apply (a.hlast i H).1.trans
      simpa only [dist_eq_norm, lastc, sub_zero] using hi
    · have : i = last N := top_le_iff.1 H
      rw [this, lastr]
      exact one_le_two
  have J : (1 - δ / 4) * τ ≤ 1 :=
    calc
      (1 - δ / 4) * τ ≤ (1 - δ / 4) * (1 + δ / 4) := by gcongr
      _ = (1 : ℝ) - δ ^ 2 / 16 := by ring
      _ ≤ 1 := by linarith only [sq_nonneg δ]
  have A : a.r j - δ ≤ ‖a.c i - a.c j‖ := by
    rcases ah inej.symm with (H | H); · rw [norm_sub_rev]; linarith [H.1]
    have C : a.r j ≤ 4 :=
      calc
        a.r j ≤ τ * a.r i := H.2
        _ ≤ τ * 2 := by gcongr
        _ ≤ 5 / 4 * 2 := by gcongr; linarith only [hδ1, hδ2]
        _ ≤ 4 := by norm_num
    calc
      a.r j - δ ≤ a.r j - a.r j / 4 * δ := by
        gcongr _ - ?_
        exact mul_le_of_le_one_left δnonneg (by linarith only [C])
      _ = (1 - δ / 4) * a.r j := by ring
      _ ≤ (1 - δ / 4) * (τ * a.r i) := mul_le_mul_of_nonneg_left H.2 D
      _ ≤ 1 * a.r i := by rw [← mul_assoc]; gcongr
      _ ≤ ‖a.c i - a.c j‖ := by rw [one_mul]; exact H.1
  set d := (2 / ‖a.c j‖) • a.c j with hd
  have : a.r j - δ ≤ ‖a.c i - d‖ + (a.r j - 1) :=
    calc
      a.r j - δ ≤ ‖a.c i - a.c j‖ := A
      _ ≤ ‖a.c i - d‖ + ‖d - a.c j‖ := by simp only [← dist_eq_norm, dist_triangle]
      _ ≤ ‖a.c i - d‖ + (a.r j - 1) := by
        apply add_le_add_left
        have A : 0 ≤ 1 - 2 / ‖a.c j‖ := by simpa [div_le_iff₀ (zero_le_two.trans_lt hj)] using hj.le
        rw [← one_smul ℝ (a.c j), hd, ← sub_smul, norm_smul, norm_sub_rev, Real.norm_eq_abs,
          abs_of_nonneg A, sub_mul]
        field_simp [(zero_le_two.trans_lt hj).ne']
        linarith only [hcrj]
  linarith only [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1869385c3d944b59e8aa3a2782b82eae1267759e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
