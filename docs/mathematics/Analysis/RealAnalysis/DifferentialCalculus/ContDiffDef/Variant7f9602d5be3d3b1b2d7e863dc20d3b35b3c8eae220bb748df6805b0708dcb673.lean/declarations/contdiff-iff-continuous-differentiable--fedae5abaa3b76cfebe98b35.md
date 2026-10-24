# contDiff_iff_continuous_differentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c838c642f870cc3283188bf6ef5a0ed8c37aa2dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1662,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5418043-12f8-390f-32d5-d7f42fe51478",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e022d03-5a19-7f0a-0b01-f46acc223464",
  "kind": "theorem",
  "lexical_name": "contDiff_iff_continuous_differentiable",
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
  "slug": "contdiff-iff-continuous-differentiable--fedae5abaa3b76cfebe98b35",
  "source": {
    "blob": "c838c642f870cc3283188bf6ef5a0ed8c37aa2dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1670,
    "line": 1662,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fedae5abaa3b76cfebe98b35d29a6171deb72b3907011753b6257c4403ac6ac9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e022d03-5a19-7f0a-0b01-f46acc223464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1662–1670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiff_iff_continuous_differentiable :
    ContDiff 𝕜 n f ↔
      (∀ m : ℕ, (m : ℕ∞) ≤ n → Continuous fun x => iteratedFDeriv 𝕜 m f x) ∧
        ∀ m : ℕ, (m : ℕ∞) < n → Differentiable 𝕜 fun x => iteratedFDeriv 𝕜 m f x := by
  simp [contDiffOn_univ.symm, continuous_iff_continuousOn_univ, differentiableOn_univ.symm,
    iteratedFDerivWithin_univ, contDiffOn_iff_continuousOn_differentiableOn uniqueDiffOn_univ]
#align cont_diff_iff_continuous_differentiable contDiff_iff_continuous_differentiable

/-- If `f` is `C^n` then its `m`-times iterated derivative is continuous for `m ≤ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean#L1662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c838c642f870cc3283188bf6ef5a0ed8c37aa2dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
