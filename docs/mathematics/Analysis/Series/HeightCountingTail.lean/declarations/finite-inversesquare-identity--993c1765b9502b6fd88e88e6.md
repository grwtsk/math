# finite_inverseSquare_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc1e8a51-b617-4aff-4f8c-2c6cf2438fdf",
  "kind": "theorem",
  "lexical_name": "finite_inverseSquare_identity",
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
  "slug": "finite-inversesquare-identity--993c1765b9502b6fd88e88e6",
  "source": {
    "blob": "1b467d7c96dca5e8412e6e823f898f3734c5d710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 165,
    "path": "GRWTSK/Analysis/Series/HeightCountingTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:993c1765b9502b6fd88e88e6695a8f73467b9c8e37696f91830e80d4a502e3f8",
  "verification": {
    "reference": "docs/verification/Analysis/Series/HeightCountingTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc1e8a51-b617-4aff-4f8c-2c6cf2438fdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_inverseSquare_identity (S : Finset ι) (height weight : ι → ℝ)
    (T R : ℝ) (hT : 0 < T) (hTR : T ≤ R)
    (hlower : ∀ i ∈ S, T < height i) (hupper : ∀ i ∈ S, height i ≤ R) :
    (∑ i ∈ S, weight i / height i ^ 2) =
      (∑ i ∈ S, weight i) / R ^ 2 +
        ∫ t in T..R, 2 * finiteCountingMass S height weight t / t ^ 3 := by
  classical
  have hstep : ∀ i ∈ S,
      (∫ t in T..R, if height i ≤ t then 2 * weight i / t ^ 3 else 0) =
        weight i / height i ^ 2 - weight i / R ^ 2 := by
    intro i hi
    have hlow := hlower i hi
    have hup := hupper i hi
    have hset : Ici (height i) ∩ Ioc T R = Icc (height i) R := by
      ext t
      simp only [mem_inter_iff, mem_Ici, mem_Ioc, mem_Icc]
      constructor
      · exact fun ht => ⟨ht.1, ht.2.2⟩
      · exact fun ht => ⟨ht.1, hlow.trans_le ht.1, ht.2⟩
    change (∫ t in T..R, (Ici (height i)).indicator
      (fun t : ℝ => 2 * weight i / t ^ 3) t) = _
    rw [intervalIntegral.integral_of_le hTR, integral_indicator measurableSet_Ici,
      Measure.restrict_restrict measurableSet_Ici, hset, integral_Icc_eq_integral_Ioc,
      ← intervalIntegral.integral_of_le hup]
    have hf : (fun t : ℝ => 2 * weight i / t ^ 3) =
        (fun t : ℝ => weight i * (2 / t ^ 3)) := by funext t; ring
    rw [hf, intervalIntegral.integral_const_mul, integral_inverseCube (hT.trans hlow) hup]
    ring
  have hint : (∫ t in T..R, 2 * finiteCountingMass S height weight t / t ^ 3) =
      (∑ i ∈ S, weight i / height i ^ 2) - (∑ i ∈ S, weight i) / R ^ 2 := by
    simp_rw [countingDensity_eq_sum]
    rw [intervalIntegral.integral_finsetSum
      (fun i _ => stepDensity_intervalIntegrable (height i) (weight i) hT hTR)]
    rw [Finset.sum_congr rfl hstep]
    rw [Finset.sum_sub_distrib, Finset.sum_div]
  linarith

/-- The terminal boundary and the integrated majorant combine to a favorable
negative term. Dropping the positive boundary before integrating is invalid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/HeightCountingTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/HeightCountingTail.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b467d7c96dca5e8412e6e823f898f3734c5d710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
