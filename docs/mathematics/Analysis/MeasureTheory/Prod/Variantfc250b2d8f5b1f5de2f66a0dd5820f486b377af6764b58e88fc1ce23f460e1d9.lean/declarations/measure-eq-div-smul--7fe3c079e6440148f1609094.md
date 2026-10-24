# measure_eq_div_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e823621fb123d95afa5d3c08c5cc347e02649690",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b450c2ae-037c-dff2-8085-0832f21dd5a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb4f6054-53b8-9fcf-3ca5-dba30875a75c",
  "kind": "theorem",
  "lexical_name": "measure_eq_div_smul",
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
  "slug": "measure-eq-div-smul--7fe3c079e6440148f1609094",
  "source": {
    "blob": "e823621fb123d95afa5d3c08c5cc347e02649690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 331,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fe3c079e6440148f1609094b8ea14e38f206a72423c10a97b82c6e8d387492a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb4f6054-53b8-9fcf-3ca5-dba30875a75c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_div_smul (h2s : ν' s ≠ 0) (h3s : ν' s ≠ ∞) :
    μ' = (μ' s / ν' s) • ν' := by
  ext1 t -
  rw [Measure.smul_apply, smul_eq_mul, mul_comm, ← mul_div_assoc, mul_comm,
    measure_mul_measure_eq μ' ν' s t h2s h3s, mul_div_assoc, ENNReal.mul_div_cancel h2s h3s]

end SigmaFinite

end LeftInvariant

section RightInvariant

@[to_additive measurePreserving_prod_add_right]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e823621fb123d95afa5d3c08c5cc347e02649690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
