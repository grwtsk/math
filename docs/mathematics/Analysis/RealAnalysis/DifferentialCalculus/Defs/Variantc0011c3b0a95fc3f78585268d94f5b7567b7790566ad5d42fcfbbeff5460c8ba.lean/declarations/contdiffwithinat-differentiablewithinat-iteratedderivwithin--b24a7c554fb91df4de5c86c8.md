# ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66fe7dd088c3064d4a3dcc63ddece73e55b7180e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c879118-412f-7f8c-01e3-b4c30ae81414",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d5561ea-fe54-3563-6fde-7dec68b43d70",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin",
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
  "slug": "contdiffwithinat-differentiablewithinat-iteratedderivwithin--b24a7c554fb91df4de5c86c8",
  "source": {
    "blob": "66fe7dd088c3064d4a3dcc63ddece73e55b7180e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b24a7c554fb91df4de5c86c8fe6d97ce731528d8f7a2ac74e69b110dc853ccf9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d5561ea-fe54-3563-6fde-7dec68b43d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin {n : WithTop ℕ∞} {m : ℕ}
    (h : ContDiffWithinAt 𝕜 n f s x) (hmn : m < n) (hs : UniqueDiffOn 𝕜 (insert x s)) :
    DifferentiableWithinAt 𝕜 (iteratedDerivWithin m f s) s x := by
  simpa only [iteratedDerivWithin_eq_equiv_comp,
    LinearIsometryEquiv.comp_differentiableWithinAt_iff] using
    h.differentiableWithinAt_iteratedFDerivWithin hmn hs

/-- On a set with unique derivatives, a `C^n` function has derivatives less than `n` which are
differentiable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66fe7dd088c3064d4a3dcc63ddece73e55b7180e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
