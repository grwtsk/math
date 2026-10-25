# buildAdditionalLocalRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:195f089e837eabd3233948bce9c3e5c02ab8d4ced5fb1a01cb47f5a25d1782f0",
  "kind": "def",
  "lexical_name": "buildAdditionalLocalRules",
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
  "slug": "buildadditionallocalrules--84606c92eb95852e00aca464",
  "source": {
    "blob": "a6290bad62f11a38a61643f86212ccc1d82da6c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 590,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleExpr/Variant1db0f649e81d140301a21c559298308b77ffd8e51a3221f4f7ed13d0da1ad281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84606c92eb95852e00aca4647850cbda22806cd80c4f81cbe6f475b455adee32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleExpr/Variant1db0f649e81d140301a21c559298308b77ffd8e51a3221f4f7ed13d0da1ad281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:195f089e837eabd3233948bce9c3e5c02ab8d4ced5fb1a01cb47f5a25d1782f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildAdditionalLocalRules (goal : MVarId) (e : RuleExpr) :
    TermElabM (Array LocalRuleSetMember) :=
  let go : ElabM _ := do (← e.toAdditionalLocalRules).mapM (·.buildLocalRule)
  go.run $ .forAdditionalRules goal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleExpr/Variant1db0f649e81d140301a21c559298308b77ffd8e51a3221f4f7ed13d0da1ad281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleExpr/Variant1db0f649e81d140301a21c559298308b77ffd8e51a3221f4f7ed13d0da1ad281.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6290bad62f11a38a61643f86212ccc1d82da6c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
