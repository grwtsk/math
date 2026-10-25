# der_cons_replicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f9fdaba0ac4a47920111ecc621f72e3c5636dae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fdbeb2d-2a3f-7cf5-61bd-077bdf4b1e64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b74f67a0-f669-c54f-e8b8-14164cdc55ea",
  "kind": "theorem",
  "lexical_name": "der_cons_replicate",
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
  "slug": "der-cons-replicate--01559189afaa3b65a3eee15d",
  "source": {
    "blob": "7f9fdaba0ac4a47920111ecc621f72e3c5636dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01559189afaa3b65a3eee15dcbcde40ae88abcb15aa73fe387061ad655b6bda3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b74f67a0-f669-c54f-e8b8-14164cdc55ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem der_cons_replicate (n : ℕ) : Derivable (M :: replicate (2 ^ n) I) := by
  induction' n with k hk
  · -- base case
    constructor
  · -- inductive step
    rw [succ_eq_add_one, pow_add, pow_one 2, mul_two, replicate_add]
    exact Derivable.r2 hk

/-!
## Converting `I`s to `U`s

For any given natural number `c ≡ 1 or 2 [MOD 3]`, we need to show that can derive an `Miustr`
`M::w` where `w` consists only of `I`s, where `d = count I w` is a power of 2, where `d ≥ c` and
where `d ≡ c [MOD 3]`.

Given the above lemmas, the desired result reduces to an arithmetic result, given in the file
`arithmetic.lean`.

We'll use this result to show we can derive an `Miustr` of the form `M::z` where `z` is a string
consisting only of `I`s such that `count I z ≡ 1 or 2 [MOD 3]`.

As an intermediate step, we show that derive `z` from `zt`, where `t` is an `Miustr` consisting of
an even number of `U`s and `z` is any `Miustr`.
-/


/--
Any number of successive occurrences of `"UU"` can be removed from the end of a `Derivable` `Miustr`
to produce another `Derivable` `Miustr`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9fdaba0ac4a47920111ecc621f72e3c5636dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
