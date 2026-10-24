# V_differentiableAt_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "887ffb60a1988b3fe946bbe3884c96e745ff7f65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8007686-f698-dfcf-4924-ec17592bee9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdd3b447-9de9-54a4-168c-ca7df1bd80a7",
  "kind": "theorem",
  "lexical_name": "V_differentiableAt_of_ne_zero",
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
  "slug": "v-differentiableat-of-ne-zero--e516fa419d60d224e8741892",
  "source": {
    "blob": "887ffb60a1988b3fe946bbe3884c96e745ff7f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 441,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e516fa419d60d224e87418924d72518f167c258b18612e58351da5e77ad7cd65",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdd3b447-9de9-54a4-168c-ca7df1bd80a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem V_differentiableAt_of_ne_zero (z : ℂ) (hz : z ≠ 0) :
    DifferentiableAt ℂ V z := by
  have hd : DifferentiableAt ℂ (fun w : ℂ ↦ (w ^ 2 - 1 / 4) * removedFilter w) z :=
    ((differentiableAt_id.pow 2).sub_const _).mul (removedFilter_differentiableAt z hz)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds hz] with w hw
  exact V_eq_removedFilter w hw

/-- Away from the two formula guards, the repaired product retains its genuine derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdjointExponential/Variant6be0f1845cb33e1a1f2fcb8e2a6f3fde25d54e865245267deac7ed41472a2665.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887ffb60a1988b3fe946bbe3884c96e745ff7f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
