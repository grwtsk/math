# count_replicate_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec33c407-a7e7-8915-ae56-b6b3799b426b",
  "kind": "theorem",
  "lexical_name": "count_replicate_self",
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
  "slug": "count-replicate-self--c24033f3cc77fea6cca9baaa",
  "source": {
    "blob": "ec84f01a1b1adcf70484e95d8e925a34266c5dff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c24033f3cc77fea6cca9baaaa90e5dca9e75d93460a0ed9afb28cdb9563b6d34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec33c407-a7e7-8915-ae56-b6b3799b426b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem count_replicate_self (a : α) (n : Nat) : count a (replicate n a) = n :=
  (count_eq_length.2 <| fun _ h => (eq_of_mem_replicate h).symm).trans (length_replicate ..)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Count/Variant7d211d55b0c51fbe1b32075d84b042ea1be2f008446fd3bde428d749d260caba.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec84f01a1b1adcf70484e95d8e925a34266c5dff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
