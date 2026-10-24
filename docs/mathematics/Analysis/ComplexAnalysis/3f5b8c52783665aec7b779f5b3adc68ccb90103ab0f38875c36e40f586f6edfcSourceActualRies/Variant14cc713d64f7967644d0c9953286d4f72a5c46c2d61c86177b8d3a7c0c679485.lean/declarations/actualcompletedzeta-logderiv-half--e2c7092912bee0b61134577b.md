# actualCompletedZeta_logDeriv_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b9a3928-2958-6081-b0ae-452450c781cf",
  "kind": "theorem",
  "lexical_name": "actualCompletedZeta_logDeriv_half",
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
  "slug": "actualcompletedzeta-logderiv-half--e2c7092912bee0b61134577b",
  "source": {
    "blob": "4cd33d11e78cc8b296bc329ef23ca4e8eba650a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2c7092912bee0b61134577b8f3e3d5b7591a442b3bbbe72a3e70fcfd59f4395",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b9a3928-2958-6081-b0ae-452450c781cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCompletedZeta_logDeriv_half :
    logDeriv completedRiemannZeta (1 / 2 : ℂ) = 0 := by
  have h := Zeta23.WeilEF.logDeriv_completedZeta_one_sub (1 / 2 : ℂ)
    (by norm_num) (by norm_num)
  norm_num at h
  linear_combination h

/-- The nonzero actual zeta value and genuine gamma bracket calibrate the midpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/3f5b8c52783665aec7b779f5b3adc68ccb90103ab0f38875c36e40f586f6edfcSourceActualRies/Variant14cc713d64f7967644d0c9953286d4f72a5c46c2d61c86177b8d3a7c0c679485.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd33d11e78cc8b296bc329ef23ca4e8eba650a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
