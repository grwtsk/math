# squaredNorm_descend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef75925a-eb5a-6b9c-0e8a-82e081638bd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1724763e-1620-54c6-2c34-8a1f5565e6dc",
  "kind": "theorem",
  "lexical_name": "squaredNorm_descend",
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
  "slug": "squarednorm-descend--779ac67d6887f419e699f077",
  "source": {
    "blob": "e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:779ac67d6887f419e699f07754bbeafc79df4782064599db7a7f8a0781be55bd",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1724763e-1620-54c6-2c34-8a1f5565e6dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squaredNorm_descend (A : CompatibleOperators C) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    M.squaredNorm hOpen x (A.descend hOpen x a) =
      Complex.normSq (coefficient A (D.select x) ⟨x.1, D.select_mem x⟩) *
        M.squaredNorm hOpen x a := by
  change M.atPoint x * Complex.normSq (A.localOp (D.select x) ⟨x.1, D.select_mem x⟩ a) = _
  rw [localOp_eq_mul, Complex.normSq_mul]
  change M.atPoint x * (_ * Complex.normSq a) = _ * (M.atPoint x * Complex.normSq a)
  ring

/-- Holomorphic preservation is precisely a condition on the scalar coefficient functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLineAdjoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLineAdjoint.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e250a6c31f9f0d18f51b1de5f2c4ba7b1474ca14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
