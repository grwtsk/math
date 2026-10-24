# mertensResidual_lt_neg_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40fa74e97e435ece26352d4c5184cf20ef90f779",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:daf56b08-8d0b-9337-143f-abfc07b88b1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:848c00ba-ef58-79ca-e407-cb545951b462",
  "kind": "theorem",
  "lexical_name": "mertensResidual_lt_neg_work",
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
  "slug": "mertensresidual-lt-neg-work--7e3f2223ce4a76523f7a0759",
  "source": {
    "blob": "40fa74e97e435ece26352d4c5184cf20ef90f779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3f2223ce4a76523f7a07593c29e56a750c8827bf6d7987795a63c533c6bfb9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:848c00ba-ef58-79ca-e407-cb545951b462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_lt_neg_work {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A < -criticalMangoldtWork A := by
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA]
  linarith [criticalContinuousMoment_lt_zero hA]

/-- A genuine work lower witness would pass to the original residual with the same constant.
The premise remains the exact open arithmetic theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualResidualEnergyV6Source/Variantbe9549e08e2d4ec1b5750c543632e4b08f62276e90a4c00e327bad99bd2a8531.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fa74e97e435ece26352d4c5184cf20ef90f779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
