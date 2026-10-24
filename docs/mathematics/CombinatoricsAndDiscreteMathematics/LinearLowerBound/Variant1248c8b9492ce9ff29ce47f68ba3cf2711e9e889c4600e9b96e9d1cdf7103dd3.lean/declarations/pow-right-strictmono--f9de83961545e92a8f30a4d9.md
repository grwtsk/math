# pow_right_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edf083bfafe260a493a471f90f2c87e2ab50d86c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8316c300-423e-0810-0b4b-3b27d51d1f00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e32ff66-0a17-e28a-6fd4-4137322f48a6",
  "kind": "lemma",
  "lexical_name": "pow_right_strictMono",
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
  "slug": "pow-right-strictmono--f9de83961545e92a8f30a4d9",
  "source": {
    "blob": "edf083bfafe260a493a471f90f2c87e2ab50d86c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9de83961545e92a8f30a4d9ce8ceb1d1100bc7990dc679c1075f92328c7b954",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e32ff66-0a17-e28a-6fd4-4137322f48a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_right_strictMono (hX₁ : 1 ∈ X) (hXclosure : (closure (X : Set G) : Set G).Infinite) :
    StrictMono fun n ↦ X ^ n := by
  obtain rfl | hX := eq_singleton_or_nontrivial hX₁
  · simp [closure_singleton_one] at hXclosure
  have h n : (X ^ (n - 1) : Set G) ≠ closure (X : Set G) :=
    fun h ↦ by simp [← h, ← coe_pow] at hXclosure
  simpa [h] using pow_right_strictMonoOn hX₁ hX

/-- The growth of a set generating an infinite group is at least linear. -/
@[to_additive "The growth of a set generating an infinite group is at least linear."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf083bfafe260a493a471f90f2c87e2ab50d86c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
