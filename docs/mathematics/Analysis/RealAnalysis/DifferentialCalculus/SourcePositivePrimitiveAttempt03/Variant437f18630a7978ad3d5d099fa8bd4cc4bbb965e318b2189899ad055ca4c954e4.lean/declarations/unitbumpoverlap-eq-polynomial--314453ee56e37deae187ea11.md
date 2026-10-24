# unitBumpOverlap_eq_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62c9d89d-8369-d948-fb51-1d6fc4e35a66",
  "kind": "theorem",
  "lexical_name": "unitBumpOverlap_eq_polynomial",
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
  "slug": "unitbumpoverlap-eq-polynomial--314453ee56e37deae187ea11",
  "source": {
    "blob": "ea4a9122f5060198eba18536d49dc778a14ea609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt03/Variant437f18630a7978ad3d5d099fa8bd4cc4bbb965e318b2189899ad055ca4c954e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:314453ee56e37deae187ea110709d3f02c04ed07283f3fa98fc82749606fd460",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt03/Variant437f18630a7978ad3d5d099fa8bd4cc4bbb965e318b2189899ad055ca4c954e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62c9d89d-8369-d948-fb51-1d6fc4e35a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitBumpOverlap_eq_polynomial {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    unitBumpOverlap u=overlapPolynomial0 u := by
  rw [unitBumpOverlap_eq_interval hu]
  have he : (fun x : ℝ => (1-x^2)^4*(1-(x-u)^2)^4)=
    fun x => (1 + -4*u^2 + 6*u^4 + -4*u^6 + 1*u^8)*x^0 + (8*u + -24*u^3 + 24*u^5 + -8*u^7)*x^1 + (-8 + 52*u^2 + -84*u^4 + 44*u^6 + -4*u^8)*x^2 + (-56*u + 176*u^3 + -152*u^5 + 32*u^7)*x^3 + (28 + -228*u^2 + 346*u^4 + -136*u^6 + 6*u^8)*x^4 + (168*u + -520*u^3 + 368*u^5 + -48*u^7)*x^5 + (-56 + 500*u^2 + -664*u^4 + 184*u^6 + -4*u^8)*x^6 + (-280*u + 800*u^3 + -432*u^5 + 32*u^7)*x^7 + (70 + -620*u^2 + 666*u^4 + -116*u^6 + 1*u^8)*x^8 + (280*u + -680*u^3 + 248*u^5 + -8*u^7)*x^9 + (-56 + 444*u^2 + -340*u^4 + 28*u^6)*x^10 + (-168*u + 304*u^3 + -56*u^5)*x^11 + (28 + -172*u^2 + 70*u^4)*x^12 + (56*u + -56*u^3)*x^13 + (-8 + 28*u^2)*x^14 + (-8*u)*x^15 + (1)*x^16 := by
    funext x
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,intervalIntegral.integral_const_mul,integral_pow]
  dsimp [overlapPolynomial0]
  ring

/-- Actual normalization and dilation give one Z denominator and no extra A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt03/Variant437f18630a7978ad3d5d099fa8bd4cc4bbb965e318b2189899ad055ca4c954e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt03/Variant437f18630a7978ad3d5d099fa8bd4cc4bbb965e318b2189899ad055ca4c954e4.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea4a9122f5060198eba18536d49dc778a14ea609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
