# reflTransGen_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c162f1bf98823ff4882258778cff58070c8e6b2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcce5ad0b3d45e8babcf4333b5e22dc53133cd30bb5848465ee76bd8ce28f939.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:086779f4-81dc-7e48-8bcd-6b9afbe1df87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45aa52f5-1124-c502-8c0c-dbaae6edaa94",
  "kind": "theorem",
  "lexical_name": "reflTransGen_eq_self",
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
  "slug": "refltransgen-eq-self--bbaa6bd29c2e95987e036d38",
  "source": {
    "blob": "c162f1bf98823ff4882258778cff58070c8e6b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 552,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variantdcce5ad0b3d45e8babcf4333b5e22dc53133cd30bb5848465ee76bd8ce28f939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbaa6bd29c2e95987e036d389422c43a2a9564228e28be2fa9ccb7ac8954ce16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variantdcce5ad0b3d45e8babcf4333b5e22dc53133cd30bb5848465ee76bd8ce28f939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45aa52f5-1124-c502-8c0c-dbaae6edaa94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflTransGen_eq_self (refl : Reflexive r) (trans : Transitive r) : ReflTransGen r = r :=
  funext fun a ↦ funext fun b ↦ propext <|
    ⟨fun h ↦ by
      induction' h with b c _ h₂ IH
      · apply refl
      · exact trans IH h₂, single⟩
#align relation.refl_trans_gen_eq_self Relation.reflTransGen_eq_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variantdcce5ad0b3d45e8babcf4333b5e22dc53133cd30bb5848465ee76bd8ce28f939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variantdcce5ad0b3d45e8babcf4333b5e22dc53133cd30bb5848465ee76bd8ce28f939.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c162f1bf98823ff4882258778cff58070c8e6b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
