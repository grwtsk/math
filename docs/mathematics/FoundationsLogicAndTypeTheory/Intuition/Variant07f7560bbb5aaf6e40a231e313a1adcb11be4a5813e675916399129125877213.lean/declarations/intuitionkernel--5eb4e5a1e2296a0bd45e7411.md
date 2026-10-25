# IntuitionKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25d77c22f429109dd7c9e94f3c62f84f2390c1bc5a73685125b8d9db689aa5d9",
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
  "slug": "intuitionkernel--5eb4e5a1e2296a0bd45e7411",
  "source": {
    "blob": "04ca17c31f1fb8384c9b2253e506a09b11f016a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5eb4e5a1e2296a0bd45e7411b6f88b3e11cd509baca52dbdd3ca035e5729c29e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25d77c22f429109dd7c9e94f3c62f84f2390c1bc5a73685125b8d9db689aa5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

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

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04ca17c31f1fb8384c9b2253e506a09b11f016a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
