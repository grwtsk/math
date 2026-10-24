# memLp_stoppedProcess_of_mem_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13ae1def23dbeff858042e0c0abe282165954fd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 889,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:598cca30-4f32-1988-6c4a-88ab0222caa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:870d5131-dcd6-6da9-3420-e9ade5d2823e",
  "kind": "theorem",
  "lexical_name": "memLp_stoppedProcess_of_mem_finset",
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
  "slug": "memlp-stoppedprocess-of-mem-finset--20d810f0e4acbf0a1deaaeb0",
  "source": {
    "blob": "13ae1def23dbeff858042e0c0abe282165954fd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 889,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20d810f0e4acbf0a1deaaeb0e743cb6da44302a002a2a798691aca52c7383436",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:870d5131-dcd6-6da9-3420-e9ade5d2823e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 889–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memLp_stoppedProcess_of_mem_finset (hτ : IsStoppingTime ℱ τ) (hu : ∀ n, MemLp (u n) p μ)
    (n : ι) {s : Finset ι} (hbdd : ∀ ω, τ ω < n → τ ω ∈ s) : MemLp (stoppedProcess u τ n) p μ := by
  rw [stoppedProcess_eq_of_mem_finset n hbdd]
  refine MemLp.add ?_ ?_
  · exact MemLp.indicator (ℱ.le n {a : Ω | n ≤ τ a} (hτ.measurableSet_ge n)) (hu n)
  · suffices MemLp (fun ω => ∑ i ∈ s with i < n, {a : Ω | τ a = i}.indicator (u i) ω) p μ by
      convert this using 1; ext1 ω; simp only [Finset.sum_apply]
    refine memLp_finset_sum _ fun i _ => MemLp.indicator ?_ (hu i)
    exact ℱ.le i {a : Ω | τ a = i} (hτ.measurableSet_eq i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variantc64ec6eb0aaad112bac562842f08189237bd418b5c45d9464ef903c25230ffcc.lean#L889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ae1def23dbeff858042e0c0abe282165954fd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
