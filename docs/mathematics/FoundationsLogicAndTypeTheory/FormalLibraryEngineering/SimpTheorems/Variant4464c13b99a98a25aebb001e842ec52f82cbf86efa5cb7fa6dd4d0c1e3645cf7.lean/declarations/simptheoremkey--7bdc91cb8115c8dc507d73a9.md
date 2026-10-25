# SimpTheoremKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:798aef0b2ce38a66b3965de02867258d2d6ee99d5c93bb6018c15dd6a7dca4b3",
  "kind": "abbrev",
  "lexical_name": "SimpTheoremKey",
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
  "slug": "simptheoremkey--7bdc91cb8115c8dc507d73a9",
  "source": {
    "blob": "375077889ab38d6151fbb04b213bf66513572d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bdc91cb8115c8dc507d73a91d1f71e243ba76daef4f7706c59534d4c2ff9668",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:798aef0b2ce38a66b3965de02867258d2d6ee99d5c93bb6018c15dd6a7dca4b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev SimpTheoremKey := DiscrTree.Key

/--
  The fields `levelParams` and `proof` are used to encode the proof of the simp theorem.
  If the `proof` is a global declaration `c`, we store `Expr.const c []` at `proof` without the universe levels, and `levelParams` is set to `#[]`
  When using the lemma, we create fresh universe metavariables.
  Motivation: most simp theorems are global declarations, and this approach is faster and saves memory.

  The field `levelParams` is not empty only when we elaborate an expression provided by the user, and it contains universe metavariables.
  Then, we use `abstractMVars` to abstract the universe metavariables and create new fresh universe parameters that are stored at the field `levelParams`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375077889ab38d6151fbb04b213bf66513572d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
