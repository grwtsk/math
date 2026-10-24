# endpoint_minus_tail_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c5a8f51-eb8e-dcfb-515e-bec0ef6186cc",
  "kind": "theorem",
  "lexical_name": "endpoint_minus_tail_norm",
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
  "slug": "endpoint-minus-tail-norm--b5f3c2a4533cba0c3d7b3d81",
  "source": {
    "blob": "acc795c0b2e0da8e7ddd9a2ddf2a51644defd1ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5f3c2a4533cba0c3d7b3d81aa504de0d12f01b12507e427917467cf2d347793",
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

Occurrence: `result:8c5a8f51-eb8e-dcfb-515e-bec0ef6186cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_minus_tail_norm (w : ℂ) : ‖endpointMinus w - 1‖ ≤ tailPrice w := by
  have he : endpointMinus w - 1 = -(10 / w) + 45 / w ^ 2 - 105 / w ^ 3 + 105 / w ^ 4 := by
    unfold endpointMinus
    ring
  rw [he]
  calc
    _ ≤ ‖-(10 / w) + 45 / w ^ 2 - 105 / w ^ 3‖ + ‖(105 : ℂ) / w ^ 4‖ := norm_add_le _ _
    _ ≤ (‖-(10 / w) + 45 / w ^ 2‖ + ‖(105 : ℂ) / w ^ 3‖) + ‖(105 : ℂ) / w ^ 4‖ := by
      gcongr
      exact norm_sub_le _ _
    _ ≤ ((‖-(10 / w)‖ + ‖(45 : ℂ) / w ^ 2‖) + ‖(105 : ℂ) / w ^ 3‖) + ‖(105 : ℂ) / w ^ 4‖ := by
      gcongr
      exact norm_add_le _ _
    _ = tailPrice w := by norm_num [tailPrice, norm_div, norm_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridCorrectionBounds/Varianted6ef01f235a50aac3cfc418dcc89f9fde492550a0ce78c2c79ee3af8b123dd4.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acc795c0b2e0da8e7ddd9a2ddf2a51644defd1ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
