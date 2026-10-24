# prod_indicator_biUnion_sub_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6df3e15edbf3524eacd37698e558c152b4bab98a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6b0d14d-f8aa-1ff4-03ca-296197c46750",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42eca48a-cca5-d5f5-3bc2-a5a71db781ad",
  "kind": "lemma",
  "lexical_name": "prod_indicator_biUnion_sub_indicator",
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
  "slug": "prod-indicator-biunion-sub-indicator--7c60b3199dab95a90a5ac8b8",
  "source": {
    "blob": "6df3e15edbf3524eacd37698e558c152b4bab98a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c60b3199dab95a90a5ac8b8b8c9f7a13e6e17251b4cac878b9e4f5906edba3b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42eca48a-cca5-d5f5-3bc2-a5a71db781ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_indicator_biUnion_sub_indicator (hs : s.Nonempty) (S : ι → Finset α) (a : α) :
    ∏ i ∈ s, (Set.indicator (s.biUnion S) 1 a - Set.indicator (S i) 1 a) = (0 : ℤ) := by
  by_cases ha : a ∈ s.biUnion S
  · obtain ⟨i, hi, ha⟩ := mem_biUnion.1 ha
    exact prod_eq_zero hi <| by simp [*, -coe_biUnion]
  · obtain ⟨i, hi⟩ := hs
    have ha : a ∉ S i := fun h ↦ ha <| subset_biUnion_of_mem _ hi h
    exact prod_eq_zero hi <| by simp [*, -coe_biUnion]

/-- **Inclusion-exclusion principle** for the sum of a function over a union.

The sum of a function `f` over the union of the `S i` over `i ∈ s` is the alternating sum of the
sums of `f` over the intersections of the `S i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df3e15edbf3524eacd37698e558c152b4bab98a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
