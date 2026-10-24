# logSample_integrableOn_and_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cebfdfafaacf10019a2a5e8d417d8e03da48aac3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:921bcb7b-7b9f-1fb8-7f33-c6b3cae8a7ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d16823c5-6a21-a9ff-826f-67b489d8620f",
  "kind": "theorem",
  "lexical_name": "logSample_integrableOn_and_integral_zero",
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
  "slug": "logsample-integrableon-and-integral-zero--3235d4429030bc3bd700c1ce",
  "source": {
    "blob": "cebfdfafaacf10019a2a5e8d417d8e03da48aac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 275,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3235d4429030bc3bd700c1ce5d47c0e8be05f07be5e78b09c1aa132176bcc470",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d16823c5-6a21-a9ff-826f-67b489d8620f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSample_integrableOn_and_integral_zero (t : ℝ) (ht : 2 ≤ t) :
    IntegrableOn (logSample t) (Ioi 1) ∧
      (∫ x in Ioi (1 : ℝ), logSample t x) = 0 :=
  ⟨logSample_integrableOn t, logSample_integral_zero t ht⟩

end
end FixedKernelMomentScratch

namespace FixedKernelAdmissionScratch

open MeasureTheory Set Real Filter Finset
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernelScratch FixedKernelMomentScratch

noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cebfdfafaacf10019a2a5e8d417d8e03da48aac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
