# residual_upper_implies_complete_tail_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d5ab0ac-a32e-1850-c84c-d2f665fa91c6",
  "kind": "theorem",
  "lexical_name": "residual_upper_implies_complete_tail_lower",
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
  "slug": "residual-upper-implies-complete-tail-lower--0786c8d4e8efb3cc80cbb78e",
  "source": {
    "blob": "bf1a1d4edcea037aeff46d249c29dee0b8395b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant4f1f2fea5b53d7ecc19e6f250366893320a9aa5c5b51418dacb05240004b508b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0786c8d4e8efb3cc80cbb78e04da0e18da8a92764353d1cae1db9c38aae8d581",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant4f1f2fea5b53d7ecc19e6f250366893320a9aa5c5b51418dacb05240004b508b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5ab0ac-a32e-1850-c84c-d2f665fa91c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_implies_complete_tail_lower (A B H G : ℝ) (hA : 40 ≤ A)
    (hr : mertensResidual A ≤ B) (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -(B + 2 + G + H) ≤ completeXiTail A := by
  have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).1
  have hh := firstAtomHeadWork_nonpositive A hA
  rw [complete_tail_eq_residual_corrections A hA]
  linarith only [hc, hh, hr, hH, hG]

end RH16CompleteDivisorTailReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant4f1f2fea5b53d7ecc19e6f250366893320a9aa5c5b51418dacb05240004b508b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant4f1f2fea5b53d7ecc19e6f250366893320a9aa5c5b51418dacb05240004b508b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1a1d4edcea037aeff46d249c29dee0b8395b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
