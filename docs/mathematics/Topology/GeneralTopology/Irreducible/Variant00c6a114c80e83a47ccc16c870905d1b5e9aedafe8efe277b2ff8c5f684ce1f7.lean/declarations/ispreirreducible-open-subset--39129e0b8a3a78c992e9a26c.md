# IsPreirreducible.open_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d91e2a1-fe65-40c9-2faf-90dbf3e5d08c",
  "kind": "theorem",
  "lexical_name": "IsPreirreducible.open_subset",
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
  "slug": "ispreirreducible-open-subset--39129e0b8a3a78c992e9a26c",
  "source": {
    "blob": "5d240464803fa57793a1ed4004749ce28e34ecf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 408,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39129e0b8a3a78c992e9a26c241143a88bf2b4e23233d661bd2eba27cf5f488b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d91e2a1-fe65-40c9-2faf-90dbf3e5d08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreirreducible.open_subset {U : Set X} (ht : IsPreirreducible t) (hU : IsOpen U)
    (hU' : U ⊆ t) : IsPreirreducible U :=
  U.eq_empty_or_nonempty.elim (fun h => h.symm ▸ isPreirreducible_empty) fun h =>
    (ht.subset_irreducible h hU (fun _ => id) hU').2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d240464803fa57793a1ed4004749ce28e34ecf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
