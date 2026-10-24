# leftInv_removeZero

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
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b267650e-2048-9949-8a4b-ecd99aa9c6bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96dc98c1-a9a6-b989-d3e9-377a1fbd05a3",
  "kind": "theorem",
  "lexical_name": "leftInv_removeZero",
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
  "slug": "leftinv-removezero--aad2f357534f0945c8d105af",
  "source": {
    "blob": "4002faa92ad69e93264c02064e7a1f74a0447741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 80,
    "path": "GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad2f357534f0945c8d105af0586a25ead50b67c7752eb0c91d90157ce1aceb9",
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

Occurrence: `result:96dc98c1-a9a6-b989-d3e9-377a1fbd05a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftInv_removeZero (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F) :
    p.removeZero.leftInv i = p.leftInv i := by
  ext1 n
  induction' n using Nat.strongRec' with n IH
  match n with
  | 0 => simp -- if one replaces `simp` with `refl`, the proof times out in the kernel.
  | 1 => simp -- TODO: why?
  | n + 2 =>
    simp only [leftInv, neg_inj]
    refine' Finset.sum_congr rfl fun c cuniv => _
    rcases c with ⟨c, hc⟩
    ext v
    dsimp
    simp [IH _ hc]
#align formal_multilinear_series.left_inv_remove_zero FormalMultilinearSeries.leftInv_removeZero

/-- The left inverse to a formal multilinear series is indeed a left inverse, provided its linear
term is invertible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variantda4d7d448ec425207ed40552180d3e9922a3eb3d15473981d073c4761be76cd8.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4002faa92ad69e93264c02064e7a1f74a0447741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
