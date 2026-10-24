# toSubmonoid_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f8bbc92-fa88-7e55-5df0-a12709a0543e",
  "kind": "theorem",
  "lexical_name": "toSubmonoid_inj",
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
  "slug": "tosubmonoid-inj--6066f54b8cca1d1970ec487e",
  "source": {
    "blob": "bdebf3c0fd6936e06c077ff960fc66e6a6b0a09e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 393,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6066f54b8cca1d1970ec487e701f777e5947b529558b866c68a636ac96e0034e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f8bbc92-fa88-7e55-5df0-a12709a0543e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSubmonoid_inj {p q : Subgroup G} : p.toSubmonoid = q.toSubmonoid ↔ p = q :=
  toSubmonoid_injective.eq_iff

@[to_additive (attr := mono)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdebf3c0fd6936e06c077ff960fc66e6a6b0a09e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
