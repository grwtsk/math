# instIsOrderedAddMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c48ce8790be5bfa08eb91f46498ae686242e0c1f35f5eedebb7a39bd12bfbc2b",
  "kind": "instance",
  "lexical_name": "instIsOrderedAddMonoid",
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
  "slug": "instisorderedaddmonoid--f224e8b0dab2ec7472aa888e",
  "source": {
    "blob": "f875f88aac8cfe471bf5e7919d5e57b6c0b08982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 27,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f224e8b0dab2ec7472aa888e6898b96322d38cb4286150dbcdc2b9a63d42c508",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c48ce8790be5bfa08eb91f46498ae686242e0c1f35f5eedebb7a39bd12bfbc2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsOrderedAddMonoid : IsOrderedAddMonoid ℚ where
  add_le_add_left := fun _ _ ab _ => Rat.add_le_add_left.2 ab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variantf9c1e1f0b9a8bcb4b7f491ba55ce2cf646bf50d16a60d4c952d226206dc15b4a.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f875f88aac8cfe471bf5e7919d5e57b6c0b08982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
