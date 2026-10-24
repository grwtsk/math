# convolution_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e568cc-eae4-0bbe-f61c-e2e95540645e",
  "kind": "theorem",
  "lexical_name": "convolution_integrand_integrable",
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
  "slug": "convolution-integrand-integrable--bf062bf2b47d9ee673b41d17",
  "source": {
    "blob": "881b79a119ff8e0c7616f2bac7dea442229d4600",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 340,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1c8d02f48587a9da7680d3a03fc301777e135fdca283405cbe64a660278f2a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf062bf2b47d9ee673b41d17d74653bbc01ba7fba6704319ef1a982d6d6605ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1c8d02f48587a9da7680d3a03fc301777e135fdca283405cbe64a660278f2a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e568cc-eae4-0bbe-f61c-e2e95540645e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_integrand_integrable (f : FullH) (t : ℝ) :
    Integrable (fun a : ℝ => fixedKernel a • f (t - a)) := by
  exact smul_integrable_of_memLp_two fixedKernel _ fixedKernel_memLp_two
    ((Lp.memLp f).comp_measurePreserving (volume.measurePreserving_sub_left t))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1c8d02f48587a9da7680d3a03fc301777e135fdca283405cbe64a660278f2a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1c8d02f48587a9da7680d3a03fc301777e135fdca283405cbe64a660278f2a82.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881b79a119ff8e0c7616f2bac7dea442229d4600` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
