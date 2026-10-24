# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0b7c076bc4415be500a0d7000f81901a07f870bfefe01c95cd713a6888da206",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--4ddeda6f9c9e7f0ac573e591",
  "source": {
    "blob": "07975214e7a6e89001e708b839bcc312908e4fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 7,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Experiments/Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ddeda6f9c9e7f0ac573e591910fe3f1c0ce6f3187806d0b0c1b542ffb15bd11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Experiments/Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0b7c076bc4415be500a0d7000f81901a07f870bfefe01c95cd713a6888da206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : (∫ x : ℝ in (-1)..1, ((1 - x ^ 2) ^ 4) ^ 2) = (65536 / 109395 : ℝ) := by
  have expand : (fun x : ℝ ↦ ((1 - x ^ 2) ^ 4) ^ 2) =
      (fun x ↦ 1 - 8*x^2 + 28*x^4 - 56*x^6 + 70*x^8 - 56*x^10 + 28*x^12 - 8*x^14 + x^16) := by
    funext x; ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
    intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Experiments/Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Experiments/Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07975214e7a6e89001e708b839bcc312908e4fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
