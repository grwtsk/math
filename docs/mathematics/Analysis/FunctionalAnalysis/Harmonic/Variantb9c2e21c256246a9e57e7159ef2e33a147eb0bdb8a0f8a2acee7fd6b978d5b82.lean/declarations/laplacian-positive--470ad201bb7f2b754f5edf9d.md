# laplacian_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d747973ac95c4980b604c0f738f46926c6a43a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:292c1ec2-4475-f2dc-4289-c821385c201f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85401f69-ce62-1aa8-8b94-1b4dc60f5524",
  "kind": "theorem",
  "lexical_name": "laplacian_positive",
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
  "slug": "laplacian-positive--470ad201bb7f2b754f5edf9d",
  "source": {
    "blob": "1d747973ac95c4980b604c0f738f46926c6a43a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:470ad201bb7f2b754f5edf9dd7d925cd88c6d92642511c84444e0b87acd6f346",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85401f69-ce62-1aa8-8b94-1b4dc60f5524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplacian_positive
    (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) :
    0 ≤ (inner ℂ (complex.laplacianOperator vector) vector).re := by
  let dirac := complex.hodgeDirac
  have symmetric : dirac.toLinearMap.IsSymmetric :=
    FiniteOperator.isSymmetric_toLinearMap_iff dirac |>.mpr
      complex.hodgeDirac_isHermitian
  change 0 ≤ (inner ℂ (complex.laplacian.toLinearMap vector) vector).re
  rw [← complex.hodgeDirac_square]
  have square_apply :
      FiniteOperator.toLinearMap (dirac * dirac) vector =
        dirac.toLinearMap (dirac.toLinearMap vector) := by
    apply PiLp.ext
    intro index
    change Matrix.mulVec (dirac * dirac) vector.ofLp index =
      Matrix.mulVec dirac (Matrix.mulVec dirac vector.ofLp) index
    rw [Matrix.mulVec_mulVec]
  rw [square_apply]
  rw [symmetric (dirac.toLinearMap vector) vector]
  exact inner_self_nonneg (𝕜 := ℂ) (x := dirac.toLinearMap vector)

end FiniteDifferentialComplex

end DAF.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Harmonic/Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d747973ac95c4980b604c0f738f46926c6a43a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
