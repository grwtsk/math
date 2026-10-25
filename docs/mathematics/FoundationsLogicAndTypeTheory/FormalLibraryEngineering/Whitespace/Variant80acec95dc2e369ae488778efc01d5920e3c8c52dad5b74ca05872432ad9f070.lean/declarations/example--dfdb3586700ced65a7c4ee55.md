# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e1a302af54d191ddb9c25b473d6d2bb1344bd4788f3951c69893df9bed6228e",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--dfdb3586700ced65a7c4ee55",
  "source": {
    "blob": "be97626f546f03dbec337c9cae4a8729fa939a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfdb3586700ced65a7c4ee55a3f6df9991acebebb0158ab46a96b678f7c007fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e1a302af54d191ddb9c25b473d6d2bb1344bd4788f3951c69893df9bed6228e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example  : True := trivial

-- Unit tests for internal functions in the linter.
section internal

/--
info: #[srcNat: 12, srcPos: 12, fmtPos: 2, msg: extra space, length: 7
, srcNat: 4, srcPos: 4, fmtPos: 1, msg: extra space, length: 3
]
-/
#guard_msgs in
#eval
  let s := "example        f   g"
  let t := "example fg"
  Mathlib.Linter.parallelScan s t

/--
info: #[srcNat: 19, srcPos: 19, fmtPos: 21, msg: extra space, length: 1
, srcNat: 16, srcPos: 16, fmtPos: 19, msg: extra space, length: 2
, srcNat: 7, srcPos: 7, fmtPos: 12, msg: missing space, length: 1
]
-/
#guard_msgs in
#eval
  let s := "example  :   True :=trivial"
  let t := "example : True :=
    trivial"
  Mathlib.Linter.parallelScan s t

/--
info: #[srcNat: 4, srcPos: 4, fmtPos: 5, msg: missing space, length: 1
, srcNat: 2, srcPos: 2, fmtPos: 1, msg: extra space, length: 1
]
-/
#guard_msgs in
#eval
  let l := "hac d"
  let m := "h  acd"
  Mathlib.Linter.parallelScan l m

-- Starting from `c` (due to the `"d ef gh".length` input), form a "window" of successive sizes
-- `1, 2,..., 6`.  The output is trimmed and contains only full words, even partially overlapping
-- with the given lengths.
#guard Mathlib.Linter.Style.Whitespace.mkWindow "ab cd ef gh" "d ef gh".length 1 == "cd"
#guard Mathlib.Linter.Style.Whitespace.mkWindow "ab cd ef gh" "d ef gh".length 2 == "cd"
#guard Mathlib.Linter.Style.Whitespace.mkWindow "ab cd ef gh" "d ef gh".length 3 == "cd ef"
#guard Mathlib.Linter.Style.Whitespace.mkWindow "ab cd ef gh" "d ef gh".length 4 == "cd ef"
#guard Mathlib.Linter.Style.Whitespace.mkWindow "ab cd ef gh" "d ef gh".length 5 == "cd ef"
#guard Mathlib.Linter.Style.Whitespace.mkWindow "ab cd ef gh" "d ef gh".length 6 == "cd ef gh"

end internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variant80acec95dc2e369ae488778efc01d5920e3c8c52dad5b74ca05872432ad9f070.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be97626f546f03dbec337c9cae4a8729fa939a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
