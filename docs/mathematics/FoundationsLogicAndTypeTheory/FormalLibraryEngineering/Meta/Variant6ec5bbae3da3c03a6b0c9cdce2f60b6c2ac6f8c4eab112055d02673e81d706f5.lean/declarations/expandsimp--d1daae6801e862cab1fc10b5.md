# expandSimp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c73e1dd4818754074137057d7e0e16d9e0ea8e1a81db1384d49da08dc7f6ddd1",
  "kind": "def",
  "lexical_name": "expandSimp",
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
  "slug": "expandsimp--d1daae6801e862cab1fc10b5",
  "source": {
    "blob": "5c65176d064ead7a2b58d07624fcbdd159a805c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1daae6801e862cab1fc10b5f8ce9276da26fbc1139a5ca39ae83f4ac3677e20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c73e1dd4818754074137057d7e0e16d9e0ea8e1a81db1384d49da08dc7f6ddd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    @[macro $tacName] meta def expandSimp : Macro := fun s => do
      let cfg ← `(optConfig| $cfg)
      let s := s.setKind $kind
      let s := s.setArg 0 (mkAtomFrom s[0] $tkn (canonical := true))
      let s := s.setArg 1 (appendConfig s[1] cfg)
      let s := s.mkSynthetic
      return s)

/-- `simp!` is shorthand for `simp` with `autoUnfold := true`.
This will unfold applications of functions defined by pattern matching, when one of the patterns applies.
This can be used to partially evaluate many definitions. -/
declare_simp_like_tactic simpAutoUnfold "simp! " (autoUnfold := true)

/--
`simp_arith` has been deprecated. It was a shorthand for `simp +arith +decide`.
Note that `+decide` is not needed for reducing arithmetic terms since simprocs have been added to Lean.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant6ec5bbae3da3c03a6b0c9cdce2f60b6c2ac6f8c4eab112055d02673e81d706f5.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c65176d064ead7a2b58d07624fcbdd159a805c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
