# unfoldManyCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81ee66ca5eba4081796920ae7bd256a640ae68547cfc940ee0199d050bb41534",
  "kind": "def",
  "lexical_name": "unfoldManyCore",
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
  "slug": "unfoldmanycore--d8b5e03516eee448901ef507",
  "source": {
    "blob": "ec17eac003e0e6beceda2b6fc015df3e496c060c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8b5e03516eee448901ef5078126583c448ff922ead32f73d9283133d1ca40e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81ee66ca5eba4081796920ae7bd256a640ae68547cfc940ee0199d050bb41534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unfoldManyCore (ctx : Simp.Context) (unfold? : Name → Option (Option Name))
    (e : Expr) : StateRefT (Array Name) MetaM Simp.Result :=
  λ usedDeclsRef =>
    (·.fst) <$> Simp.main e ctx (methods := { pre := (pre · usedDeclsRef) })
where
  -- NOTE: once we succeed in unfolding something, we return `done`. This
  -- means that `simp` won't recurse into the unfolded expression, missing
  -- potential further opportunities for unfolding.
  --
  -- I've tried returning
  -- `visit` instead, in which case we get recursive unfolding as desired, but
  -- we also get different results than when we call the `unfold` tactic
  -- multiple times.
  --
  -- Aesop calls `unfold` multiple times anyway, so the current implementation
  -- is slow but correct.
  pre (e : Expr) : StateRefT (Array Name) SimpM Simp.Step := do
    let some decl := e.getAppFn'.constName?
      | return .continue
    match unfold? decl with
    | none =>
      return .continue
    | some none =>
      if let some e' ← delta? e (λ n => n == decl) then
        modify (·.push decl)
        return .done { expr := e' }
      else
        return .continue
    | some (some unfoldThm) =>
      let result? ← withReducible <|
        Simp.tryTheorem? e
          { origin := .decl unfoldThm
            proof := mkConst unfoldThm
            rfl := ← isRflTheorem unfoldThm }
      match result? with
      | none   => return .continue
      | some r =>
        modify (·.push decl)
        match (← reduceMatcher? r.expr) with
        | .reduced e' => return .done { r with expr := e' }
        | _ => return .done r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec17eac003e0e6beceda2b6fc015df3e496c060c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
