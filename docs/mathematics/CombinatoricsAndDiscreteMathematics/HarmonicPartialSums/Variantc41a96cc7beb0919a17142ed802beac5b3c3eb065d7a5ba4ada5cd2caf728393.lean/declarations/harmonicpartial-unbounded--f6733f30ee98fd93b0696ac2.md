# harmonicPartial_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f167680ccea32222ca2214be2a611f05d9cf27ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:780e9351-fbc2-e11a-3702-bfff58c7dfcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9c3bd7e-59cb-91f2-8d67-6f6fb9e75f31",
  "kind": "theorem",
  "lexical_name": "harmonicPartial_unbounded",
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
  "slug": "harmonicpartial-unbounded--f6733f30ee98fd93b0696ac2",
  "source": {
    "blob": "f167680ccea32222ca2214be2a611f05d9cf27ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6733f30ee98fd93b0696ac2cdc861034dcfe63c671f53832c5d66f287cbea3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9c3bd7e-59cb-91f2-8d67-6f6fb9e75f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicPartial_unbounded :
    ∀ B : Real, ∃ N : Nat, B ≤ harmonicPartial N := by
  intro B
  have ht := Real.tendsto_sum_range_one_div_nat_succ_atTop
  rcases (Filter.eventually_atTop.mp (ht.eventually_ge_atTop B)) with ⟨N, hN⟩
  refine ⟨N, ?_⟩
  have h := hN N le_rfl
  simpa [harmonicPartial_eq_range_sum N] using h

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f167680ccea32222ca2214be2a611f05d9cf27ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
