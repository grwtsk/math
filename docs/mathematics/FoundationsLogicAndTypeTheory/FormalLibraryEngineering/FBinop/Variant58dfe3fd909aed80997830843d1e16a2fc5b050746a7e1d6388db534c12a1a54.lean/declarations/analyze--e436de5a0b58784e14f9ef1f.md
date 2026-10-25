# analyze

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68461697396a9429be7f35cd85e047c01951081e2d7ed0474ff22fe414970f4c",
  "kind": "def",
  "lexical_name": "analyze",
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
  "slug": "analyze--e436de5a0b58784e14f9ef1f",
  "source": {
    "blob": "8e58cb0849763232931b7bd05c571e3bfebcb553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e436de5a0b58784e14f9ef1f017ff71a98ebe9366e30a8b8fe6846f4cea61b25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68461697396a9429be7f35cd85e047c01951081e2d7ed0474ff22fe414970f4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def analyze (t : Tree) (expectedType? : Option Expr) : TermElabM AnalyzeResult := do
  let maxS? ←
    match expectedType? with
    | none => pure none
    | some expectedType =>
      let expectedType ← instantiateMVars expectedType
      if let some (S, _) ← extractS expectedType then
        pure S
      else
        pure none
  (go t *> get).run' { maxS? }
where
  go (t : Tree) : StateRefT AnalyzeResult TermElabM Unit := do
    unless (← get).hasUncomparable do
      match t with
      | .macroExpansion _ _ _ nested => go nested
      | .binop _ _ lhs rhs => go lhs; go rhs
      | .term _ _ val =>
        let type ← instantiateMVars (← inferType val)
        let some (S, x) ← extractS type
          | return -- Rather than marking as incomparable, let's hope there's a coercion!
        match (← get).maxS? with
        | none     => modify fun s => { s with maxS? := S }
        | some maxS =>
          let some maxSx ← applyS maxS x | return -- Same here.
          unless ← withNewMCtxDepth <| isDefEqGuarded maxSx type do
            if ← hasCoeS S maxS x then
              return ()
            else if ← hasCoeS maxS S x then
              modify fun s => { s with maxS? := S }
            else
              trace[Elab.fbinop] "uncomparable types: {maxSx}, {type}"
              modify fun s => { s with hasUncomparable := true }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FBinop/Variant58dfe3fd909aed80997830843d1e16a2fc5b050746a7e1d6388db534c12a1a54.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e58cb0849763232931b7bd05c571e3bfebcb553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
