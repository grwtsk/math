# RuleBuilder.default

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe0c1ef38cff491c00105d7ce63a54f81fe5dc8459dfeb55ef67db64e01a5d54",
  "kind": "def",
  "lexical_name": "RuleBuilder.default",
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
  "slug": "rulebuilder-default--375800e3c1124025642d3f44",
  "source": {
    "blob": "06f0617c1c0c21b0ddf5ff55c3816f79398ba17f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Default/Variant7587041857101f28f6d73a520dcfbb1085984aeb65a2408c42b851ba90505f15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:375800e3c1124025642d3f441ced664511b9745301e967c94a25e91a69940507",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Default/Variant7587041857101f28f6d73a520dcfbb1085984aeb65a2408c42b851ba90505f15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe0c1ef38cff491c00105d7ce63a54f81fe5dc8459dfeb55ef67db64e01a5d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RuleBuilder.default : RuleBuilder := λ input =>
  match input.phase.phase with
  | .safe =>
    constructors input <|>
    tactic input <|>
    apply input <|>
    err "a safe" input
  | .unsafe =>
    constructors input <|>
    tactic input <|>
    apply input <|>
    err "an unsafe" input
  | .norm =>
    constructors input <|>
    tactic input <|>
    simp input <|>
    apply input <|>
    err "a norm" input
where
  err (ruleType : String) : RuleBuilder := λ input =>
    throwError m!"aesop: Unable to interpret '{input.term}' as {ruleType} rule. Try specifying a builder."

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Default/Variant7587041857101f28f6d73a520dcfbb1085984aeb65a2408c42b851ba90505f15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Default/Variant7587041857101f28f6d73a520dcfbb1085984aeb65a2408c42b851ba90505f15.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06f0617c1c0c21b0ddf5ff55c3816f79398ba17f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
