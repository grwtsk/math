# withApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d524f6a6f1716d1bd34978877586f4def62a7fcb019af4ec1237652fe3771ed",
  "kind": "def",
  "lexical_name": "withApp",
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
  "slug": "withapp--a621039fad46d0bb1f07374e",
  "source": {
    "blob": "0943135b5d13b5a3adae23214b7283b0fb3c9bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a621039fad46d0bb1f07374ec3c605fe156e9322e87ca9de5ec5daa210ab9854",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d524f6a6f1716d1bd34978877586f4def62a7fcb019af4ec1237652fe3771ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def withApp {α} (e : Expr) (k : Expr → Array Arg → MetaM α) : MetaM α :=
  go e #[]
where
  /-- -/
  go : Expr → Array Arg →  MetaM α
    | .mdata _ b, as => go b as
    | .app (.app c f) x, as => do
      if ← isCoeFun c then
        go f (as.push { coe := c, expr := x})
      else
        go (.app c f) (as.push { expr := x})
    | .app (.proj n i f) x, as => do
      -- convert proj back to function application
      let env ← getEnv
      let info := getStructureInfo? env n |>.get!
      let projFn := getProjFnForField? env n (info.fieldNames[i]!) |>.get!
      let .app c f ← mkAppM projFn #[f] | panic! "bug in Mor.withApp"

      go (.app (.app c f) x) as
    | .app f a, as =>
      go f (as.push { expr := a })
    | f        , as => k f as.reverse


/--
If the given expression is a sequence of morphism applications `f a₁ .. aₙ`, return `f`.
Otherwise return the input expression.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mor/Variant93d0afad25b973da71ae12d4527e74593d54ac8ab8d4aa02042500682ae10962.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0943135b5d13b5a3adae23214b7283b0fb3c9bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
