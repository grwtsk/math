# Result

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64ea43a7693888c9a4eb51f475bf29fd0a8e509d9961d864637ed887e0c16c8e",
  "kind": "structure",
  "lexical_name": "Result",
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
  "slug": "result--cd7afe43bda83dbb5a499aba",
  "source": {
    "blob": "f40d2df51a1f70abf8806cffeb4182a7e1338a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd7afe43bda83dbb5a499abafecf6ca6d79cf3af58a3c1f71179d7cc06ecd995",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64ea43a7693888c9a4eb51f475bf29fd0a8e509d9961d864637ed887e0c16c8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure Result where
  /-- All invariant goals emitted during VC generation, in emit order. The MVarId at
  index `i` carries tag `inv{i+1}`, so callers can treat the array index as the
  invariant number. Some entries may already be assigned (inline-elaborated by
  `Driver.emitVC`); the caller is responsible for filtering before discharging. -/
  invariants : Array MVarId
  /-- Unassigned VCs. Each shares the parent `Grind.Goal`'s state. -/
  vcs : Array Grind.Goal
  /-- Invariant numbers handled inline by `Driver.emitVC`. Used by `Frontend` to
  avoid spurious "alt does not match any invariant" warnings for inline-consumed
  alts. -/
  inlineHandledInvariants : Std.HashSet Nat := {}
  /-- Frame terms of `frames` alternatives whose program pattern matched no program. -/
  unmatchedFrames : Array Syntax := #[]

/--
Generate verification conditions for a goal of the form `pre ⊑ wp e post epost s₁ ... sₙ` by repeatedly
decomposing `e` using registered `@[spec]` theorems.
Return the VCs and invariant goals.

`stepLimit?`, when `some n`, seeds the fuel counter to `n`; when `none`, fuel is unlimited.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40d2df51a1f70abf8806cffeb4182a7e1338a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
