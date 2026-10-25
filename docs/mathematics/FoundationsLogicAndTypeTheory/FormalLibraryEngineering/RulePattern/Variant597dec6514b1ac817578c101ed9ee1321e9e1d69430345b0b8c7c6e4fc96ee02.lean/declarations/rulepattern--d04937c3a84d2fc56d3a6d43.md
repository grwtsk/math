# RulePattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:246ba5f5111df51983fc5775d9a715c66ca1b745eb58e401d49b317573f786b2",
  "kind": "structure",
  "lexical_name": "RulePattern",
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
  "slug": "rulepattern--d04937c3a84d2fc56d3a6d43",
  "source": {
    "blob": "165715740abab801011d5387629299eed80c996c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d04937c3a84d2fc56d3a6d43de6c1ac76be9678ea250419313e55f523412c1f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:246ba5f5111df51983fc5775d9a715c66ca1b745eb58e401d49b317573f786b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RulePattern where
  /--
  An expression of the form `λ y₀ ... yₖ, p` representing the
  pattern.
  -/
  pattern : AbstractMVarsResult
  /--
  A partial map from the index set `{0, ..., n-1}` into `{0, ..., k-1}`. If
  `argMap[i] = j`, this indicates that when matching against the rule type, the
  instantiation `tⱼ` of `yⱼ` should be substituted for `xᵢ`.
  -/
  argMap : Array (Option Nat)
  /--
  A partial map from the level metavariables occurring in the rule to the
  pattern's level params.
  -/
  levelArgMap : Array (Option Nat)
  /--
  Discrimination tree keys for `p`.
  -/
  discrTreeKeys : Array DiscrTree.Key
  deriving Inhabited

namespace RulePattern

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `165715740abab801011d5387629299eed80c996c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
