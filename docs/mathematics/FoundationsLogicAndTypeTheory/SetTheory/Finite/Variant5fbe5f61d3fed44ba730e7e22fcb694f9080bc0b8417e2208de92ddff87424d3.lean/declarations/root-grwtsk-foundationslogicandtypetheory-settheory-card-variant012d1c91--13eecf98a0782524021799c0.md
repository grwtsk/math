# _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.toPartENat_le_natCast_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d0cf544-de3f-1bed-1e75-a8b9ece5ceaa",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.toPartENat_le_natCast_iff",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-settheory-card-variant012d1c91--13eecf98a0782524021799c0",
  "source": {
    "blob": "a06d0488a34998fcd6cb0eb9cf06d52aa11cbfb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13eecf98a0782524021799c07cba5681b145460b943eddf59fae95761653c40e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d0cf544-de3f-1bed-1e75-a8b9ece5ceaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.toPartENat_le_natCast_iff {c : Cardinal} {n : ℕ} :
  toPartENat c ≤ n ↔ c ≤ n := by
  rw [← toPartENat_cast n, toPartENat_le_iff_of_lt_aleph0 (nat_lt_aleph0 n)]
#align cardinal.to_part_enat_le_coe_nat_iff Cardinal.toPartENat_le_natCast_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a06d0488a34998fcd6cb0eb9cf06d52aa11cbfb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
