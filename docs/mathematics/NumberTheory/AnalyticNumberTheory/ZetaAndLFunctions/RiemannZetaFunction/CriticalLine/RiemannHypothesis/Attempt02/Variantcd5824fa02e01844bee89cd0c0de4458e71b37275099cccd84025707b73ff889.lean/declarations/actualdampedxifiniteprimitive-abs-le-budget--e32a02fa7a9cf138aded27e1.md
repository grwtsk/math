# actualDampedXiFinitePrimitive_abs_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e3ce28f-fd30-ca87-ef22-e92dc7359d46",
  "kind": "theorem",
  "lexical_name": "actualDampedXiFinitePrimitive_abs_le_budget",
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
  "slug": "actualdampedxifiniteprimitive-abs-le-budget--e32a02fa7a9cf138aded27e1",
  "source": {
    "blob": "a9b1412c7683d85fed6112e9068e23833c696bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantcd5824fa02e01844bee89cd0c0de4458e71b37275099cccd84025707b73ff889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e32a02fa7a9cf138aded27e11cfbd03eab00879e30e9c9a08b211b1c29a0409d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantcd5824fa02e01844bee89cd0c0de4458e71b37275099cccd84025707b73ff889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e3ce28f-fd30-ca87-ef22-e92dc7359d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiFinitePrimitive_abs_le_budget {T : ℝ} (hT : Real.log 7 ≤ T) :
    |actualDampedXiFinitePrimitive T| ≤ actualDampedXiFiniteBudget := by
  have he := actualDampedXiFinitePrimitive_abel hT
  have hb := actualXiSevenInverseSquare_abs_le hT
  have ht := actualDampedXiFinitePrimitive_upperTrace_abs_le hT
  have hh := abs_sub (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2)
    (actualAnchoredXiTailPrimitive T * Real.exp (-T / 2))
  rw [← he, abs_mul] at hh
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)] at hh
  unfold actualDampedXiFiniteBudget
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiDampedFiniteBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantcd5824fa02e01844bee89cd0c0de4458e71b37275099cccd84025707b73ff889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantcd5824fa02e01844bee89cd0c0de4458e71b37275099cccd84025707b73ff889.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9b1412c7683d85fed6112e9068e23833c696bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
