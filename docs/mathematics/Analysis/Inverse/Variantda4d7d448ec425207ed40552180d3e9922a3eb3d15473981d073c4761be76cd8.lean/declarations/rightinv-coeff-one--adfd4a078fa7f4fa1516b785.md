# rightInv_coeff_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5de106cd-96e1-8654-0acb-bccfd7b54990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55a73ba0-9181-ec31-7390-8d0f6b608cf0",
  "kind": "theorem",
  "lexical_name": "rightInv_coeff_one",
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
  "slug": "rightinv-coeff-one--adfd4a078fa7f4fa1516b785",
  "source": {
    "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 183,
    "path": "GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adfd4a078fa7f4fa1516b785d057957f679aa8275cb88d3f9a9df69c4670ffcb",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a73ba0-9181-ec31-7390-8d0f6b608cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightInv_coeff_one (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F) :
    p.rightInv i 1 = (continuousMultilinearCurryFin1 𝕜 F E).symm i.symm := by rw [rightInv]
#align formal_multilinear_series.right_inv_coeff_one FormalMultilinearSeries.rightInv_coeff_one

/-- The right inverse does not depend on the zeroth coefficient of a formal multilinear
series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4002faa92ad69e93264c02064e7a1f74a0447741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
