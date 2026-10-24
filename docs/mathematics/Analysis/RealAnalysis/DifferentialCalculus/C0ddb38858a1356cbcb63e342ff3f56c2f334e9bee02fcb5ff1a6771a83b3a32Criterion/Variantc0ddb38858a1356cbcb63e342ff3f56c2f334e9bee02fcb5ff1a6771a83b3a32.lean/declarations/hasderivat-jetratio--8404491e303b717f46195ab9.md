# hasDerivAt_jetRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f197dabdac14a9a7bb1f77525c55eed71c9c975e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82da51bc-56eb-52bb-45b2-4c92cd9658b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0195bac5-0a79-267b-8ef9-9893115308f9",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_jetRatio",
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
  "slug": "hasderivat-jetratio--8404491e303b717f46195ab9",
  "source": {
    "blob": "f197dabdac14a9a7bb1f77525c55eed71c9c975e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 10,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8404491e303b717f46195ab99dfe55ae9136c27daa2727578f47e438feede431",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0195bac5-0a79-267b-8ef9-9893115308f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_jetRatio (f0 f1 f2 f3 f4 : ℝ → ℝ) {t : ℝ}
    (h0 : HasDerivAt f0 (f1 t) t) (h1 : HasDerivAt f1 (f2 t) t)
    (h2 : HasDerivAt f2 (f3 t) t) (h3 : HasDerivAt f3 (f4 t) t)
    (hw : f0 t * f2 t - f1 t ^ 2 ≠ 0) :
    HasDerivAt (fun u => (f0 u * f3 u - f1 u * f2 u) /
      (f0 u * f2 u - f1 u ^ 2))
      (f0 t * Matrix.det !![f0 t, f1 t, f2 t; f1 t, f2 t, f3 t;
        f2 t, f3 t, f4 t] / (f0 t * f2 t - f1 t ^ 2) ^ 2) t := by
  convert! ((h0.mul h3).sub (h1.mul h2)).div ((h0.mul h2).sub (h1.pow 2)) hw using 1
  simp [Matrix.det_fin_three]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/C0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32Criterion/Variantc0ddb38858a1356cbcb63e342ff3f56c2f334e9bee02fcb5ff1a6771a83b3a32.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f197dabdac14a9a7bb1f77525c55eed71c9c975e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
