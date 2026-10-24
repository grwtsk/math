# tmSinc_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e970205ff06cf1cf82c7132d8d4f93251403f29c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 637,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41170dae-4138-d938-93fc-43378e34458d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee4e4668-5f3f-6978-c480-ff0462c10309",
  "kind": "theorem",
  "lexical_name": "tmSinc_correct",
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
  "slug": "tmsinc-correct--dbbf8074fcb88ed0b941eb69",
  "source": {
    "blob": "e970205ff06cf1cf82c7132d8d4f93251403f29c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 637,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbbf8074fcb88ed0b941eb69aca72e9af06a2f6bc7e27f5b3fd757c2aeba2af6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4e4668-5f3f-6978-c480-ff0462c10309`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmSinc_correct (J : IntervalRat) (n : ℕ) :
    ∀ z : ℝ, z ∈ J → Real.sinc z ∈ (tmSinc J n).evalSet z := by
  intro z hz
  simp only [tmSinc, evalSet, Set.mem_setOf_eq]
  refine ⟨Real.sinc z, ?_, ?_⟩
  · simp only [IntervalRat.mem_def, Rat.cast_neg]
    have hs : |Real.sinc z| ≤ (1 : ℝ) := Real.abs_sinc_le_one z
    simpa using (abs_le.mp hs)
  · simp

end TaylorModel

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e970205ff06cf1cf82c7132d8d4f93251403f29c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
