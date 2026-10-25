# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:578ce64f86d5c2f13d1bff438c81dd5b39d17bc04001acace9482dfe844f0ab6",
  "kind": "macro",
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
  "slug": "macro--d4bba8baa85f1ec79c274891",
  "source": {
    "blob": "c13e144f79677ab5e57a39842c4c1a36ea0a9034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4bba8baa85f1ec79c274891fe7ba9614e820b8f0c9d78b63a8510fef77d5042",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:578ce64f86d5c2f13d1bff438c81dd5b39d17bc04001acace9482dfe844f0ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := grwSeq) "grw " c:optConfig s:rwRuleSeq l:(location)? : tactic =>
  match s with
  | `(rwRuleSeq| [$rs,*]%$rbrak) =>
    -- We show the `rfl` state on `]`
    `(tactic| (grewrite $c [$rs,*] $(l)?; with_annotate_state $rbrak (try (with_reducible rfl))))
  | _ => Macro.throwUnsupported

/--
`apply_rewrite [e₁, ..., eₙ]` uses the expressions `e₁`, ..., `eₙ` as generalized rewrite rules, of
type `pᵢ → qᵢ`, on the main goal, replacing occurrences of `pᵢ` with `qᵢ`. The difference with
`grewrite` is that `grewrite` would turn `pᵢ` into a side goal and expect `qᵢ` to be a relation.

If an expression `e` is a defined constant, then the equational theorems associated with `e` are
used. This provides a convenient way to unfold `e`.

* `apply_rewrite [← e]` applies the rewrite rule `e : p → q` in the reverse direction, replacing
  occurrences of `q` with `p`.
* `apply_rewrite (config := cfg) [e₁, ..., eₙ]` uses `cfg` as configuration. See `GRewrite.Config`
  for details.
  To let `apply_rewrite` unfold more aggressively, as in `erw`, use
  `apply_rewrite (transparency := default) [e₁, ..., eₙ]`.
* `apply_rewrite [e₁, ..., eₙ] at l` rewrites at the location(s) `l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant7b99cbea0ea8797b39f782c9af2a15016c3f7ec2cfca89f8bb967b1b3324441d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c13e144f79677ab5e57a39842c4c1a36ea0a9034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
