# closedBall_inv_subset_polar_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f2b31d986481926d83161dbc7e0d64187528cb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8225e2b-6a04-349f-61b3-88294d5f7039",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51484556-125b-3825-fc43-346160c85f0b",
  "kind": "theorem",
  "lexical_name": "closedBall_inv_subset_polar_closedBall",
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
  "slug": "closedball-inv-subset-polar-closedball--e010a50ba98a3a88ed14c93d",
  "source": {
    "blob": "2f2b31d986481926d83161dbc7e0d64187528cb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e010a50ba98a3a88ed14c93d1c0e8cac63abac4c795b027b4cf5f4467c6a7f92",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51484556-125b-3825-fc43-346160c85f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_inv_subset_polar_closedBall {r : ℝ} :
    closedBall (0 : StrongDual 𝕜 E) r⁻¹ ⊆ StrongDual.polar 𝕜 (closedBall (0 : E) r) :=
  fun x' hx' x hx =>
  calc
    ‖x' x‖ ≤ ‖x'‖ * ‖x‖ := x'.le_opNorm x
    _ ≤ r⁻¹ * r :=
      (mul_le_mul (mem_closedBall_zero_iff.1 hx') (mem_closedBall_zero_iff.1 hx) (norm_nonneg _)
        (dist_nonneg.trans hx'))
    _ = r / r := inv_mul_eq_div _ _
    _ ≤ 1 := div_self_le_one r

/-- The `polar` of closed ball in a normed space `E` is the closed ball of the dual with inverse
radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant69c95f25bae3cefca0480b8e4551e489827e0b9b65ba1cea6d62b9c68fe91789.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2b31d986481926d83161dbc7e0d64187528cb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
