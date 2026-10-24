# off_line_pair_rate_barrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98e5bf5f-8996-606e-5db9-88c88b817bf2",
  "kind": "theorem",
  "lexical_name": "off_line_pair_rate_barrier",
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
  "slug": "off-line-pair-rate-barrier--588f1573d3bc5dc1145ab963",
  "source": {
    "blob": "33a5123d384e404d23dd8af54db8c04e0bc28dc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:588f1573d3bc5dc1145ab963dcdba9a838738ff3a1e70a5394a9f7c299a0b776",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98e5bf5f-8996-606e-5db9-88c88b817bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem off_line_pair_rate_barrier (s a : ℂ) (q : ℝ)
    (zero : NontrivialZetaZero s) (offLine : s.re ≠ 1 / 2)
    (pairBound :
      ‖(s - a * riemannZeta s) -
        (criticalReflection s - a * riemannZeta (criticalReflection s))‖ ≤
          q * ‖s - criticalReflection s‖) : 1 ≤ q := by
  have reflectedZero : riemannZeta (criticalReflection s) = 0 := zero.critical_reflection.1
  have distinct : s - criticalReflection s ≠ 0 := by
    intro equal
    exact offLine ((reflection_fixed_iff s).mp (sub_eq_zero.mp equal).symm)
  have distancePositive : 0 < ‖s - criticalReflection s‖ := norm_pos_iff.mpr distinct
  have obstruction : ‖s - criticalReflection s‖ ≤ q * ‖s - criticalReflection s‖ := by
    simpa only [zero.1, reflectedZero, mul_zero, sub_zero] using pairBound
  by_contra notLarge
  have rateStrict : q < 1 := lt_of_not_ge notLarge
  have strict := mul_lt_mul_of_pos_right rateStrict distancePositive
  nlinarith

/-- Whole-disk derivative control supplies the pair estimate for the ACTUAL zeta correction.
No fixed-point selection or disk self-map theorem is needed for this exclusion implication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalReflectionIsolation.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a5123d384e404d23dd8af54db8c04e0bc28dc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
