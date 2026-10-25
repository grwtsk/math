# preprocess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24533cde47768b7cd2fe91ee1e2346066f3a41bea8f5e0dd59626aa54dd89f93",
  "kind": "def",
  "lexical_name": "preprocess",
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
  "slug": "preprocess--33b77cb5fbe48951ebe7e5f3",
  "source": {
    "blob": "7d67dead73db10b84667b80bb602f1028ba87a2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33b77cb5fbe48951ebe7e5f30fdd7b9b9f690c00874979100b1f33107e178e1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24533cde47768b7cd2fe91ee1e2346066f3a41bea8f5e0dd59626aa54dd89f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preprocess (e : Expr) : MetaM Simp.Result := do
  unless wf.preprocess.get (← getOptions) do
    return { expr := e }
  -- Transform `let`s to `have`s to enable `simp` entering let bodies.
  let e ← letToHave e
  lambdaTelescope e fun xs _ => do
    -- Annotate all xs with `wfParam`
    let xs' ← xs.mapM mkWfParam
    let e' := e.beta xs'

    -- Now run the simplifier
    let simprocs : Simprocs := {}
    let simprocs ← simprocs.add ``paramProj (post := true)
    let simprocs ← simprocs.add ``paramMatcher (post := false)
    let simprocs ← simprocs.add ``paramLet (post := true)
    let (result, _) ← Meta.simp e' (← getSimpContext) (simprocs := #[simprocs])

    -- Remove left-over markers
    let e'' ← Core.transform result.expr fun e =>
      e.withApp fun f as => do
        if f.isConstOf ``wfParam then
          if h : as.size ≥ 2 then
            return .continue (mkAppN as[1] as[2...*])
        return .continue

    -- Transform `have`s to `let`s for non-propositions.
    let e''' ← nonPropHaveToLet e''

    trace[Elab.definition.wf] "Attach-introduction:{indentExpr e'}\nto{indentExpr result.expr}\ncleand up to {indentExpr e'''}"

    let result := { result with expr := e''' }
    result.addLambdas xs

end Lean.Elab.WF
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantb4f8653bdad3a679ab68e186be9316acb53fd0f60865071678a15ad38475876c.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d67dead73db10b84667b80bb602f1028ba87a2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
