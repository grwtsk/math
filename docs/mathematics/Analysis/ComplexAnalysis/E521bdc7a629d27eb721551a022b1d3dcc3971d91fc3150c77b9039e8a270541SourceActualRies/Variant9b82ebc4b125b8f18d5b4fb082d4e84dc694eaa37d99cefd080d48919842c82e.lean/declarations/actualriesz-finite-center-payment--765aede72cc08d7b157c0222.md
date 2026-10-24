# actualRiesz_finite_center_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f74d973d-748e-83c7-22b5-85e0a5b041a8",
  "kind": "theorem",
  "lexical_name": "actualRiesz_finite_center_payment",
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
  "slug": "actualriesz-finite-center-payment--765aede72cc08d7b157c0222",
  "source": {
    "blob": "bb96e6cfcba35d511bce41f8490643dce39c2727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 113,
    "path": "GRWTSK/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:765aede72cc08d7b157c022281470e47a398288c68bea45957d6ee6716f55bfd",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f74d973d-748e-83c7-22b5-85e0a5b041a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRiesz_finite_center_payment (A : ℝ) :
    actualRieszLimitingLinearCenter - actualRieszLinearCenter A =
      2 - actualRieszContinuousMagnitude A := by
  unfold actualRieszLimitingLinearCenter actualRieszLinearCenter
  ring

/-- The source-specific finite payment is nonnegative and has an explicit quadratic bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb96e6cfcba35d511bce41f8490643dce39c2727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
