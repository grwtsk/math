# actualResidual_movingHead_signed_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5b247fd-5359-9e25-b142-195f5ea64f8b",
  "kind": "theorem",
  "lexical_name": "actualResidual_movingHead_signed_error_bound",
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
  "slug": "actualresidual-movinghead-signed-error-bound--67e4fed31c1225ed8a438566",
  "source": {
    "blob": "845a893d1139c0e17079f7199a16f223e04e4a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantb9bc0b1f828179debf4d062f3b63b2c4dde2124b3bcb062f08b6509e4747b4a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67e4fed31c1225ed8a438566319a84e7f09577cd304af43f136cd3651d8ad1fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantb9bc0b1f828179debf4d062f3b63b2c4dde2124b3bcb062f08b6509e4747b4a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5b247fd-5359-9e25-b142-195f5ea64f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_movingHead_signed_error_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ c A : ℝ, 1 < c → actualZeroMovingRadius c ≤ A →
      |mertensResidual A - (archimedeanMultiplier 0 -
          (actualZeroHeightHead A (actualBumpMovingHeight A c)).re) / 2| ≤
        (18 * (162826 / 7623 : ℝ)) / (2 * A^2) +
        actualZeroMovingEnvelope A0 c A / 2 := by
  obtain ⟨A0,hA0,hbound⟩ := actualResidual_movingHead_two_sided
  refine ⟨A0,hA0,fun c A hc hA => ?_⟩
  have hh := hbound c A hc hA
  apply abs_le.mpr
  constructor
  · have hcoeff : 0 ≤ (18 * (162826 / 7623 : ℝ)) / (2 * A^2) := by positivity
    linarith [hh.1]
  · linarith [hh.2]

/-- On the whole real scale axis the original signed residual differs from that head by o(1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantb9bc0b1f828179debf4d062f3b63b2c4dde2124b3bcb062f08b6509e4747b4a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroHeadReduction/Variantb9bc0b1f828179debf4d062f3b63b2c4dde2124b3bcb062f08b6509e4747b4a0.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `845a893d1139c0e17079f7199a16f223e04e4a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
