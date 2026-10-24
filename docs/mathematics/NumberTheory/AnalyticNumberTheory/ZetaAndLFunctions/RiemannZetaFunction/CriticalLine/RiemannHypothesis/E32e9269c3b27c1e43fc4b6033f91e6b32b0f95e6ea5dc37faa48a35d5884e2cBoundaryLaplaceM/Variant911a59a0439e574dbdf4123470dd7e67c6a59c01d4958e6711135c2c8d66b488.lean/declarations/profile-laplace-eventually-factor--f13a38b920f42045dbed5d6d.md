# profile_laplace_eventually_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c864a8b8-ccf6-6b8e-34d9-90641a86e9ba",
  "kind": "theorem",
  "lexical_name": "profile_laplace_eventually_factor",
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
  "slug": "profile-laplace-eventually-factor--f13a38b920f42045dbed5d6d",
  "source": {
    "blob": "6707df3228626a17b3ce6ef0a9ea12ecbe96cb1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f13a38b920f42045dbed5d6d6b82e10e8fc70021fbe30b69e5014c379658d76a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c864a8b8-ccf6-6b8e-34d9-90641a86e9ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profile_laplace_eventually_factor :
    boundaryProfileLaplace =ᶠ[nhds (1 / 2 : ℂ)]
      (fun s ↦ (s - 1 / 2) ^ 2 * profilePoleFactor s) := by
  have he : ∀ᶠ s : ℂ in nhds (1 / 2), 0 < s.re :=
    Complex.continuous_re.continuousAt.tendsto.eventually
      (eventually_gt_nhds (by norm_num : (0 : ℝ) < (1 / 2 : ℂ).re))
  filter_upwards [he] with s hs
  rw [boundary_profile_laplace_closed_form s hs]
  unfold profilePoleFactor
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6707df3228626a17b3ce6ef0a9ea12ecbe96cb1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
