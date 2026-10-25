# TypedRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6de64a58200e16986e2c48fdbbbbc952cacf10ff775b84c5a92c5d2e2640acb6",
  "kind": "inductive",
  "lexical_name": "TypedRelation",
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
  "slug": "typedrelation--9eeabc74a9fa6779ad7353bb",
  "source": {
    "blob": "5c15e98bc719a5799e742195aa26fe0550b30e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9eeabc74a9fa6779ad7353bb4449ec5c6c7ae95b7cc0d57d41bcf106431ecd63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6de64a58200e16986e2c48fdbbbbc952cacf10ff775b84c5a92c5d2e2640acb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TypedRelation {Claim : Type} (catalog : Catalog Claim) : Type
  | implication (source target : Claim) (proof : Meaning catalog source → Meaning catalog target)
  | equivalence (left right : Claim) (proof : Meaning catalog left ↔ Meaning catalog right)
  | conditional (premises : Finset Claim) (conclusion : Claim)
      (proof : Holds catalog premises → Meaning catalog conclusion)
  | dependency (consumer prerequisite : Claim)
  | premiseSupply (supplier consumer : Claim)
      (proof : Meaning catalog supplier → Meaning catalog consumer)
  | discharge (claim : Claim) (proof : Meaning catalog claim)
  | scopedRefutation (claim : Claim) (proof : ¬ Meaning catalog claim)
  | provenance (claim : Claim) (source : SourceIdentity)
  | relevance (left right : Claim) (score : Nat) (description : String)
  | pathRevision (before after : Finset Claim)
      (proof : Holds catalog after → Holds catalog before)

/-- An external verification label cannot construct a mathematical proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c15e98bc719a5799e742195aa26fe0550b30e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
