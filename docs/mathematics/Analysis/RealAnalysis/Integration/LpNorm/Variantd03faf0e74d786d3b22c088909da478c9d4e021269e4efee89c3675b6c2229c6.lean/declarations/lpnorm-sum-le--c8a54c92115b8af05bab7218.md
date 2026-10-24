# lpNorm_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1368cc30d77173ce8b9f2649c969f55cd3de9ea6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:522713ce-95c5-a99b-9993-361ec0bdf3d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:724488cf-4926-78a3-f653-0c890181131b",
  "kind": "lemma",
  "lexical_name": "lpNorm_sum_le",
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
  "slug": "lpnorm-sum-le--c8a54c92115b8af05bab7218",
  "source": {
    "blob": "1368cc30d77173ce8b9f2649c969f55cd3de9ea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8a54c92115b8af05bab72185904d1036f2af04bb3ed7352001bcc41f7a9e8fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:724488cf-4926-78a3-f653-0c890181131b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lpNorm_sum_le {ι : Type*} {s : Finset ι} {f : ι → α → E} (hf : ∀ i ∈ s, MemLp (f i) p μ)
    (hp : 1 ≤ p) : lpNorm (∑ i ∈ s, f i) p μ ≤ ∑ i ∈ s, lpNorm (f i) p μ := by
  rw [← Finset.sum_congr rfl fun i hi ↦ toReal_eLpNorm,
    ← ENNReal.toReal_sum fun i hi ↦ (hf i hi).eLpNorm_ne_top, ← toReal_eLpNorm]
  grw [eLpNorm_sum_le hp]
  simpa using fun i hi ↦ (hf i hi).eLpNorm_ne_top

-- TODO: Golf using `eLpNorm_expect_le` once it exists
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpNorm/Variantd03faf0e74d786d3b22c088909da478c9d4e021269e4efee89c3675b6c2229c6.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1368cc30d77173ce8b9f2649c969f55cd3de9ea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
