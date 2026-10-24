# repairedTransfer_differentiableAt_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8a9d44b291981192ebf45f367034742ede07b0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73a5f4c2-ed23-b8a6-18e1-74cb0e982a37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:542b3332-c397-c40d-3536-fa594fad512c",
  "kind": "theorem",
  "lexical_name": "repairedTransfer_differentiableAt_of_ne",
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
  "slug": "repairedtransfer-differentiableat-of-ne--0abae1876cb793efe99250da",
  "source": {
    "blob": "d8a9d44b291981192ebf45f367034742ede07b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0abae1876cb793efe99250daa4be0ac621fcc3769a9b885fee20a494b2e27021",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:542b3332-c397-c40d-3536-fa594fad512c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repairedTransfer_differentiableAt_of_ne (z : ℂ) (hz : z ≠ 0)
    (hzp : z ≠ 1 / 2) : DifferentiableAt ℂ repairedTransfer z := by
  have hp : (1 / 2 : ℂ) + z ≠ 1 := by
    intro h
    apply hzp
    linear_combination h
  have hd : DifferentiableAt ℂ
      (fun w : ℂ ↦ Complex.exp (-w) * riemannZeta (1 / 2 + w) * V w) z :=
    ((Complex.differentiable_exp.differentiableAt.comp z differentiableAt_id.neg).mul
      ((differentiableAt_riemannZeta hp).comp z ((differentiableAt_const (1 / 2 : ℂ)).add differentiableAt_id))).mul
        (V_differentiableAt_of_ne_zero z hz)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds hzp] with w hw
  exact repairedTransfer_eq_product w hw

/-- The proved pole limit and punctured differentiability remove the source singularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantc8161415bc5efc0775a2c07fd73ee32d9be51ce130b3bb3fbc3f5d6911d2f783.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8a9d44b291981192ebf45f367034742ede07b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
