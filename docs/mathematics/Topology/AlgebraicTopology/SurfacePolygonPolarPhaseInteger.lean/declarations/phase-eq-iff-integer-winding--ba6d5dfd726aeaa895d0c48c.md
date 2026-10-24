# phase_eq_iff_integer_winding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ae8c0b3-6827-caf0-6f89-c093c2266427",
  "kind": "theorem",
  "lexical_name": "phase_eq_iff_integer_winding",
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
  "slug": "phase-eq-iff-integer-winding--ba6d5dfd726aeaa895d0c48c",
  "source": {
    "blob": "3ebd47f581d9b9bfa48938f439b5fd2cc2623ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 30,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarPhaseInteger.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba6d5dfd726aeaa895d0c48c7f40286d382ecb90b5ed82c02c6492ed97342169",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarPhaseInteger.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ae8c0b3-6827-caf0-6f89-c093c2266427`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_eq_iff_integer_winding (θ φ : ℝ) :
    Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
        Complex.exp ((2 * Real.pi * φ : ℝ) * Complex.I) ↔
      ∃ n : ℤ, θ = φ + n := by
  constructor
  · intro h
    have hphase :
        circleMap 0 1 (2 * Real.pi * θ) =
          circleMap 0 1 (2 * Real.pi * φ) := by
      simpa [circleMap, mul_assoc, mul_comm, mul_left_comm] using h
    rcases (circleMap_eq_circleMap_iff (0 : ℂ)
      (by norm_num : (1 : ℝ) ≠ 0)).mp hphase with ⟨n, hn⟩
    have hi : (2 * Real.pi * θ : ℂ) * Complex.I =
        (2 * Real.pi * φ : ℂ) * Complex.I +
          (n : ℂ) * ((2 * Real.pi : ℂ) * Complex.I) := by
      simpa only [Complex.ofReal_mul, Complex.ofReal_ofNat,
        Complex.ofReal_mul, mul_assoc] using hn
    have hreal : θ = φ + (n : ℝ) := by
      have hc := congrArg Complex.im hi
      norm_num [Complex.mul_im, Complex.mul_re] at hc
      nlinarith [Real.pi_pos]
    exact ⟨n, hreal⟩
  · rintro ⟨n, rfl⟩
    have h := GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriodicity.realAnglePolar_add_int
      φ 1 n
    have hc := congrArg (fun z : ℂ => z) h
    simpa [realAnglePolar, mul_assoc, mul_comm, mul_left_comm] using hc

/-
Remaining gates:
* verify this source against exact pinned Mathlib API;
* relate ∃ n : ℤ, θ=φ+n to equality in UnitAddCircle;
* construct continuous quotient-descended polar map;
* prove cone fiber criterion and disk homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarPhaseInteger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarPhaseInteger.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarPhaseInteger.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ebd47f581d9b9bfa48938f439b5fd2cc2623ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
