# stringM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18c97fb195e0d27ddab83a869e32f0ffe8859c486e6b85f8ea1f5a8255f8329a",
  "kind": "def",
  "lexical_name": "stringM?",
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
  "slug": "stringm--b93c8415cea7ae77cd76f50e",
  "source": {
    "blob": "a4c960de88eb8a9e7aa1908a106f567be2a71710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 336,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantf1922bea3c36e0f1287992588a2fddb722ebecafc91577325d148706c3b4d733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b93c8415cea7ae77cd76f50e7c8450d1db921744c684cff41e33d4b4071e57cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantf1922bea3c36e0f1287992588a2fddb722ebecafc91577325d148706c3b4d733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18c97fb195e0d27ddab83a869e32f0ffe8859c486e6b85f8ea1f5a8255f8329a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stringM? (e : Expr) : MetaM (Option Html) := do
  let e ← instantiateMVars e
  let k ← mkKind e
  let x : Option (List (List Node) × List (List Strand)) ← (match k with
    | .monoidal => do
      let some ctx ← BicategoryLike.mkContext? (ρ := Monoidal.Context) e | return none
      CoherenceM.run (ctx := ctx) do
        let e' := (← BicategoryLike.eval k.name (← MkMor₂.ofExpr e)).expr
        return some (← e'.nodes, ← e'.strands)
    | .bicategory => do
      let some ctx ← BicategoryLike.mkContext? (ρ := Bicategory.Context) e | return none
      CoherenceM.run (ctx := ctx) do
        let e' := (← BicategoryLike.eval k.name (← MkMor₂.ofExpr e)).expr
        return some (← e'.nodes, ← e'.strands)
    | .none => return none)
  match x with
  | none => return none
  | some (nodes, strands) => do
    DiagramBuilderM.run do
      mkStringDiagram nodes strands
      trace[string_diagram] "Penrose substance: \n{(← get).sub}"
      match ← DiagramBuilderM.buildDiagram dsl sty with
      | some html => return html
      | none => return <span>No non-structural morphisms found.</span>

open scoped Jsx in
/-- Help function for displaying two string diagrams in an equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantf1922bea3c36e0f1287992588a2fddb722ebecafc91577325d148706c3b4d733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantf1922bea3c36e0f1287992588a2fddb722ebecafc91577325d148706c3b4d733.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c960de88eb8a9e7aa1908a106f567be2a71710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
