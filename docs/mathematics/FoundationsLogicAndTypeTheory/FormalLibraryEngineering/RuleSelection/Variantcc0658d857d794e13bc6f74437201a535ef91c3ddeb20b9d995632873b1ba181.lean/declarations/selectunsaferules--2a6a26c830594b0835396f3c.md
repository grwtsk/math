# selectUnsafeRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:684b856c06aa76449a1fb48569ed634d591ecc54e6259156a5656dd1f543ce06",
  "kind": "def",
  "lexical_name": "selectUnsafeRules",
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
  "slug": "selectunsaferules--2a6a26c830594b0835396f3c",
  "source": {
    "blob": "f984dd92a0c410b651a3865dabac123fd0ba9ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSelection/Variantcc0658d857d794e13bc6f74437201a535ef91c3ddeb20b9d995632873b1ba181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a6a26c830594b0835396f3c0a67799e36b3ad596d8feb89abcfeafce11038cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSelection/Variantcc0658d857d794e13bc6f74437201a535ef91c3ddeb20b9d995632873b1ba181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:684b856c06aa76449a1fb48569ed634d591ecc54e6259156a5656dd1f543ce06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectUnsafeRules (postponedSafeRules : Array PostponedSafeRule)
    (gref : GoalRef) : SearchM Q UnsafeQueue := do
  profilingRuleSelection do
    let g ← gref.get
    match g.unsafeQueue? with
    | some rules => return rules
    | none => do
      let ruleSet := (← read).ruleSet
      let unsafeRules ←
        g.runMetaMInPostNormState' λ postNormGoal =>
          ruleSet.applicableUnsafeRules g.forwardRuleMatches postNormGoal
      let unsafeQueue := UnsafeQueue.initial postponedSafeRules unsafeRules
      gref.set $ g.setUnsafeRulesSelected true |>.setUnsafeQueue unsafeQueue
      return unsafeQueue

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSelection/Variantcc0658d857d794e13bc6f74437201a535ef91c3ddeb20b9d995632873b1ba181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSelection/Variantcc0658d857d794e13bc6f74437201a535ef91c3ddeb20b9d995632873b1ba181.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f984dd92a0c410b651a3865dabac123fd0ba9ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
