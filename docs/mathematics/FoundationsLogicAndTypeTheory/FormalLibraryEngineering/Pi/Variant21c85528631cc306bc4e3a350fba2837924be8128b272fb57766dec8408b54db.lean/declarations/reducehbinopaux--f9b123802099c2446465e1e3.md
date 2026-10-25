# reduceHBinOpAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74cb612347c8fb9c0f422cc916da2a620fa5d2e6ab24ce4d11dc76f13f452a4b",
  "kind": "def",
  "lexical_name": "reduceHBinOpAux",
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
  "slug": "reducehbinopaux--f9b123802099c2446465e1e3",
  "source": {
    "blob": "f150b0e68fbc53fe18e78708b3824414e4b80833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9b123802099c2446465e1e3f3e87b27b7b2a191eb0a538e3fd2116ba87658bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74cb612347c8fb9c0f422cc916da2a620fa5d2e6ab24ce4d11dc76f13f452a4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceHBinOpAux (args : Array Expr) (lambdas : List FVarId) (instH instPi : Name) :
    OptionT MetaM (Expr × Expr × Expr × List FVarId) := do
  let some (mkApp2 (.const instH' _) type inst) := args[3]? | failure
  guard (instH == instH')
  if args.size ≤ 6 then
    etaExpand args type lambdas 6 fun args lambdas =>
      distributeLambdas lambdas type args[4]! args[5]!
  else
  /- use that `(f + g) a = f a + g a` -/
  let mut type := type
  let mut inst := inst
  let mut lhs := args[4]!
  let mut rhs := args[5]!
  for arg in args[6:] do
    let mkApp3 (.const i _) _ f inst' := inst | return (type, lhs, rhs, lambdas)
    unless i == instPi do return (type, lhs, rhs, lambdas)
    type := .app f arg
    inst := inst'
    lhs := .app lhs arg
    rhs := .app rhs arg
  distributeLambdas lambdas type lhs rhs
where
  /-- use that `(fun x => f x + g x) = f + g` -/
  distributeLambdas (lambdas : List FVarId) (type lhs rhs : Expr) :
    MetaM (Expr × Expr × Expr × List FVarId) := match lambdas with
    | fvarId :: lambdas => do
      let decl ← fvarId.getDecl
      let type := .forallE decl.userName decl.type (type.abstract #[.fvar fvarId]) decl.binderInfo
      let lhs  := .lam     decl.userName decl.type (lhs.abstract  #[.fvar fvarId]) decl.binderInfo
      let rhs  := .lam     decl.userName decl.type (rhs.abstract  #[.fvar fvarId]) decl.binderInfo
      distributeLambdas lambdas type lhs rhs
    | [] => return (type, lhs, rhs, [])

/-- Normalize an application if the head is  `+`, `*`, `-` or `/`.
Optionally return the `(type, lhs, rhs, lambdas)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pi/Variant21c85528631cc306bc4e3a350fba2837924be8128b272fb57766dec8408b54db.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f150b0e68fbc53fe18e78708b3824414e4b80833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
