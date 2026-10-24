# centered_comparison_circleIntegral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:605a033e-628f-c19b-9dba-541c0f0b22c1",
  "kind": "theorem",
  "lexical_name": "centered_comparison_circleIntegral_zero",
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
  "slug": "centered-comparison-circleintegral-zero--d43cb08c554958c6711e31ec",
  "source": {
    "blob": "ad5f0a6f9f5f70da1032bca9b35aa6b614a1eb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d43cb08c554958c6711e31ec315a8b02c316d70e6177271b1d5ab2493cbead96",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:605a033e-628f-c19b-9dba-541c0f0b22c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_comparison_circleIntegral_zero (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    (∮ w in C(QComplex.embed ConcreteNewtonPacket.center, (ConcreteNewtonPacket.newtonRadius : ℝ)),
      deriv riemannZeta w / riemannZeta w -
        (w - QComplex.embed ConcreteNewtonPacket.center)⁻¹) = 0 := by
  have positive : (0 : ℝ) < (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    norm_num [ConcreteNewtonPacket.newtonRadius]
  have centerInside : QComplex.embed ConcreteNewtonPacket.center ∈
      ball (QComplex.embed ConcreteNewtonPacket.center) (ConcreteNewtonPacket.newtonRadius : ℝ) :=
    mem_ball_self positive
  have sourceIntegral := outer_log_derivative_circleIntegral hsource
  rw [circleIntegral.integral_sub sourceIntegral.1
    (pole_circleIntegrable _ _ _ centerInside), sourceIntegral.2,
    circleIntegral.integral_sub_inv_of_mem_ball centerInside, sub_self]

end

end GRWTSK.RiemannHypothesis.ConcreteNewtonContour
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5f0a6f9f5f70da1032bca9b35aa6b614a1eb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
