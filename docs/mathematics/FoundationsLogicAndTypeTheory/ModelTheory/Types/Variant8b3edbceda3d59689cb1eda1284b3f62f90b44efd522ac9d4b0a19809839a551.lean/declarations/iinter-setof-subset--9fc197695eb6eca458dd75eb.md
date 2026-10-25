# iInter_setOf_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25c08177-e1dd-7393-eb40-28428dfc82fc",
  "kind": "theorem",
  "lexical_name": "iInter_setOf_subset",
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
  "slug": "iinter-setof-subset--9fc197695eb6eca458dd75eb",
  "source": {
    "blob": "cb0aaba30b8512ee1dc85f0e6534b22e686089d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fc197695eb6eca458dd75eb053a40f80f006b7c57b9e1c7599a73bb8b2db92d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25c08177-e1dd-7393-eb40-28428dfc82fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInter_setOf_subset {ι : Type*} (S : ι → L[[α]].Theory) :
    ⋂ i : ι, { p : T.CompleteType α | S i ⊆ p } =
      { p : T.CompleteType α | ⋃ i : ι, S i ⊆ p } := by
  ext
  simp only [mem_iInter, mem_setOf_eq, iUnion_subset_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0aaba30b8512ee1dc85f0e6534b22e686089d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
