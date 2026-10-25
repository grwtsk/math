# replicate_pow_minus_append

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
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:620daeea-6a94-7543-e2ad-53593f7bd392",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdf3378d-1810-3cc8-7036-f5d62f4a6949",
  "kind": "theorem",
  "lexical_name": "replicate_pow_minus_append",
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
  "slug": "replicate-pow-minus-append--57793203c01f776d88f85fcc",
  "source": {
    "blob": "7f9fdaba0ac4a47920111ecc621f72e3c5636dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57793203c01f776d88f85fccd80e286eb0ddca51b6fe6fe0d8e394cb38c92e15",
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

Occurrence: `result:fdf3378d-1810-3cc8-7036-f5d62f4a6949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replicate_pow_minus_append {m : ℕ} :
    M :: replicate (2 ^ m - 1) I ++ [I] = M :: replicate (2 ^ m) I := by
  change M :: replicate (2 ^ m - 1) I ++ replicate 1 I = M :: replicate (2 ^ m) I
  rw [cons_append, ← replicate_add, tsub_add_cancel_of_le (one_le_pow' m 1)]
#align miu.replicate_pow_minus_append Miu.replicate_pow_minus_append

/--
`der_replicate_I_of_mod3` states that `M::y` is `Derivable` if `y` is any `Miustr` consisiting just
of `I`s, where `count I y` is 1 or 2 modulo 3.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant5cc4d86804203c8dc57df575b0bd1b4b68d6c5d973d888e3f2b0b55466f649e9.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9fdaba0ac4a47920111ecc621f72e3c5636dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
