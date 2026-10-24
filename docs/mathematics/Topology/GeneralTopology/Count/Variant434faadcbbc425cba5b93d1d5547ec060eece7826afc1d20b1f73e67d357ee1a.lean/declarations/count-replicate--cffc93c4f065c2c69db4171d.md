# count_replicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:843c2ea3-11bb-4c2f-a435-eb74d2014aa0",
  "kind": "theorem",
  "lexical_name": "count_replicate",
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
  "slug": "count-replicate--cffc93c4f065c2c69db4171d",
  "source": {
    "blob": "f3989d750056cd243f8dd8d48f0784f8954f4388",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 368,
    "path": "GRWTSK/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cffc93c4f065c2c69db4171dbd8c5b96e3dc0e398d64f82ab95ec2904c0199d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:843c2ea3-11bb-4c2f-a435-eb74d2014aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem count_replicate {a b : α} {n : Nat} : count a (replicate n b) = if b == a then n else 0 := by
  split <;> (rename_i h; simp only [beq_iff_eq] at h)
  · exact ‹b = a› ▸ count_replicate_self ..
  · exact count_eq_zero.2 <| mt eq_of_mem_replicate (Ne.symm h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Count/Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3989d750056cd243f8dd8d48f0784f8954f4388` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
