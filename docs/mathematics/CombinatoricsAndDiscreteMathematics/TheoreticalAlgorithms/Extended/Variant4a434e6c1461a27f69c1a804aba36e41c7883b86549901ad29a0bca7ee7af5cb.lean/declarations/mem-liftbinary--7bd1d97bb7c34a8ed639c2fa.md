# mem_liftBinary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 393,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c8aece7-5a84-e90d-bb0c-6ed3c1b040c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9b60dc3-4134-3516-8cc4-545c706c0880",
  "kind": "theorem",
  "lexical_name": "mem_liftBinary",
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
  "slug": "mem-liftbinary--7bd1d97bb7c34a8ed639c2fa",
  "source": {
    "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 393,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bd1d97bb7c34a8ed639c2faccc228a45fab90aa28567c614d25e241c1c6ac64",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9b60dc3-4134-3516-8cc4-545c706c0880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_liftBinary {f : ℝ → ℝ → ℝ} {op : IntervalRat → IntervalRat → IntervalRat}
    (hop : ∀ x y I J, x ∈ I → y ∈ J → f x y ∈ op I J)
    {x y : ℝ} {E₁ E₂ : ExtendedInterval} (hx : x ∈ E₁) (hy : y ∈ E₂) :
    f x y ∈ liftBinary op E₁ E₂ := by
  simp only [ExtendedInterval.mem_def, liftBinary] at *
  obtain ⟨I, hI_mem, hx_in_I⟩ := hx
  obtain ⟨J, hJ_mem, hy_in_J⟩ := hy
  refine ⟨op I J, ?_, hop x y I J hx_in_I hy_in_J⟩
  simp only [List.mem_flatMap, List.mem_map]
  exact ⟨I, hI_mem, J, hJ_mem, rfl⟩

/-! ## Extended Interval Evaluator -/

/-- Configuration for extended interval evaluation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96d0904b8789741ec7593dd0fed34aec5dc2b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
