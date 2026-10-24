# tentKernel_eq_split_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c2b2514-1267-e3ea-669b-3a763f1c1a87",
  "kind": "theorem",
  "lexical_name": "tentKernel_eq_split_integral",
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
  "slug": "tentkernel-eq-split-integral--100c6d8ae1116d800c16426e",
  "source": {
    "blob": "eb0bd10edfbba94a5c53fbabf9e039f9c4570baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 52,
    "path": "GRWTSK/Analysis/Complex/TentMellinKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:100c6d8ae1116d800c16426ea4031cf6cbc7237d07f75ab807fa8365ae3ba325",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c2b2514-1267-e3ea-669b-3a763f1c1a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tentKernel_eq_split_integral (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z : ℂ) :
    tentKernel x h z =
      (∫ t in (x - h)..x, (tent x h t : ℂ) * density z t) +
      (∫ t in x..(x + h), (tent x h t : ℂ) * density z t) := by
  have hx : 1 < x := by linarith
  have hab : x - h ≤ x := by linarith
  have hbc : x ≤ x + h := by linarith
  have hleft :
      (∫ t in (x - h)..x, (tent x h t : ℂ) * density z t) =
        ((h : ℂ)⁻¹) *
          (kernel (x - h) x (z + 1) - ((x - h : ℝ) : ℂ) * kernel (x - h) x z) := by
    calc
      _ = ∫ t in (x - h)..x, ((h : ℂ)⁻¹) *
          (density (z + 1) t - ((x - h : ℝ) : ℂ) * density z t) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        have ht' : t ∈ Set.Icc (x - h) x := (uIcc_of_le hab) ▸ ht
        have ht0 : 0 < t := (lt_trans zero_lt_one ha).trans_le ht'.1
        rw [tent_on_left x h t hh ht'.1 ht'.2, density_add_one ht0]
        push_cast
        field_simp [ne_of_gt hh]
      _ = _ := by
        rw [intervalIntegral.integral_const_mul,
          intervalIntegral.integral_sub (density_intervalIntegrable ha hab (z + 1))
            ((density_intervalIntegrable ha hab z).const_mul ((x - h : ℝ) : ℂ)),
          intervalIntegral.integral_const_mul]
        rfl
  have hright :
      (∫ t in x..(x + h), (tent x h t : ℂ) * density z t) =
        ((h : ℂ)⁻¹) *
          (((x + h : ℝ) : ℂ) * kernel x (x + h) z - kernel x (x + h) (z + 1)) := by
    calc
      _ = ∫ t in x..(x + h), ((h : ℂ)⁻¹) *
          (((x + h : ℝ) : ℂ) * density z t - density (z + 1) t) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        have ht' : t ∈ Set.Icc x (x + h) := (uIcc_of_le hbc) ▸ ht
        have ht0 : 0 < t := (lt_trans zero_lt_one hx).trans_le ht'.1
        rw [tent_on_right x h t hh ht'.1 ht'.2, density_add_one ht0]
        push_cast
        field_simp [ne_of_gt hh]
      _ = _ := by
        rw [intervalIntegral.integral_const_mul,
          intervalIntegral.integral_sub
            ((density_intervalIntegrable hx hbc z).const_mul ((x + h : ℝ) : ℂ))
            (density_intervalIntegrable hx hbc (z + 1)),
          intervalIntegral.integral_const_mul]
        rfl
  rw [hleft, hright]
  unfold tentKernel
  ring

/-- The two apparent parameter poles are excluded only in this quotient representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinKernel.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0bd10edfbba94a5c53fbabf9e039f9c4570baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
