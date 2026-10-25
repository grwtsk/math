# BaseRuleSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95a8976507eaa83532dc3a12a1f279106250ee3aad85617da1055f53ddd94d49",
  "kind": "structure",
  "lexical_name": "BaseRuleSet",
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
  "slug": "baseruleset--968dab320b03cdc79fd2214d",
  "source": {
    "blob": "1069d357ec7c206dbbad9cc19842067e269ea8dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:968dab320b03cdc79fd2214dd1869e6c72ec6c58e26b19872fa651c9f6064eae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95a8976507eaa83532dc3a12a1f279106250ee3aad85617da1055f53ddd94d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BaseRuleSet where
  /--
  Normalisation rules registered in this rule set.
  -/
  normRules : Index NormRuleInfo
  /--
  Unsafe rules registered in this rule set.
  -/
  unsafeRules : Index UnsafeRuleInfo
  /--
  Safe rules registered in this rule set.
  -/
  safeRules : Index SafeRuleInfo
  /--
  Rules for the builtin unfold rule. A pair `(decl, unfoldThm?)` in this map
  represents a declaration `decl` which should be unfolded. `unfoldThm?` should
  be the output of `getUnfoldEqnFor? decl` and is cached here for efficiency.
  -/
  -- TODO Don't cache equation name; this may lead to bugs and the performance
  -- cost is negligible.
  unfoldRules : PHashMap Name (Option Name)
  /--
  Forward rules. There's a special procedure for applying forward rules, so we
  don't store them in the regular indices.
  -/
  forwardRules : ForwardIndex
  /-- The names of all rules in `forwardRules`. -/
  -- HACK to be removed once we switch fully to stateful forward reasoning.
  forwardRuleNames : PHashSet RuleName
  /--
  An index for the rule patterns associated with rules contained in this rule
  set. When rules are removed from the rule set, their patterns are not removed
  from this index.
  -/
  rulePatterns : RulePatternIndex
  /--
  The set of rules that were erased from `normRules`, `unsafeRules`, `safeRules`
  and `forwardRules`. When we erase a rule which is present in any of these four
  indices, the rule is not removed from the indices but just added to this set.
  By contrast, when we erase a rule from `unfoldRules`, we actually delete it.
  -/
  erased : PHashSet RuleName
  /--
  A cache of the names of all rules registered in this rule set. Invariant:
  `ruleNames` contains exactly the names of the rules present in `normRules`,
  `unsafeRules`, `safeRules`, `forwardRules` and `unfoldRules` and not present
  in `erased`. We use this cache (a) to quickly determine whether a rule is
  present in the rule set and (b) to find the full rule names associated with
  the fvar or const identified by a name.
  -/
  ruleNames : PHashMap Name (UnorderedArraySet RuleName)
  deriving Inhabited

/--
A global Aesop rule set. When we tag a declaration with `@[aesop]`, it is stored
in one or more of these rule sets. Internally, a `GlobalRuleSet` is composed of
a `BaseRuleSet` (stored in an Aesop rule set extension) plus a set of simp
theorems (stored in a `SimpExtension`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1069d357ec7c206dbbad9cc19842067e269ea8dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
