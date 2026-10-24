# prime_reciprocal_le_abs_weightedMoebius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbf5f180-dac9-fadd-85fa-7e85022fe565",
  "kind": "theorem",
  "lexical_name": "prime_reciprocal_le_abs_weightedMoebius",
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
  "slug": "prime-reciprocal-le-abs-weightedmoebius--737a51418e7bff661ccc1d05",
  "source": {
    "blob": "6deb99900b4d3250a24a4017bacdb01d9cf6821b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 32,
    "path": "GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:737a51418e7bff661ccc1d054d1222e00f6f6482732c49143b61fe5074b5671d",
  "verification": {
    "reference": "docs/verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbf5f180-dac9-fadd-85fa-7e85022fe565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_reciprocal_le_abs_weightedMoebius (d : ℕ) :
    ({p : ℕ | p.Prime}.indicator (fun n : ℕ ↦ (1 : ℝ) / n)) d ≤
      |weightedMoebius d| := by
  by_cases hp : d.Prime
  · rw [Set.indicator_of_mem (show d ∈ {p : ℕ | p.Prime} from hp)]
    have hd : (1 : ℝ) ≤ d := by exact_mod_cast hp.one_lt.le
    have hd0 : (0 : ℝ) < d := by linarith
    have hs : 0 < Real.sqrt (d : ℝ) := Real.sqrt_pos.mpr hd0
    have hsle : Real.sqrt (d : ℝ) ≤ d := by
      nlinarith [Real.sq_sqrt hd0.le, Real.sqrt_nonneg (d : ℝ)]
    have hmu : realMoebius d = -1 := by
      simp [realMoebius, ArithmeticFunction.moebius_apply_prime hp]
    rw [weightedMoebius, hmu, abs_div, abs_neg, abs_one,
      abs_of_nonneg (Real.sqrt_nonneg _)]
    exact one_div_le_one_div_of_le hs hsle
  · rw [Set.indicator_of_notMem (show d ∉ {p : ℕ | p.Prime} from hp)]
    exact abs_nonneg _

/-- The unsigned jump coefficients have divergent total mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6deb99900b4d3250a24a4017bacdb01d9cf6821b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
