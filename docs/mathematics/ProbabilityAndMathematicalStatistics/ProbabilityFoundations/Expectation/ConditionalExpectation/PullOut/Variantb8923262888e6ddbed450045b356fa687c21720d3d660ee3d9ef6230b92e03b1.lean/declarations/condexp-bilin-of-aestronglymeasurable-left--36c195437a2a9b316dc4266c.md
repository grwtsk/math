# condExp_bilin_of_aestronglyMeasurable_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b96821d-1ca7-a08e-ce2a-30c95fa5af4d",
  "kind": "theorem",
  "lexical_name": "condExp_bilin_of_aestronglyMeasurable_left",
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
  "slug": "condexp-bilin-of-aestronglymeasurable-left--36c195437a2a9b316dc4266c",
  "source": {
    "blob": "ce9732219aad38850f6376c8baed04bfb9f2ddf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 207,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36c195437a2a9b316dc4266c9cce104eb6ac9ac67682bc2fdfac18a835d382ec",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b96821d-1ca7-a08e-ce2a-30c95fa5af4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_bilin_of_aestronglyMeasurable_left [CompleteSpace E]
    {f : Ω → F} {g : Ω → E} (hf : AEStronglyMeasurable[m] f μ)
    (hfg : Integrable (fun ω ↦ B (f ω) (g ω)) μ) (hg : Integrable g μ) :
    μ[fun ω ↦ B (f ω) (g ω) | m] =ᵐ[μ] fun ω ↦ B (f ω) (μ[g | m] ω) := calc
  μ[fun ω ↦ B (f ω) (g ω) | m]
  _ =ᵐ[μ] μ[fun ω ↦ B (hf.mk f ω) (g ω) | m] := by
    apply condExp_congr_ae
    filter_upwards [hf.ae_eq_mk] with a ha using by rw [ha]
  _ =ᵐ[μ] fun ω ↦ B (hf.mk f ω) (μ[g | m] ω) := by
    refine condExp_bilin_of_stronglyMeasurable_left B hf.stronglyMeasurable_mk
      ((integrable_congr ?_).mp hfg) hg
    filter_upwards [hf.ae_eq_mk] with ω hω using by rw [hω]
  _ =ᵐ[μ] fun ω ↦ B (f ω) (μ[g | m] ω) := by
    filter_upwards [hf.ae_eq_mk] with a ha using by rw [ha]

/-- Pull-out property of the conditional expectation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9732219aad38850f6376c8baed04bfb9f2ddf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
