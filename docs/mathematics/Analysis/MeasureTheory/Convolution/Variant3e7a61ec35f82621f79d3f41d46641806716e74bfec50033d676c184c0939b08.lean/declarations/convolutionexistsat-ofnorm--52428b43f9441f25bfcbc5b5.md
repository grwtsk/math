# ConvolutionExistsAt.ofNorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37ca4e2d-bfcf-09a1-f9de-4699e7d67c1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0411ce4-5885-5530-1f50-c2b7b1dd621b",
  "kind": "theorem",
  "lexical_name": "ConvolutionExistsAt.ofNorm'",
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
  "slug": "convolutionexistsat-ofnorm--52428b43f9441f25bfcbc5b5",
  "source": {
    "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 245,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52428b43f9441f25bfcbc5b524ca0cd34801f4fba413f4c1b1230b14272ad075",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0411ce4-5885-5530-1f50-c2b7b1dd621b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvolutionExistsAt.ofNorm' {x₀ : G}
    (h : ConvolutionExistsAt (fun x => ‖f x‖) (fun x => ‖g x‖) x₀ (mul ℝ ℝ) μ)
    (hmf : AEStronglyMeasurable f μ) (hmg : AEStronglyMeasurable g <| map (fun t => x₀ - t) μ) :
    ConvolutionExistsAt f g x₀ L μ := by
  refine'
    (h.const_mul ‖L‖).mono' (hmf.convolution_integrand_snd' L hmg) (eventually_of_forall fun x => _)
  rw [mul_apply', ← mul_assoc]
  apply L.le_op_norm₂
#align convolution_exists_at.of_norm' ConvolutionExistsAt.ofNorm'

end

section Left

variable [MeasurableAdd₂ G] [MeasurableNeg G] [SigmaFinite μ] [IsAddRightInvariant μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6b93fa3151fc64ec813bc11d12698d80eac3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
