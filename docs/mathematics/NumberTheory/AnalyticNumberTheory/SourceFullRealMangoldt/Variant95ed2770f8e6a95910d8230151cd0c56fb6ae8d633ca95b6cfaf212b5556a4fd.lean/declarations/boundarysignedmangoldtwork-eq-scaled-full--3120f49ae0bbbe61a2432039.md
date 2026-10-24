# boundarySignedMangoldtWork_eq_scaled_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1f6db7d-0085-35d8-9b02-b5b736c832ec",
  "kind": "theorem",
  "lexical_name": "boundarySignedMangoldtWork_eq_scaled_full",
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
  "slug": "boundarysignedmangoldtwork-eq-scaled-full--3120f49ae0bbbe61a2432039",
  "source": {
    "blob": "4f2857db4156cbe0355e3b2f65cdbcbfe2ebe0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3120f49ae0bbbe61a2432039d84a98c12797d8f4ed1a3c9883987311798851ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f6db7d-0085-35d8-9b02-b5b736c832ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundarySignedMangoldtWork_eq_scaled_full {A : ℝ} (hA : 1 ≤ A) (a b c : ℝ) :
    boundarySignedMangoldtWork A a b c = A^9*Real.exp (-A)*fullMangoldtWork A := by
  have he (y : ℝ) : boundaryWorkKernel A y * mangoldtLogError (2*A-y) =
      (A^9*Real.exp (-A)) *
        (mangoldtLogError (2*A-y) * deriv (criticalPrimeTest A) (2*A-y)) := by
    unfold boundaryWorkKernel
    ring
  have hbase : (∫ y in 0..4*A, boundaryWorkKernel A y * mangoldtLogError (2*A-y)) =
      A^9*Real.exp (-A)*fullMangoldtWork A := by
    simp_rw [he]
    rw [intervalIntegral.integral_const_mul]
    have hr := intervalIntegral.integral_comp_sub_left
      (fun t => mangoldtLogError t * deriv (criticalPrimeTest A) t)
      (a := 0) (b := 4*A) (2*A)
    have hr' : (∫ y in 0..4*A,
        mangoldtLogError (2*A-y)*deriv (criticalPrimeTest A) (2*A-y)) =
        ∫ t in -(2*A)..2*A, mangoldtLogError t*deriv (criticalPrimeTest A) t := by
      simpa only [show 2*A-4*A=-(2*A) by ring, sub_zero] using hr
    rw [hr', ← fullMangoldtWork_eq_interval hA]
  have hpoly : (∫ y in 0..4*A, boundaryWorkKernel A y * (a+b*y+c*y^2)) = 0 := by
    simpa only [mul_comm] using boundary_quadratic_background_zero hA a b c
  unfold boundarySignedMangoldtWork
  simp_rw [mul_sub]
  rw [intervalIntegral.integral_sub (boundary_mangoldt_intervalIntegrable hA)
    (boundary_polynomial_intervalIntegrable hA a b c), hpoly, sub_zero, hbase]

/-- The residual identity retains the original closed inventory; no estimate is substituted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f2857db4156cbe0355e3b2f65cdbcbfe2ebe0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
