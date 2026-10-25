# Formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ac00ba50694ae0d4e08fcd996854dd6c4d9a09d01aecf8085c37b609dfa4db5",
  "kind": "inductive",
  "lexical_name": "Formula",
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
  "slug": "formula--879d94c7abbcce05541f4c3c",
  "source": {
    "blob": "c14a57b3b335d3f67616d43e8351cfac43f7aa42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1205,
    "line": 1198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant6ac0366413320d215af3ee298b8581816335eec782c0100f97202279706679cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:879d94c7abbcce05541f4c3c3006f1211ffae067b202b22b5ecc0a2231f0d27a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant6ac0366413320d215af3ee298b8581816335eec782c0100f97202279706679cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ac00ba50694ae0d4e08fcd996854dd6c4d9a09d01aecf8085c37b609dfa4db5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1198–1205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Formula (α : Type u) where
  | atom : α → Formula α
  | bot : Formula α
  | imp : Formula α → Formula α → Formula α
  deriving DecidableEq
namespace Formula
variable {α : Type u}
/-- Propositional negation encoded as implication to falsity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant6ac0366413320d215af3ee298b8581816335eec782c0100f97202279706679cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant6ac0366413320d215af3ee298b8581816335eec782c0100f97202279706679cb.lean#L1198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c14a57b3b335d3f67616d43e8351cfac43f7aa42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
