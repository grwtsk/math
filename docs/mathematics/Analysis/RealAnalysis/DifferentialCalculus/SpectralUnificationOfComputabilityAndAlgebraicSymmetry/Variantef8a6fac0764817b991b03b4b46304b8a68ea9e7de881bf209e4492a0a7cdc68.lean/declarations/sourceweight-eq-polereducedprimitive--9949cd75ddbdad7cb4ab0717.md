# sourceWeight_eq_poleReducedPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef61fc0ce718a26b8264b51e920868a314d01a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2deedefd-f026-441f-11ad-0ecc21107afa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1c6e9f3-ffb1-f22c-eab2-1212dfbe8184",
  "kind": "theorem",
  "lexical_name": "sourceWeight_eq_poleReducedPrimitive",
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
  "slug": "sourceweight-eq-polereducedprimitive--9949cd75ddbdad7cb4ab0717",
  "source": {
    "blob": "9ef61fc0ce718a26b8264b51e920868a314d01a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9949cd75ddbdad7cb4ab07170302a348b4b9c5763b0e1f4c8b1d6dc86640e70c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1c6e9f3-ffb1-f22c-eab2-1212dfbe8184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceWeight_eq_poleReducedPrimitive (A t : ℝ) (hA : 0 < A) :
    sourceWeight explicitSecondDerivative A t =
      deriv (poleReducedPrimitive A) t + poleReducedPrimitive A t := by
  have heq : exponentialTest (sourceCorrelation explicitSecondDerivative A) =
      fun s ↦ poleReducedPrimitive A s + deriv (weightedPoleCorrelation A) s := by
    funext s
    exact (poleReducedPrimitive_add_deriv A s hA).symm
  have hF := poleReducedPrimitive_contDiff A hA
  have hd := ((hF.differentiable (by norm_num)).differentiableAt.hasDerivAt).add
    (weightedPoleCorrelation_deriv_hasDerivAt A t hA)
  change HasDerivAt (fun s ↦ poleReducedPrimitive A s +
    deriv (weightedPoleCorrelation A) s) _ t at hd
  have hw := exponentialTest_deriv _ (sourceCorrelation_contDiff A hA) t
  rw [heq, hd.deriv] at hw
  exact hw.symm

/-- All upper traces needed by the finite pole transfer vanish at the actual endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef61fc0ce718a26b8264b51e920868a314d01a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
