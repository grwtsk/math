# le_sum_distinctPairs_edgeDensity_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb7c261c-0d83-a780-27d1-0f1e3316e7cf",
  "kind": "lemma",
  "lexical_name": "le_sum_distinctPairs_edgeDensity_sq",
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
  "slug": "le-sum-distinctpairs-edgedensity-sq--b662bfa2aa430fd3057b32b8",
  "source": {
    "blob": "d4379be155c7ef01f6963ad728fd7b65052b460e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b662bfa2aa430fd3057b32b87a9c1e569f551f8ee497a7cdc2d3b67b33f0923e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb7c261c-0d83-a780-27d1-0f1e3316e7cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_sum_distinctPairs_edgeDensity_sq (x : {i // i ∈ P.parts.offDiag}) (hε₁ : ε ≤ 1)
    (hPα : #P.parts * 16 ^ #P.parts ≤ card α) (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5) :
    (G.edgeDensity x.1.1 x.1.2 : ℝ) ^ 2 +
      ((if G.IsUniform ε x.1.1 x.1.2 then 0 else ε ^ 4 / 3) - ε ^ 5 / 25) ≤
    (∑ i ∈ distinctPairs hP G ε x, G.edgeDensity i.1 i.2 ^ 2 : ℝ) / 16 ^ #P.parts := by
  rw [distinctPairs, ← add_sub_assoc, add_sub_right_comm]
  split_ifs with h
  · rw [add_zero]
    exact edgeDensity_chunk_uniform hPα hPε _ _
  · exact edgeDensity_chunk_not_uniform hPα hPε hε₁ (mem_offDiag.1 x.2).2.2 h

/-- The increment partition has energy greater than the original one by a known fixed amount. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4379be155c7ef01f6963ad728fd7b65052b460e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
