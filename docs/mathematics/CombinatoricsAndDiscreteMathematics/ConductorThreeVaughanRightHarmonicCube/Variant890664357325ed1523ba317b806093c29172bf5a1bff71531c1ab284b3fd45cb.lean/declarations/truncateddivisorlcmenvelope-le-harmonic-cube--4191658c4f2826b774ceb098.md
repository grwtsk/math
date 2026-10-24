# truncatedDivisorLcmEnvelope_le_harmonic_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba77233-a46a-e55b-5452-fd74eba7e022",
  "kind": "theorem",
  "lexical_name": "truncatedDivisorLcmEnvelope_le_harmonic_cube",
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
  "slug": "truncateddivisorlcmenvelope-le-harmonic-cube--4191658c4f2826b774ceb098",
  "source": {
    "blob": "dfafa925290e9527b552c1c136687bf7b082f0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4191658c4f2826b774ceb098991da9ee82dd96764aefe453586d8ddd55428695",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba77233-a46a-e55b-5452-fd74eba7e022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncatedDivisorLcmEnvelope_le_harmonic_cube (V X : ℕ) :
    truncatedDivisorLcmEnvelope V X ≤
      (X : ℝ) * (harmonic V : ℝ) ^ 3 := by
  calc
    truncatedDivisorLcmEnvelope V X ≤
        ∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
          (X : ℝ) * commonDivisorRatioSum V d e := by
      rw [truncatedDivisorLcmEnvelope]
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro e he
      have hdpos : 0 < d := (Finset.mem_Ioc.mp hd).1
      have hepos : 0 < e := (Finset.mem_Ioc.mp he).1
      calc
        ((X / Nat.lcm d e : ℕ) : ℝ) ≤
            (X : ℝ) / (Nat.lcm d e : ℝ) := Nat.cast_div_le
        _ = (X : ℝ) * ((Nat.lcm d e : ℕ) : ℝ)⁻¹ := by
          rw [div_eq_mul_inv]
        _ = (X : ℝ) *
            ((Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹) := by
          rw [cast_inv_lcm_eq_gcd_ratio d e hdpos hepos]
        _ ≤ (X : ℝ) * commonDivisorRatioSum V d e :=
          mul_le_mul_of_nonneg_left
            (gcdRatio_le_commonDivisorRatioSum V d e hd) (by positivity)
    _ = (X : ℝ) *
        (∑ d ∈ Finset.Ioc 0 V, ∑ e ∈ Finset.Ioc 0 V,
          commonDivisorRatioSum V d e) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d hd
      rw [Finset.mul_sum]
    _ = (X : ℝ) *
        (∑ r ∈ Finset.Ioc 0 V,
          positiveMultipleRatioSum V r * positiveMultipleInvSum V r) := by
      rw [sum_commonDivisorRatio_eq]
    _ ≤ (X : ℝ) * (harmonic V : ℝ) ^ 3 :=
      mul_le_mul_of_nonneg_left (sum_ratio_mul_inv_le_harmonic_cube V)
        (by positivity)

/-- The formerly open polylogarithmic-envelope proposition is inhabited
with the sharp constant `C = 1`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variant890664357325ed1523ba317b806093c29172bf5a1bff71531c1ab284b3fd45cb.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfafa925290e9527b552c1c136687bf7b082f0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
