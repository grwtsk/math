# IntuitionKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b9e500844af8e3e70267e7f9fc08fff0f1d312142c422795981a06e936ec321",
  "kind": "structure",
  "lexical_name": "IntuitionKernel",
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
  "slug": "intuitionkernel--1399dd0fe51b465106bff4bb",
  "source": {
    "blob": "58cc05ef4322ca95433e7acf42369bb06884c4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1399dd0fe51b465106bff4bbd764e0d298b1b3aed8eef902d082345130b7d6df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b9e500844af8e3e70267e7f9fc08fff0f1d312142c422795981a06e936ec321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntuitionKernel (Memory : Type*) where
  /-- Immutable implementation/profile identity for the ranking rule. -/
  profileIdentity : String
  /-- All strategy state is supplied through the memory argument. -/
  rank : Memory → ℕ → List IntuitionPriority
  /-- Proposal computation cost is part of the declared finite work budget. -/
  budgetBound : ∀ memory budget,
    ((rank memory budget).map IntuitionPriority.proposalCost).sum ≤ budget

/-- Remaining strategy outcomes do not collapse into either mathematical polarity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cc05ef4322ca95433e7acf42369bb06884c4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
