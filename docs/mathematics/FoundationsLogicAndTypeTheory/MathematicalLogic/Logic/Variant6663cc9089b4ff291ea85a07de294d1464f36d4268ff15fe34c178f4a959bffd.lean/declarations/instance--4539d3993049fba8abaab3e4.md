# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b30cd3ce979b684a7ddb90613a08eb68238b25fa93e2c1f65c8fb4c20dbda01",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4539d3993049fba8abaab3e4",
  "source": {
    "blob": "87ef4c840d5a7b5d91a688e6a12bea8eaf809d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 818,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant6663cc9089b4ff291ea85a07de294d1464f36d4268ff15fe34c178f4a959bffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4539d3993049fba8abaab3e410f24a8c88bb3ae3f3acdb1e79857da9a6ad67b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant6663cc9089b4ff291ea85a07de294d1464f36d4268ff15fe34c178f4a959bffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b30cd3ce979b684a7ddb90613a08eb68238b25fa93e2c1f65c8fb4c20dbda01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {α β} [Inhabited β] : Inhabited (PSum α β) := ⟨PSum.inr default⟩

-- TODO(Mario): profile first, this is a dangerous instance
-- instance (priority := 10) {α} [Subsingleton α] : DecidableEq α
--   | a, b => isTrue (Subsingleton.elim a b)

-- @[simp] -- TODO(Mario): profile
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant6663cc9089b4ff291ea85a07de294d1464f36d4268ff15fe34c178f4a959bffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant6663cc9089b4ff291ea85a07de294d1464f36d4268ff15fe34c178f4a959bffd.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ef4c840d5a7b5d91a688e6a12bea8eaf809d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
