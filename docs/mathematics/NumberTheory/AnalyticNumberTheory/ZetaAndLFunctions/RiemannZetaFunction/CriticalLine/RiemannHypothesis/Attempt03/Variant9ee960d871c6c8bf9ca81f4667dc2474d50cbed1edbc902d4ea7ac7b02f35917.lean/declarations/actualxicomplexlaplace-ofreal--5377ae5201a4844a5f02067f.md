# actualXiComplexLaplace_ofReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:966147a8-d4c2-ee78-357c-bc058712d8c9",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_ofReal",
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
  "slug": "actualxicomplexlaplace-ofreal--5377ae5201a4844a5f02067f",
  "source": {
    "blob": "f9d9904214b1c47f27b0c48bba61563ace025c55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9ee960d871c6c8bf9ca81f4667dc2474d50cbed1edbc902d4ea7ac7b02f35917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5377ae5201a4844a5f02067f33eb19c30fd90c7e68905b518a9e1d1d708c434b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9ee960d871c6c8bf9ca81f4667dc2474d50cbed1edbc902d4ea7ac7b02f35917.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:966147a8-d4c2-ee78-357c-bc058712d8c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_ofReal (σ : ℝ) :
    actualXiComplexLaplace (σ : ℂ) =
      ((∫ t in Ioi (Real.log 7), actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) : ℝ) : ℂ) := by
  unfold actualXiComplexLaplace
  have he (t : ℝ) : (actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-(σ : ℂ) * (t : ℂ)) =
      ((actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) : ℝ) : ℂ) := by
    rw [show -(σ : ℂ) * (t : ℂ) = ((-σ * t : ℝ) : ℂ) by norm_cast,
      ← Complex.ofReal_exp, ← Complex.ofReal_mul]
  simp_rw [he]
  exact integral_ofReal

/-- Actual inverse-square cancellation removes the old inverse-distance loss on the real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9ee960d871c6c8bf9ca81f4667dc2474d50cbed1edbc902d4ea7ac7b02f35917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9ee960d871c6c8bf9ca81f4667dc2474d50cbed1edbc902d4ea7ac7b02f35917.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9d9904214b1c47f27b0c48bba61563ace025c55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
