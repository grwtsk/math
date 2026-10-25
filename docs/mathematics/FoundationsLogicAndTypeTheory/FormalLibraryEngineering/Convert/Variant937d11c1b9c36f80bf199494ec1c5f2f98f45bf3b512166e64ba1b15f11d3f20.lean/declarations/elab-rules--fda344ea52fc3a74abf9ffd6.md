# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d8a9f5d0dd34d4d7c6cc84f8504049ab72d60b3cac6d6831ca4b8b0600e5123",
  "kind": "elab_rules",
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
  "slug": "elab-rules--fda344ea52fc3a74abf9ffd6",
  "source": {
    "blob": "67e7ecde04c6ca6ff2d948a48bcf8bb84159043a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fda344ea52fc3a74abf9ffd614859c1cff82efe9282bb23024bae16e10bd242c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d8a9f5d0dd34d4d7c6cc84f8504049ab72d60b3cac6d6831ca4b8b0600e5123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| convert $[$cfg:config]? $[←%$sym]? $term $[using $n]? $[with $ps?*]?) =>
  withMainContext do
    let config ← Congr!.elabConfig (mkOptionalNode cfg)
    let patterns := (Lean.Elab.Tactic.RCases.expandRIntroPats (ps?.getD #[])).toList
    let expectedType ← mkFreshExprMVar (mkSort (← getLevel (← getMainTarget)))
    let (e, gs) ← elabTermForConvert term expectedType
    liftMetaTactic fun g ↦
      return (← g.convert e sym.isSome (n.map (·.getNat)) config patterns) ++ gs

-- FIXME restore when `add_tactic_doc` is ported.
-- add_tactic_doc
-- { name       := "convert",
--   category   := doc_category.tactic,
--   decl_names := [`tactic.interactive.convert],
--   tags       := ["congruence"] }

/--
The `convert_to` tactic is for changing the type of the target or a local hypothesis,
but unlike the `change` tactic it will generate equality proof obligations using `congr!`
to resolve discrepancies.

* `convert_to ty` changes the target to `ty`
* `convert_to ty using n` uses `congr! n` instead of `congr! 1`
* `convert_to ty at h` changes the type of the local hypothesis `h` to `ty`.
  Any remaining `congr!` goals come first.

Operating on the target, the tactic `convert_to ty using n`
is the same as `convert (?_ : ty) using n`.
The difference is that `convert_to` takes a type but `convert` takes a proof term.

Except for it also being able to operate on local hypotheses,
the syntax for `convert_to` is the same as for `convert`, and it has variations such as
`convert_to ← g` and `convert_to (config := {transparency := .default}) g`.

Note that `convert_to ty at h` may leave a copy of `h` if a later local hypotheses or the target
depends on it, just like in `rw` or `simp`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7ecde04c6ca6ff2d948a48bcf8bb84159043a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
