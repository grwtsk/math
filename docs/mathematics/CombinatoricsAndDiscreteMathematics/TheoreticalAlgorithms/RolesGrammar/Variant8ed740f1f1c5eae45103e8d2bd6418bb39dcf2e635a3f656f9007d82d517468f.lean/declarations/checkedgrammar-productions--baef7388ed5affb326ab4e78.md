# CheckedGrammar.productions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf86b8989b99c0a8e4f8fcadb0a0bb570f28bd50703f0ac0e483288e54f209e2",
  "kind": "def",
  "lexical_name": "CheckedGrammar.productions",
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
  "slug": "checkedgrammar-productions--baef7388ed5affb326ab4e78",
  "source": {
    "blob": "075c4ae45340b14aeb9384ad7ac89e84c5e38d4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baef7388ed5affb326ab4e78d8dcff5c6a171f11912b93a17f5316d89b991e7a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf86b8989b99c0a8e4f8fcadb0a0bb570f28bd50703f0ac0e483288e54f209e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CheckedGrammar.productions {full : CheckedFullDeclaration}
    {algebra : CheckedRoleAlgebra full} (_grammar : CheckedGrammar full algebra) :
    List GrammarProduction := extractGrammarRows full.snapshot.value full.value.roles.table

/-- The exact accepting-role set retained from the checked declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075c4ae45340b14aeb9384ad7ac89e84c5e38d4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
