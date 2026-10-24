# derivative_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5aa70ae-8a07-30d8-0c0e-a47849b3235f",
  "kind": "theorem",
  "lexical_name": "derivative_variation",
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
  "slug": "derivative-variation--e3dc6d431de34738a72ac9c1",
  "source": {
    "blob": "48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3dc6d431de34738a72ac9c14fb47f1d1fb91fe54e4a688cde364fe31d6b10a7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5aa70ae-8a07-30d8-0c0e-a47849b3235f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_variation (f : ℂ → ℂ) (c : ℂ) (r M : ℝ) (hr : 0 ≤ r)
    (hf : AnalyticOnNhd ℂ f (closedBall c r))
    (hM : ∀ z ∈ closedBall c r, ‖deriv (deriv f) z‖ ≤ M)
    (z : ℂ) (hz : z ∈ closedBall c r) :
    ‖deriv f z - deriv f c‖ ≤ M * ‖z - c‖ :=
  (convex_closedBall c r).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun w hw => (hf w hw).deriv.differentiableAt.hasDerivAt.hasDerivWithinAt)
    hM (mem_closedBall_self hr) hz

/-- Center value and derivative enclosures are separate from the all-disk curvature.
A is fixed throughout the disk, not a totalized inverse derivative at each point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/ContractiveZeroDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/ContractiveZeroDisk.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ccd90d31f2de6a14d5204c7ddbbc4b7ae3b746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
