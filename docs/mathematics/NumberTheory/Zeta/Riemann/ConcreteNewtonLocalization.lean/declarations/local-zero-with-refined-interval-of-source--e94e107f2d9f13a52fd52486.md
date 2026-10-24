# local_zero_with_refined_interval_of_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5308919a-0075-041d-dfcf-0dbdffc408c7",
  "kind": "theorem",
  "lexical_name": "local_zero_with_refined_interval_of_source",
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
  "slug": "local-zero-with-refined-interval-of-source--e94e107f2d9f13a52fd52486",
  "source": {
    "blob": "dea0f21b0d65708e51c6ad36ad032685557a2f73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 193,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e94e107f2d9f13a52fd524866b2c6a584182fb0dc7df22d3e38d8646802084e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5308919a-0075-041d-dfcf-0dbdffc408c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_zero_with_refined_interval_of_source
    (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ z : ZeroPoint, z.1.re = 1 / 2 ∧
      (7067360571 / 500000000 : ℝ) < z.1.im ∧
      z.1.im < (7067364571 / 500000000 : ℝ) ∧
      ‖z.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint,
        ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
          (ConcreteNewtonPacket.newtonRadius : ℝ) → w = z := by
  obtain ⟨z, onLine, inner, _, derivativeNonzero, unique⟩ :=
    local_zero_with_inner_geometry_of_source hsource
  have interval := imaginary_interval_of_inner_location z.1 inner
  exact ⟨z, onLine, interval.1, interval.2, inner, derivativeNonzero, unique⟩

end

end GRWTSK.RiemannHypothesis.ConcreteNewtonLocalization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonLocalization.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea0f21b0d65708e51c6ad36ad032685557a2f73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
