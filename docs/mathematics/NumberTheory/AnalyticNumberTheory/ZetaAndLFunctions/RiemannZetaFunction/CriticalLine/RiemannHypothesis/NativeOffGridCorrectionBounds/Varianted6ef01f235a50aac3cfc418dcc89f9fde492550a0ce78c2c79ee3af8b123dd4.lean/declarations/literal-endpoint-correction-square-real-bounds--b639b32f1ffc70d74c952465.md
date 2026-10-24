# literal_endpoint_correction_square_real_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64a61d53-aa5d-fe2d-9b63-fef98b75381f",
  "kind": "theorem",
  "lexical_name": "literal_endpoint_correction_square_real_bounds",
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
  "slug": "literal-endpoint-correction-square-real-bounds--b639b32f1ffc70d74c952465",
  "source": {
    "blob": "acc795c0b2e0da8e7ddd9a2ddf2a51644defd1ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b639b32f1ffc70d74c9524650279f0572b7c55d0e1e83553a25aba7a7b87ff2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64a61d53-aa5d-fe2d-9b63-fef98b75381f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_endpoint_correction_square_real_bounds {A : ℝ} (hA : 100 ≤ A) :
    7 / 8 < (complexEndpointCorrection A mode ^ 2).re ∧
      (complexEndpointCorrection A mode ^ 2).re < 9 / 8 := by
  have h := (Complex.abs_re_le_norm (complexEndpointCorrection A mode ^ 2 - 1)).trans_lt
    (literal_endpoint_correction_square_lt_one_eighth hA)
  rw [Complex.sub_re, Complex.one_re] at h
  have h' := abs_lt.mp h
  constructor <;> linarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCorrectionBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc795c0b2e0da8e7ddd9a2ddf2a51644defd1ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
