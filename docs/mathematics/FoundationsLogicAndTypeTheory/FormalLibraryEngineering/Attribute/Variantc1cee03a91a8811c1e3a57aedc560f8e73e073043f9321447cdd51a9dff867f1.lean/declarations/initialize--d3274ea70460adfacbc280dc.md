# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f8e96332d873bcbfcc69215ff7b11ee43826e8876e707706c942802b8d9f0b8",
  "kind": "initialize",
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
  "slug": "initialize--d3274ea70460adfacbc280dc",
  "source": {
    "blob": "53b09dd434fdcb401e60ec32a1e7b762fbf3d396",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantc1cee03a91a8811c1e3a57aedc560f8e73e073043f9321447cdd51a9dff867f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3274ea70460adfacbc280dc89676dc76b20a2e5ae599af9793147ff172e337e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantc1cee03a91a8811c1e3a57aedc560f8e73e073043f9321447cdd51a9dff867f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f8e96332d873bcbfcc69215ff7b11ee43826e8876e707706c942802b8d9f0b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize Lean.registerBuiltinAttribute {
  name := `bound
  descr := "Register a theorem as an apply rule for the `bound` tactic."
  applicationTime := .afterCompilation
  add := fun decl stx attrKind => Lean.withRef stx do
    let score ← Aesop.runTermElabMAsCoreM <| declPriority decl
    trace[bound.attribute] "'{decl}' has score '{score}'"
    let context ← Aesop.runMetaMAsCoreM Aesop.ElabM.Context.forAdditionalGlobalRules
    let (rule, ruleSets) ← Aesop.runTermElabMAsCoreM <|
      (scoreToConfig decl score).buildGlobalRule.run context
    for ruleSet in ruleSets do
      Aesop.Frontend.addGlobalRule ruleSet rule attrKind (checkNotExists := true)
  erase := fun decl =>
    let ruleFilter := { name := decl, scope := .global, builders := #[], phases := #[] }
    Aesop.Frontend.eraseGlobalRules Aesop.RuleSetNameFilter.all ruleFilter (checkExists := true)
}

/-- Attribute for `forward` rules for the `bound` tactic.

`@[bound_forward]` lemmas should produce inequalities given other hypotheses that might be in the
context. A typical example is exposing an inequality field of a structure, such as
`HasPowerSeriesOnBall.r_pos`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantc1cee03a91a8811c1e3a57aedc560f8e73e073043f9321447cdd51a9dff867f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attribute/Variantc1cee03a91a8811c1e3a57aedc560f8e73e073043f9321447cdd51a9dff867f1.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53b09dd434fdcb401e60ec32a1e7b762fbf3d396` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
