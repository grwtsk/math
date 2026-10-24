# reference_regularizedMass_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d70268-6f53-c970-a7c1-edf369d454ff",
  "kind": "theorem",
  "lexical_name": "reference_regularizedMass_sub_abs_le",
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
  "slug": "reference-regularizedmass-sub-abs-le--a90e90c7582449688ea58eb1",
  "source": {
    "blob": "dcd44305c17b02c282f721147dc2c2bf460ef01b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 173,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90e90c7582449688ea58eb1b9bd4d12a8af95789151e490fdecec787643d07e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d70268-6f53-c970-a7c1-edf369d454ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_regularizedMass_sub_abs_le
    (S T : FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H →L[ℂ]
      FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    |regularizedMass S α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector -
      regularizedMass T α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector| ≤
      ‖S - T‖ / (2 * α) := by
  have h := regularizedMass_sub_abs_le S T hS hT α hα
    FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector
  rw [FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_norm_sq] at h
  convert h using 1
  ring

end PositiveResolventScratch

namespace PositiveResolventScratch

open ContinuousLinearMap
open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- A fixed vector of a positive operator gives a directional lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelAudit/Variant7a5ac37cd1c62ab7907ebfcba35c1b043242d231c773585168899cc7460c15cf.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd44305c17b02c282f721147dc2c2bf460ef01b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
