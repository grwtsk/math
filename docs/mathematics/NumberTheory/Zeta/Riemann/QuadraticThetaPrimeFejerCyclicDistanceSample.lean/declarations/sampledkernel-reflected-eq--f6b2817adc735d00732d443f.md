# sampledKernel_reflected_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc8c32f0-3b55-e227-2ded-0eef16360626",
  "kind": "theorem",
  "lexical_name": "sampledKernel_reflected_eq",
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
  "slug": "sampledkernel-reflected-eq--f6b2817adc735d00732d443f",
  "source": {
    "blob": "c69fddbea8830aa785c1e7b7f6ba27343f5d7f40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6b2817adc735d00732d443f64c94f92c3effdf4df4b97a733962454f35ed654",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8c32f0-3b55-e227-2ded-0eef16360626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampledKernel_reflected_eq
    {L N d : ℕ}
    (hL : 0 < L)
    (hN : 0 < N)
    (hd : d ≤ L) :
    (1 / (L : ℝ)) *
      ‖symmetricTriangularKernel N
        ((((L - d : ℕ) : ℝ) / (L : ℝ)) :
          AddCircle (1 : ℝ))‖
      =
    sampledTriangularKernelAtPeriod L N d := by
  unfold sampledTriangularKernelAtPeriod
  have hLr : (L : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hL)
  have harg :
      ((((L - d : ℕ) : ℝ) / (L : ℝ)) :
        AddCircle (1 : ℝ))
        =
      (((-(d : ℝ) / (L : ℝ)) : ℝ) :
        AddCircle (1 : ℝ)) := by
    rw [Nat.cast_sub hd]
    have hperiod :=
      AddCircle.coe_add_period (1 : ℝ) (-(d : ℝ) / (L : ℝ))
    convert hperiod.symm using 1
    field_simp [hLr]
    ring
  rw [harg, symmetricTriangularKernel_neg hN]

/-- Every nonnegative cyclic kernel sample is bounded by the norm sample at its
cyclic distance from zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDistanceSample.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c69fddbea8830aa785c1e7b7f6ba27343f5d7f40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
