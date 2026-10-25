# FinitePrefixProjectiveSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e19f611243359051a573793f1087947c341aa9e07b31a03ac89eca7ee61e7bc9",
  "kind": "structure",
  "lexical_name": "FinitePrefixProjectiveSystem",
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
  "slug": "finiteprefixprojectivesystem--d52d75d5431675f7ad7664a9",
  "source": {
    "blob": "a67927ff11076cee1c88505091a91c628416458f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variantf7f435545fd1c088093e46472834e1328b57caf2df622d5e9cfa62cb5829e032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d52d75d5431675f7ad7664a9b21639cb6bf0e4945e46f9a18e430e8ee7ff9f2c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variantf7f435545fd1c088093e46472834e1328b57caf2df622d5e9cfa62cb5829e032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e19f611243359051a573793f1087947c341aa9e07b31a03ac89eca7ee61e7bc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FinitePrefixProjectiveSystem (State : Type u) where
  project : Nat → Nat → State → State
  identity :
    ∀ stage state,
      project stage stage state = state
  composition :
    ∀ {later middle earlier state},
      earlier ≤ middle →
      middle ≤ later →
      project later earlier state =
        project middle earlier (project later middle state)
  surjective :
    ∀ {later earlier},
      earlier ≤ later →
        Function.Surjective (project later earlier)
  compatibleWitness : Nat → State
  witnessCompatible :
    ∀ {later earlier},
      earlier ≤ later →
      project later earlier (compatibleWitness later) =
        compatibleWitness earlier
  finitePrefixOnly : Bool := true
  finitePrefixOnly_exact : finitePrefixOnly = true

end Mathematics.StratifiedBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variantf7f435545fd1c088093e46472834e1328b57caf2df622d5e9cfa62cb5829e032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variantf7f435545fd1c088093e46472834e1328b57caf2df622d5e9cfa62cb5829e032.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a67927ff11076cee1c88505091a91c628416458f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
