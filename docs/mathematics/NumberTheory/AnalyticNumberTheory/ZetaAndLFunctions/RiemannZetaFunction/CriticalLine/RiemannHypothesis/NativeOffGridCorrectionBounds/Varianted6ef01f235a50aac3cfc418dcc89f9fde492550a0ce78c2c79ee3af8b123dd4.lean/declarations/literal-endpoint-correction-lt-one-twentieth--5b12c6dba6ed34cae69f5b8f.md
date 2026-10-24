# literal_endpoint_correction_lt_one_twentieth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c60877e-f4d3-1204-f1b4-22c1c261c468",
  "kind": "theorem",
  "lexical_name": "literal_endpoint_correction_lt_one_twentieth",
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
  "slug": "literal-endpoint-correction-lt-one-twentieth--5b12c6dba6ed34cae69f5b8f",
  "source": {
    "blob": "acc795c0b2e0da8e7ddd9a2ddf2a51644defd1ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b12c6dba6ed34cae69f5b8fc922928467a72f8bb1138ced5018c680ea2cb48b",
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

Occurrence: `result:1c60877e-f4d3-1204-f1b4-22c1c261c468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_endpoint_correction_lt_one_twentieth {A : ℝ} (hA : 100 ≤ A) :
    ‖complexEndpointCorrection A mode - 1‖ < 1 / 20 := by
  have he : complexEndpointCorrection A mode - 1 =
      (endpointMinus ((A : ℂ) * mode) - 1) -
        Complex.exp (-2 * (A : ℂ) * mode) * endpointPlus ((A : ℂ) * mode) := by
    unfold complexEndpointCorrection endpointMinus endpointPlus
    ring
  have htail := literal_tail_price_le_one_twenty_fifth hA
  have hminus := (endpoint_minus_tail_norm ((A : ℂ) * mode)).trans htail
  have hplus : ‖endpointPlus ((A : ℂ) * mode)‖ ≤ 26 / 25 := by
    have h := endpoint_plus_norm ((A : ℂ) * mode)
    linarith
  have hexp : ‖Complex.exp (-2 * (A : ℂ) * mode)‖ ≤ 1 / 1024 := by
    rw [literal_reflected_complex_exponential_norm]
    exact (literal_reflected_exponential_lt_one_thousand_twenty_fourth hA).le
  rw [he]
  calc
    _ ≤ ‖endpointMinus ((A : ℂ) * mode) - 1‖ +
        ‖Complex.exp (-2 * (A : ℂ) * mode) * endpointPlus ((A : ℂ) * mode)‖ := norm_sub_le _ _
    _ ≤ 1 / 25 + (1 / 1024) * (26 / 25) := by
      rw [norm_mul]
      exact add_le_add hminus (mul_le_mul hexp hplus (norm_nonneg _) (by norm_num))
    _ < 1 / 20 := by norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc795c0b2e0da8e7ddd9a2ddf2a51644defd1ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
