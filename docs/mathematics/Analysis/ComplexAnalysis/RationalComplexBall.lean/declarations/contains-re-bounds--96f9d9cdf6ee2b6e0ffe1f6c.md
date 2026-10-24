# contains_re_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab6f925c-73a5-9d4e-9de4-7639472635e8",
  "kind": "theorem",
  "lexical_name": "contains_re_bounds",
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
  "slug": "contains-re-bounds--96f9d9cdf6ee2b6e0ffe1f6c",
  "source": {
    "blob": "8e323c4a17697d7a307ae3e303cf96d4947e272b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 100,
    "path": "GRWTSK/Analysis/Complex/RationalComplexBall.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96f9d9cdf6ee2b6e0ffe1f6c883f39ef44c81edfc5e9b3d9ab9356e99e8f5c7d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalComplexBall.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab6f925c-73a5-9d4e-9de4-7639472635e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contains_re_bounds {ball : Ball} {z : ℂ}
    (contained : ball.Contains z) :
    (ball.realLower : ℝ) ≤ z.re ∧ z.re ≤ (ball.realUpper : ℝ) := by
  have hcomponent :
      |z.re - (QComplex.embed ball.center).re| ≤ (ball.radius : ℝ) := by
    calc
      |z.re - (QComplex.embed ball.center).re| =
          |(z - QComplex.embed ball.center).re| := by simp
      _ ≤ ‖z - QComplex.embed ball.center‖ :=
        Complex.abs_re_le_norm _
      _ ≤ (ball.radius : ℝ) := contained
  have hcenter : (QComplex.embed ball.center).re = (ball.center.re : ℝ) := by
    simp [QComplex.embed]
  rw [hcenter] at hcomponent
  rcases abs_le.mp hcomponent with ⟨hlower, hupper⟩
  constructor
  · simpa [realLower] using
      (show (ball.center.re : ℝ) - (ball.radius : ℝ) ≤ z.re by linarith)
  · simpa [realUpper] using
      (show z.re ≤ (ball.center.re : ℝ) + (ball.radius : ℝ) by linarith)

/-- The rational width of the real projection is exactly twice the radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalComplexBall.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalComplexBall.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e323c4a17697d7a307ae3e303cf96d4947e272b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
