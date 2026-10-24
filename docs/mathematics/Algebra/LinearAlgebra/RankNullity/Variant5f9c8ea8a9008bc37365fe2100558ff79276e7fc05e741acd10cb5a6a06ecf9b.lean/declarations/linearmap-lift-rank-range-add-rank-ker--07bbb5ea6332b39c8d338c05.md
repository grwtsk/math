# LinearMap.lift_rank_range_add_rank_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "090461cd2ae471d4b186902bab7ff0621c601a54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9edc9450-7175-68f6-8aad-e6295ee47e1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:538f7781-66df-47cc-8c18-f864b7f8ee6e",
  "kind": "theorem",
  "lexical_name": "LinearMap.lift_rank_range_add_rank_ker",
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
  "slug": "linearmap-lift-rank-range-add-rank-ker--07bbb5ea6332b39c8d338c05",
  "source": {
    "blob": "090461cd2ae471d4b186902bab7ff0621c601a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07bbb5ea6332b39c8d338c057392cb34039538affe8b21e2dde00b05bf1fe29f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:538f7781-66df-47cc-8c18-f864b7f8ee6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.lift_rank_range_add_rank_ker (f : M →ₗ[R] M') :
    lift.{u} (Module.rank R (LinearMap.range f)) + lift.{v} (Module.rank R (LinearMap.ker f)) =
      lift.{v} (Module.rank R M) := by
  haveI := fun p : Submodule R M => Classical.decEq (M ⧸ p)
  rw [← f.quotKerEquivRange.lift_rank_eq, ← lift_add, rank_quotient_add_rank]

/-- The **rank-nullity theorem** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant5f9c8ea8a9008bc37365fe2100558ff79276e7fc05e741acd10cb5a6a06ecf9b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090461cd2ae471d4b186902bab7ff0621c601a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
