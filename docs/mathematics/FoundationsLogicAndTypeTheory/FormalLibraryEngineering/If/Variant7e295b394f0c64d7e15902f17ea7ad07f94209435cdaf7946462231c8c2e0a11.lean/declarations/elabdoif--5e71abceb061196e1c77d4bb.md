# elabDoIf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dc500c59d1c3a741efe65a4ac75eb163e62b3ae8da3c884fd567875ac493213",
  "kind": "def",
  "lexical_name": "elabDoIf",
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
  "slug": "elabdoif--5e71abceb061196e1c77d4bb",
  "source": {
    "blob": "5f5fc9353843052d4837bd5f1f6b138f03b11413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e71abceb061196e1c77d4bbb3e612e52291b644bb76a15ff7d7711934e770fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dc500c59d1c3a741efe65a4ac75eb163e62b3ae8da3c884fd567875ac493213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_doElem_elab Lean.Parser.Term.doIf] def elabDoIf : DoElab := fun stx dec => do
  let `(doIf|if $cond:doIfCond then $thenSeq else $elseSeq) := stx | throwUnsupportedSyntax
  let info := (← inferControlInfoSeq thenSeq).alternative (← inferControlInfoSeq elseSeq)
  dec.withDuplicableCont info fun dec => do
  match cond with
  | `(doIfCond|$cond) => elabIte cond thenSeq elseSeq dec
  | `(doIfCond|$h : $cond) => elabDite h cond thenSeq elseSeq dec
  | _ => throwUnsupportedSyntax
where
  elabIte cond thenSeq elseSeq dec := do
    -- It turned out to be far more reliable to offload as much work as possible to the App
    -- elaborator. However, for Lake.Package.mkBuildArchiveFacetConfig, we still need to postpone.
    doElabToSyntax "then branch of if with condition {cond}" (elabDoSeq thenSeq dec) fun then_ => do
    doElabToSyntax "else branch of if with condition {cond}" (elabDoSeq elseSeq dec) fun else_ => do
    let mγ ← mkMonadApp (← read).doBlockResultType
    Term.elabTermEnsuringType (← `(if $cond then $then_ else $else_)) mγ

  elabDite h cond thenSeq elseSeq dec := do
    let elabDiteBranch (then_ : Bool) : DoElabM Expr := do
      elabDoSeq (if then_ then thenSeq else elseSeq) dec
    doElabToSyntax "then branch of if with condition {cond}" (elabDiteBranch true) fun then_ => do
    doElabToSyntax "else branch of if with condition {cond}" (elabDiteBranch false) fun else_ => do
    let mγ ← mkMonadApp (← read).doBlockResultType
    match h with
    | `(_%$tk) => Term.elabTermEnsuringType (← `(if _%$tk : $cond then $then_ else $else_)) mγ
    | `($h:ident) => Term.elabTermEnsuringType (← `(if $h:ident : $cond then $then_ else $else_)) mγ
    | _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant7e295b394f0c64d7e15902f17ea7ad07f94209435cdaf7946462231c8c2e0a11.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5fc9353843052d4837bd5f1f6b138f03b11413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
