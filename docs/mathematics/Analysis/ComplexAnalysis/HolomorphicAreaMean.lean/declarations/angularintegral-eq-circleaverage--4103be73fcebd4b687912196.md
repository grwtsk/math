# angularIntegral_eq_circleAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6db10c5e3ed380aec8646252e3d6c855f420b61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca036873-37dc-1706-dfcc-d9d25890e98f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8461e831-2b37-39e7-8205-58af3d727569",
  "kind": "theorem",
  "lexical_name": "angularIntegral_eq_circleAverage",
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
  "slug": "angularintegral-eq-circleaverage--4103be73fcebd4b687912196",
  "source": {
    "blob": "f6db10c5e3ed380aec8646252e3d6c855f420b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4103be73fcebd4b6879121967cc2c6c083ef1223695d89f0569964d8def27583",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8461e831-2b37-39e7-8205-58af3d727569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularIntegral_eq_circleAverage (f : ℂ → ℂ) (r : ℝ) :
    (∫ θ in Ioo (-Real.pi) Real.pi, f (Complex.polarCoord.symm (r, θ))) =
      (2 * Real.pi) • Real.circleAverage f 0 r := by
  have hp : Function.Periodic (fun θ => f (circleMap 0 r θ)) (2 * Real.pi) := by
    intro θ
    exact congrArg f (periodic_circleMap 0 r θ)
  have hshift : (∫ θ in -Real.pi..Real.pi, f (circleMap 0 r θ)) =
      ∫ θ in 0..2 * Real.pi, f (circleMap 0 r θ) := by
    have hπ : -Real.pi + 2 * Real.pi = Real.pi := by ring
    simpa only [hπ, zero_add] using hp.intervalIntegral_add_eq (-Real.pi) 0
  simp_rw [polarPoint_eq_circleMap]
  rw [← integral_Ioc_eq_integral_Ioo,
    ← intervalIntegral.integral_of_le (by linarith [Real.pi_pos]), hshift,
    Real.circleAverage, smul_smul,
    mul_inv_cancel₀ (ne_of_gt Real.two_pi_pos), one_smul]

/-- Continuity on the closed disk gives the genuine integrability needed by Fubini. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaMean.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaMean.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6db10c5e3ed380aec8646252e3d6c855f420b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
