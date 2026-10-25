# Kind.id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3777170cd65e4f1a7b91d42a5bf79c14d27bd9a71b940f8a73cd94784432dbf8",
  "kind": "def",
  "lexical_name": "Kind.id",
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
  "slug": "kind-id--06e7de4b89ab32f8caac385c",
  "source": {
    "blob": "902b3804d56148e1db29c1b28e207d17816989ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kind/Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06e7de4b89ab32f8caac385c8ca4cb93dedb12dced6a633dfe6884d4842a7bf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kind/Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3777170cd65e4f1a7b91d42a5bf79c14d27bd9a71b940f8a73cd94784432dbf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Kind.id : Kind → ProofStrategyId
  | .directConstruction => ⟨"proof-strategy:direct-construction"⟩
  | .introduction => ⟨"proof-strategy:introduction"⟩
  | .application => ⟨"proof-strategy:application"⟩
  | .caseAnalysis => ⟨"proof-strategy:case-analysis"⟩
  | .structuralInduction => ⟨"proof-strategy:structural-induction"⟩
  | .wellFoundedInduction => ⟨"proof-strategy:well-founded-induction"⟩
  | .contradiction => ⟨"proof-strategy:contradiction"⟩
  | .exFalso => ⟨"proof-strategy:ex-falso"⟩
  | .rewriting => ⟨"proof-strategy:rewriting"⟩
  | .congruence => ⟨"proof-strategy:congruence"⟩
  | .extensionality => ⟨"proof-strategy:extensionality"⟩
  | .witnessConstruction => ⟨"proof-strategy:witness-construction"⟩
  | .uniqueness => ⟨"proof-strategy:uniqueness"⟩
  | .quotientInduction => ⟨"proof-strategy:quotient-induction"⟩
  | .finiteEnumeration => ⟨"proof-strategy:finite-enumeration"⟩
  | .normalization => ⟨"proof-strategy:normalization"⟩
  | .decisionProcedure => ⟨"proof-strategy:decision-procedure"⟩
  | .reflection => ⟨"proof-strategy:reflection"⟩
  | .orderReasoning => ⟨"proof-strategy:order-reasoning"⟩
  | .algebraicCalculation => ⟨"proof-strategy:algebraic-calculation"⟩
  | .classicalChoice => ⟨"proof-strategy:classical-choice"⟩
  | .dependencyDelegation => ⟨"proof-strategy:dependency-delegation"⟩

end MathDiscovery.ProofStrategy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kind/Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kind/Variant912bb741f712bdec710cf630c51adea931c45587f020a93d9064480ccc4852dd.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `902b3804d56148e1db29c1b28e207d17816989ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
