# coordinate_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8a5d038-74b2-518d-8656-715cf9bdca3a",
  "kind": "theorem",
  "lexical_name": "coordinate_error",
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
  "slug": "coordinate-error--c8d8ae84ec89665a06612ff5",
  "source": {
    "blob": "71e536e536f05037b85728a563675bd4aeace688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 79,
    "path": "GRWTSK/Analysis/Complex/RationalTentEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8d8ae84ec89665a06612ff5a31d9af39961b62d14aaa8d450a7cc6b6c8a58b5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8a5d038-74b2-518d-8656-715cf9bdca3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinate_error {family : List Member} {x h : ℚ} {d : CoordinateData}
    (hh : 0 < h) (ha : 1 < x - h)
    (hl : RationalLogEnclosure.validScale (x + h) d.logScale d.logTwoCells d.mantissaCells = true)
    (hn : ∀ i ∈ Finset.range family.length, 0 ≤ radiusAt d i)
    (ρ : ℕ → ℂ)
    (hρ : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ 1)
    (hc : ∀ i ∈ Finset.range family.length, (toComplex (memberAt family i).center).re ≤ 1)
    (hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) :
    ‖(∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) (ρ i)) - RationalTentFamily.centerSum family x h‖ ≤
      (coordinateBudget family x h d : ℝ) := by
  have hh' : (0 : ℝ) < h := by exact_mod_cast hh
  have ht := TentKernelSensitivity.finite_enclosure_error (Finset.range family.length)
    (fun i => (memberAt family i).multiplicity) ρ
    (fun i => toComplex (memberAt family i).center) (fun i => (radiusAt d i : ℝ))
    (x : ℝ) (h : ℝ) hh' (by exact_mod_cast ha) hρ hc hr
  have hm : 0 ≤ ∑ i ∈ Finset.range family.length,
      ((memberAt family i).multiplicity : ℝ) * (radiusAt d i : ℝ) := by
    apply Finset.sum_nonneg
    intro i hi
    exact mul_nonneg (Nat.cast_nonneg _) (by exact_mod_cast hn i hi)
  apply ht.trans
  have hcoeff := mul_le_mul_of_nonneg_left (log_le_logUpper hl) hh'.le
  simpa only [coordinateBudget, Rat.cast_mul, Rat.cast_sum, Rat.cast_natCast] using
    mul_le_mul_of_nonneg_right hcoeff hm

/-- The Boolean result and independent actual-coordinate enclosures imply the requested bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentEnclosure.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71e536e536f05037b85728a563675bd4aeace688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
