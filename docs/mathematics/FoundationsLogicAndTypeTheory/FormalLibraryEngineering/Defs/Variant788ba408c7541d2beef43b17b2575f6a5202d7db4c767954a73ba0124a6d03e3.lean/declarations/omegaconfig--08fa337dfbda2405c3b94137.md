# OmegaConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44cd29d9bc7cd72c36f8490d004e0de2693bc4c03671bf045e507c3028d016f8",
  "kind": "structure",
  "lexical_name": "OmegaConfig",
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
  "slug": "omegaconfig--08fa337dfbda2405c3b94137",
  "source": {
    "blob": "d1a961f4b3986e7d6580325351fffdb647ad200c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1794,
    "line": 1755,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08fa337dfbda2405c3b94137e9c7ad61e1e3b7221bf7fdcd005e8e2e07b78e78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44cd29d9bc7cd72c36f8490d004e0de2693bc4c03671bf045e507c3028d016f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1755–1794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OmegaConfig where
  /--
  Split disjunctions in the context.

  Note that with `splitDisjunctions := false` omega will not be able to solve `x = y` goals
  as these are usually handled by introducing `¬ x = y` as a hypothesis, then replacing this with
  `x < y ∨ x > y`.

  On the other hand, `omega` does not currently detect disjunctions which, when split,
  introduce no new useful information, so the presence of irrelevant disjunctions in the context
  can significantly increase run time.
  -/
  splitDisjunctions : Bool := true
  /--
  Whenever `((a - b : Nat) : Int)` is found, register the disjunction
  `b ≤ a ∧ ((a - b : Nat) : Int) = a - b ∨ a < b ∧ ((a - b : Nat) : Int) = 0`
  for later splitting.
  -/
  splitNatSub : Bool := true
  /--
  Whenever `Int.natAbs a` is found, register the disjunction
  `0 ≤ a ∧ Int.natAbs a = a ∨ a < 0 ∧ Int.natAbs a = - a` for later splitting.
  -/
  splitNatAbs : Bool := true
  /--
  Whenever `min a b` or `max a b` is found, rewrite in terms of the definition
  `if a ≤ b ...`, for later case splitting.
  -/
  splitMinMax : Bool := true

end Omega

namespace CheckTactic

/--
Type used to lift an arbitrary value into a type parameter so it can
appear in a proof goal.

It is used by the #check_tactic command.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant788ba408c7541d2beef43b17b2575f6a5202d7db4c767954a73ba0124a6d03e3.lean#L1755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a961f4b3986e7d6580325351fffdb647ad200c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
