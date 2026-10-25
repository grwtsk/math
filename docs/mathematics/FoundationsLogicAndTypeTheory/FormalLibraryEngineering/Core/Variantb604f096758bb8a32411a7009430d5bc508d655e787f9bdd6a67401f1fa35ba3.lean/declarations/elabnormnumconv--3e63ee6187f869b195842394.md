# elabNormNumConv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2808a201c8bbc83255e8616ce1822b3eba63782d023837dd3897387f8b60f5a6",
  "kind": "def",
  "lexical_name": "elabNormNumConv",
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
  "slug": "elabnormnumconv--3e63ee6187f869b195842394",
  "source": {
    "blob": "7d822b5b3dc4cb31b1737dbe2bbd652541025731",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e63ee6187f869b195842394ee7dc029b0b435681692022b047d0e40f8a0c34d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2808a201c8bbc83255e8616ce1822b3eba63782d023837dd3897387f8b60f5a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic normNumConv] def elabNormNumConv : Tactic := fun stx ↦ withMainContext do
  let (ctx, simprocs) ← getSimpContext stx[1] stx[3] !stx[2].isNone
  Conv.applySimpResult
    (← deriveSimp ctx simprocs (useSimp := true) (← instantiateMVars (← Conv.getLhs)))

/-- `#norm_num e`, where `e` is an expression, will print the `norm_num` form of `e`.
Unlike `norm_num`, this command does not fail when no simplifications are made.
`#norm_num` understands local variables, so you can use them to introduce parameters.

(In the variants below, the `:` is optional but helpful for the parser.)

* `#norm_num [h1, ...] : e` adds the arguments `h1, ...` to the `simp` set in addition to the
  default `simp` set. All options for `simp` arguments are supported, in particular `←`, `↑`
  and `↓`.
* `#norm_num only : e` and `#norm_num only [h1, ...] : e` do not use the default `simp` set for
  simplification.
* `#norm_num (config := cfg) : e` uses `cfg` as configuration for `simp` calls (see the `simp`
  tactic for further details).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantb604f096758bb8a32411a7009430d5bc508d655e787f9bdd6a67401f1fa35ba3.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d822b5b3dc4cb31b1737dbe2bbd652541025731` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
