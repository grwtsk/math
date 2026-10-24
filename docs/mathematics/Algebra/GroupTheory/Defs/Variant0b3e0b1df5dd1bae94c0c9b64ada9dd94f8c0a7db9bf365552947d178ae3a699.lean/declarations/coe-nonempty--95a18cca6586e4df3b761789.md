# coe_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb34c4c7-a2e3-eea0-3df7-1383653e4641",
  "kind": "lemma",
  "lexical_name": "coe_nonempty",
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
  "slug": "coe-nonempty--95a18cca6586e4df3b761789",
  "source": {
    "blob": "bdebf3c0fd6936e06c077ff960fc66e6a6b0a09e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 409,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95a18cca6586e4df3b76178992d70ae71c641c0d1d50b5bcf2abba8e61645763",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb34c4c7-a2e3-eea0-3df7-1383653e4641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_nonempty (s : Subgroup G) : (s : Set G).Nonempty := ⟨1, one_mem _⟩

attribute [deprecated OneMemClass.coe_nonempty (since := "2026-04-20")] Subgroup.coe_nonempty
attribute [deprecated ZeroMemClass.coe_nonempty (since := "2026-04-20")] AddSubgroup.coe_nonempty

end Subgroup

namespace Subgroup

variable (H K : Subgroup G)

/-- Copy of a subgroup with a new `carrier` equal to the old one. Useful to fix definitional
equalities. -/
@[to_additive (attr := simps)
      /-- Copy of an additive subgroup with a new `carrier` equal to the old one.
      Useful to fix definitional equalities -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant0b3e0b1df5dd1bae94c0c9b64ada9dd94f8c0a7db9bf365552947d178ae3a699.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdebf3c0fd6936e06c077ff960fc66e6a6b0a09e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
