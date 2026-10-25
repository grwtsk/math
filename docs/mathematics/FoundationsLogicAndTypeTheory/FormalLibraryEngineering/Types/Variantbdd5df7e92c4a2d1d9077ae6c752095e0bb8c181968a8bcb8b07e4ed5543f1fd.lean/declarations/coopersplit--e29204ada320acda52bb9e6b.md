# CooperSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c82d9fe90b6bddaff6a67000e39baa6b045cb3dd4a306ed33baffb25afe8e79",
  "kind": "structure",
  "lexical_name": "CooperSplit",
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
  "slug": "coopersplit--e29204ada320acda52bb9e6b",
  "source": {
    "blob": "db740b8cc8e51f457b0d8c661e5b0f50a2acb514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e29204ada320acda52bb9e6be61693a0f46cc8cea032083b6501b729db7f49ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c82d9fe90b6bddaff6a67000e39baa6b045cb3dd4a306ed33baffb25afe8e79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CooperSplit where
  pred  : CooperSplitPred
  k     : Nat
  h     : CooperSplitProof

/--
The `cooper_left`, `cooper_right`, `cooper_dvd_left`, and `cooper_dvd_right` theorems have a resulting type
that is a big-or of the form `OrOver n (cooper_*_split ...)`. The predicate `(cooper_*_split ...)` has type `Nat → Prop`.
The `cutsat` procedure performs case splitting on `(cooper_*_split ... (n-1))` down to `(cooper_*_split ... 1)`.
If it derives `False` from each case, it uses `orOver_resolve` and `orOver_one` to deduce the final case,
which has type `(cooper_*_split ... 0)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantbdd5df7e92c4a2d1d9077ae6c752095e0bb8c181968a8bcb8b07e4ed5543f1fd.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db740b8cc8e51f457b0d8c661e5b0f50a2acb514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
