# hasSum_nat_sinKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e420d67-2cd2-b64e-b766-5a5cad21b6c5",
  "kind": "lemma",
  "lexical_name": "hasSum_nat_sinKernel",
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
  "slug": "hassum-nat-sinkernel--36cb34a97b4bb6f0b00bc721",
  "source": {
    "blob": "bea269c1fef938c672f09f5252358eda8f48d095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 246,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36cb34a97b4bb6f0b00bc7212888dd2c5afc6a5f84ea6034e608d7fd27d0f3a6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e420d67-2cd2-b64e-b766-5a5cad21b6c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_nat_sinKernel (a : ℝ) {t : ℝ} (ht : 0 < t) :
    HasSum (fun n : ℕ ↦ 2 * n * Real.sin (2 * π * a * n) * rexp (-π * n ^ 2 * t))
    (sinKernel ↑a t) := by
  rw [← hasSum_ofReal]
  have := (hasSum_int_sinKernel a ht).nat_add_neg
  simp only [Int.cast_zero, sq (0 : ℂ), zero_mul, mul_zero, add_zero] at this
  refine this.congr_fun fun n ↦ ?_
  simp_rw [Int.cast_neg, neg_sq, mul_neg, ofReal_mul, Int.cast_natCast, ofReal_natCast,
      ofReal_ofNat, ← add_mul, ofReal_sin, Complex.sin]
  push_cast
  congr 1
  rw [← mul_div_assoc, ← div_mul_eq_mul_div, ← div_mul_eq_mul_div, div_self two_ne_zero, one_mul,
    neg_mul, neg_mul, neg_neg, mul_comm _ I, ← mul_assoc, mul_comm _ I, neg_mul,
    ← sub_eq_neg_add, mul_sub]
  congr 3 <;> ring

end sum_formulas

section asymp
/-!
## Asymptotics of the kernels as `t → ∞`
-/

/-- The function `oddKernel a` has exponential decay at `+∞`, for any `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant35f4206c6cd658b63e3b6fd319bfe0a81b361fb701396670e14180a378d93748.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bea269c1fef938c672f09f5252358eda8f48d095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
