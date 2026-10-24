# ncard_block_mul_ncard_orbit_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f25745c-0ff1-4faa-878e-98d0471afb06",
  "kind": "theorem",
  "lexical_name": "ncard_block_mul_ncard_orbit_eq",
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
  "slug": "ncard-block-mul-ncard-orbit-eq--740efa69bd00b96285a152fb",
  "source": {
    "blob": "bca0d1f038cd60072528a4a505ef572dad1f7c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 691,
    "path": "GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740efa69bd00b96285a152fb6e5196965d6adf41cce6dcdbd6ef0819377b2e7b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f25745c-0ff1-4faa-878e-98d0471afb06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ncard_block_mul_ncard_orbit_eq (hB : IsBlock G B) (hB_ne : B.Nonempty) :
    Set.ncard B * Set.ncard (orbit G B) = Nat.card X := by
  obtain ⟨x, hx⟩ := hB_ne
  rw [ncard_block_eq_relindex hB hx, ← index_stabilizer,
      Subgroup.relindex_mul_index (hB.stabilizer_le hx), index_stabilizer_of_transitive]

/-- The cardinality of a block divides the cardinality of the ambient type -/
@[to_additive "The cardinality of a block divides the cardinality of the ambient type"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Blocks/Variantcfbccf611b26e2040bbfd661bd50d20eacec53b2d07ed92f29cf864da9e64bd9.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca0d1f038cd60072528a4a505ef572dad1f7c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
