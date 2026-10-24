# variable_weight_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e4647f3-a2fd-5b98-613b-8c180a3d2bf9",
  "kind": "lemma",
  "lexical_name": "variable_weight_lower",
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
  "slug": "variable-weight-lower--2ca56c06e7ade2eb2385768b",
  "source": {
    "blob": "3da1085b5b42212c5ed5cd2f7aff14926b748e0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ca56c06e7ade2eb2385768bb30e6ccebcc54a4b964b6d1a0ea6f49dc3bb90ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e4647f3-a2fd-5b98-613b-8c180a3d2bf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variable_weight_lower {x t : ℝ} (hx : x ≤ 1) (ht : 0 < t) :
    t ^ (-(7 : ℝ)) + (1-x)*(t-1)*t ^ (-(8 : ℝ)) ≤ t ^ (-(x+6)) := by
  have hl : 1 - t⁻¹ ≤ Real.log t := by
    have h := Real.log_le_sub_one_of_pos (inv_pos.mpr ht)
    rw [Real.log_inv] at h
    linarith
  have he := Real.add_one_le_exp ((1-x)*Real.log t)
  have hm := mul_le_mul_of_nonneg_left hl (sub_nonneg.mpr hx)
  have hr : 1 + (1-x)*(1-t⁻¹) ≤ t ^ (1-x) := by
    rw [Real.rpow_def_of_pos ht]
    rw [mul_comm (Real.log t) (1-x)]
    linarith
  have hb := mul_le_mul_of_nonneg_left hr (Real.rpow_nonneg ht.le (-(7 : ℝ)))
  have hp : t ^ (-(7 : ℝ)) * t ^ (1-x) = t ^ (-(x+6)) := by
    rw [← Real.rpow_add ht]
    congr 1
    ring
  rw [hp] at hb
  have hi : t ^ (-(7 : ℝ)) * t⁻¹ = t ^ (-(8 : ℝ)) := by
    rw [show t⁻¹ = t ^ (-(1 : ℝ)) by simp, ← Real.rpow_add ht]
    norm_num
  have hj : t * t ^ (-(8 : ℝ)) = t ^ (-(7 : ℝ)) := by
    calc
      t * t ^ (-(8 : ℝ)) = t ^ (1 : ℝ) * t ^ (-(8 : ℝ)) := by rw [Real.rpow_one]
      _ = t ^ ((1 : ℝ) + -(8 : ℝ)) := (Real.rpow_add ht _ _).symm
      _ = _ := by norm_num
  calc
    _ = t ^ (-(7 : ℝ)) + (1-x)*(t*t ^ (-(8 : ℝ)) - t ^ (-(8 : ℝ))) := by ring
    _ = t ^ (-(7 : ℝ)) + (1-x)*(t ^ (-(7 : ℝ)) - t ^ (-(8 : ℝ))) := by rw [hj]
    _ = t ^ (-(7 : ℝ)) + (1-x)*(t ^ (-(7 : ℝ)) - t ^ (-(7 : ℝ))*t⁻¹) := by rw [hi]
    _ = t ^ (-(7 : ℝ)) * (1 + (1-x)*(1-t⁻¹)) := by ring
    _ ≤ _ := hb

/-- A pointwise lower bound for the SAME normalized absolute-norm deficit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3da1085b5b42212c5ed5cd2f7aff14926b748e0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
