# orderedCancelAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:759a4081054c8d0934cf4fe0f79b0e126f65da79c9c448c8a97979e7c3c80b2a",
  "kind": "instance",
  "lexical_name": "orderedCancelAddCommMonoid",
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
  "slug": "orderedcanceladdcommmonoid--f7e9f492330b9f8986e19e74",
  "source": {
    "blob": "6476262c5d53d0d2d88c33ca20e7b619541e7b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7e9f492330b9f8986e19e74afc6ab6b668e8e7c0e6b68ae7cd9afa4c85f1cf9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:759a4081054c8d0934cf4fe0f79b0e126f65da79c9c448c8a97979e7c3c80b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance orderedCancelAddCommMonoid : OrderedCancelAddCommMonoid NatOrdinal :=
  { NatOrdinal.linearOrder with
    add := (· + ·)
    add_assoc := nadd_assoc
    add_le_add_left := fun a b => add_le_add_left
    le_of_add_le_add_left := fun a b c => le_of_add_le_add_left
    zero := 0
    zero_add := zero_nadd
    add_zero := nadd_zero
    add_comm := nadd_comm }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NaturalOps/Variant59373126627caa7cf2ceaac6a074bc918ce100f2c4892b845c3a8e922195a95a.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6476262c5d53d0d2d88c33ca20e7b619541e7b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
