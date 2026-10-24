# invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47bde7e4-787b-5311-881f-ecae4caca4a0",
  "kind": "theorem",
  "lexical_name": "invariant",
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
  "slug": "invariant--9bd6cb9bf3c754640135f624",
  "source": {
    "blob": "1fefffd0d1f9f27fec2b4fbc7911a7592389611e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 524,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bd6cb9bf3c754640135f624206cff81e12800ce643bd8bc203c17f8ff57b55e",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47bde7e4-787b-5311-881f-ecae4caca4a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem invariant : ContfracLegendre.Ass (fract ξ)⁻¹ v (u - ⌊ξ⌋ * v) := by
  refine' ⟨_, fun huv => _, by exact_mod_cast aux₃ hv h⟩
  · rw [sub_eq_add_neg, ← neg_mul, isCoprime_comm, IsCoprime.add_mul_right_left_iff]
    exact h.1
  · obtain hv₀' := (aux₀ (zero_lt_two.trans_le hv)).2
    have Hv : (v * (2 * v - 1) : ℝ)⁻¹ + (v : ℝ)⁻¹ = 2 / (2 * v - 1) := by
      field_simp; ring
    have Huv : (u / v : ℝ) = ⌊ξ⌋ + (v : ℝ)⁻¹ := by
      rw [sub_eq_iff_eq_add'.mp huv]; field_simp
    have h' := (abs_sub_lt_iff.mp h.2.2).1
    rw [Huv, ← sub_sub, sub_lt_iff_lt_add, self_sub_floor, Hv] at h'
    rwa [lt_sub_iff_add_lt', (by ring : (v : ℝ) + -(1 / 2) = (2 * v - 1) / 2),
      lt_inv (div_pos hv₀' zero_lt_two) (aux₁ hv h), inv_div]

/-!
### The main result
-/


/-- The technical version of *Legendre's Theorem*. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantcf041302692a094b544e60f5635de1beaeaca88dae3d1fa0c9fe73cafdb21011.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fefffd0d1f9f27fec2b4fbc7911a7592389611e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
