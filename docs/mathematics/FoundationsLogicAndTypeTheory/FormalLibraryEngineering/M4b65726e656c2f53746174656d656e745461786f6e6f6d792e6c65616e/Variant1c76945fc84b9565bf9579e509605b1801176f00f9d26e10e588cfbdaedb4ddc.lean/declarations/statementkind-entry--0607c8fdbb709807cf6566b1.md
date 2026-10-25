# StatementKind.entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9bcd7acaac80f9a762882ced162e9972c01f2a83beb53ef58453bc2d7efac54",
  "kind": "def",
  "lexical_name": "StatementKind.entry",
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
  "slug": "statementkind-entry--0607c8fdbb709807cf6566b1",
  "source": {
    "blob": "8f34360fa75dd088ce88005c6243e8b3a1e25dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0607c8fdbb709807cf6566b1a3c5993a1fe4e4ac0f3df332700b5c67835f02c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9bcd7acaac80f9a762882ced162e9972c01f2a83beb53ef58453bc2d7efac54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StatementKind.entry : StatementKind → StatementTaxonomyEntry
  | .axiomPostulate =>
      { kind := .axiomPostulate
        formalDefinition := "Primitive assumption accepted without proof inside a formal system."
        repoDefinition := "Represent as assumption metadata or external postulate surface; do not use as hidden theorem authority."
        defaultAuthority := .assumed }
  | .mathematicalHypothesis =>
      { kind := .mathematicalHypothesis
        formalDefinition := "Premise or antecedent assumption of a theorem or proof."
        repoDefinition := "Represent as a local binder, field, or parameter; authority is conditional on the hypothesis."
        defaultAuthority := .localHypothesis }
  | .scientificHypothesis =>
      { kind := .scientificHypothesis
        formalDefinition := "Testable proposed explanation for a phenomenon."
        repoDefinition := "Represent as empirical/candidate surface, not mathematical proof authority."
        defaultAuthority := .empiricalHypothesis }
  | .conjecture =>
      { kind := .conjecture
        formalDefinition := "Unproved mathematical statement believed true from evidence, patterns, or intuition."
        repoDefinition := "Represent as open residue, candidate generalization, or external obligation until proved."
        defaultAuthority := .openResidue }
  | .theorem =>
      { kind := .theorem
        formalDefinition := "Major statement rigorously proved from definitions, axioms, hypotheses, and prior results."
        repoDefinition := "May be theorem authority only with checked proof or trusted import."
        defaultAuthority := .openResidue }
  | .proposition =>
      { kind := .proposition
        formalDefinition := "Proved statement of fact, usually less sweeping than a major theorem."
        repoDefinition := "Same proof standard as theorem; name does not lower authority requirements."
        defaultAuthority := .openResidue }
  | .lemma =>
      { kind := .lemma
        formalDefinition := "Auxiliary proved statement used to prove a larger result."
        repoDefinition := "Same proof standard as theorem; usually dependency-local."
        defaultAuthority := .openResidue }
  | .corollary =>
      { kind := .corollary
        formalDefinition := "Result following directly from a prior proved result."
        repoDefinition := "Should visibly depend on its parent theorem/proposition and contain no hidden large proof."
        defaultAuthority := .openResidue }
  | .claim =>
      { kind := .claim
        formalDefinition := "Localized assertion inside a proof or argument requiring a mini-proof."
        repoDefinition := "Represent as local `have` when one-use, or named proof if reusable; otherwise route to residue."
        defaultAuthority := .openResidue }
  | .identity =>
      { kind := .identity
        formalDefinition := "Equality of two expressions valid over the stated variables/domain."
        repoDefinition := "Represent as equality theorem; finite checked identities remain finite witnesses unless globally proved."
        defaultAuthority := .openResidue }
  | .assembly =>
      { kind := .assembly
        formalDefinition := "Formal string or assembly of mathematical symbols before semantic interpretation."
        repoDefinition := "Represent as syntax, tokens, AST, or string carrier; syntax alone has no truth authority."
        defaultAuthority := .syntaxOnly }
  | .mathematicalStructure =>
      { kind := .mathematicalStructure
        formalDefinition := "Carrier equipped with operations, relations, and laws."
        repoDefinition := "Represent as Lean structure/typeclass; law fields require supplied proofs or assumptions."
        defaultAuthority := .definitionOnly }
  | .speciesOfStructure =>
      { kind := .speciesOfStructure
        formalDefinition := "Metamathematical pattern specifying a type of structure and its laws."
        repoDefinition := "Represent as structure family/typeclass/schema of fields and laws; instances must still supply laws."
        defaultAuthority := .definitionOnly }
  | .schema =>
      { kind := .schema
        formalDefinition := "Rule pattern generating formulas, axioms, inference rules, obligations, or instances."
        repoDefinition := "Represent as parameterized generator; generated obligations are not automatically proved."
        defaultAuthority := .definitionOnly }

/-- A repository statement surface with kind and authority kept separate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f34360fa75dd088ce88005c6243e8b3a1e25dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
