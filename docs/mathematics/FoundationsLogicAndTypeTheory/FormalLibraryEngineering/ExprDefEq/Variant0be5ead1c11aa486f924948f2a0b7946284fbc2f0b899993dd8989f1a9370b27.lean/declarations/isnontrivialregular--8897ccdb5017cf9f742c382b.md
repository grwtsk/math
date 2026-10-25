# isNonTrivialRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1b6d5b8fb74a346667942157e29e87dffaa0786e16f2a935d3f021be43fe0fd",
  "kind": "def",
  "lexical_name": "isNonTrivialRegular",
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
  "slug": "isnontrivialregular--8897ccdb5017cf9f742c382b",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1467,
    "line": 1405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8897ccdb5017cf9f742c382ba60aee071c4d08f49e0173c5a08752187cb082f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1b6d5b8fb74a346667942157e29e87dffaa0786e16f2a935d3f021be43fe0fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1405–1467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def isNonTrivialRegular (info : DefinitionVal) : MetaM Bool := do
  match info.hints with
  | .regular d =>
    if d > 2 then
      -- If definition depth is greater than 2, we claim it is not a trivial definition
      return true
    -- After consuming the lambda expressions, we consider a regular definition non-trivial if it is not "simple".
    -- Where simple is a bvar/lit/sort/proj or a single application where all arguments are bvar/lit/sort/proj.
    let val := consumeDefnPreamble info.value
    return !isSimple val (allowApp := true)
  | .abbrev =>
    /-
    **Note**: All projection functions receive `.abbrev` kernel hints (not `.regular`), regardless of their
    reducibility status. Structure projections default to `.reducible` status, while
    class projections default to `.semireducible` status. Recall kernel hints and reducibility hints are
    two different concepts.

    Projections have `.abbrev` hints and are generally considered trivial. But there is an exception
    when the projection is a class field and `backward.whnf.reducibleClassField` is `true`.
    In this scenario, `unfoldDefault` reduces past the `.proj` form at `.instances` transparency.
    This means the unfolded result may lose the instance structure that `isDefEqProj` needs to bump
    transparency. As an example, consider the following declarations
    ```
    @[implicit_reducible] def a := 0
    @[implicit_reducible] def b := 0
    class X where x : Nat
    instance instX (n : Nat) : X where x := n
    attribute [reducible] X.x
    ```
    Then, assume `isDefEqDelta` sees `X.x (instX a) =?= X.x (instX b)` and the transparency setting
    is `.reducible`. If we assume this kind of projection is trivial, `tryHeuristic` skips the
    argument comparison, and `unfoldDefault` reduces `X.x (instX a)` all the way to `a`
    (via projection reduction at `.instances`). The resulting `a =?= b` comparison fails at
    `.reducible` because both are `@[implicit_reducible]`.
    Thus, we classify this kind of projection as nontrivial, and `isDefEqArgs`
    compares `instX a =?= instX b` with the correct transparency bump for
    instance-implicit parameters, which succeeds. -/
    if let some projInfo ← getProjectionFnInfo? info.name then
      /- HACK: Only classify class projections as nontrivial at `.reducible` transparency,
         since `unfoldDefault`'s extra `.instances` reduction (the reason for this classification)
         only applies there. At higher transparency levels, the normal unfolding behavior is
         sufficient, and running the heuristic adds overhead without benefit.
         See https://github.com/leanprover/lean4/pull/12650 -/
      return projInfo.fromClass && backward.whnf.reducibleClassField.get (← getOptions) && (← getTransparency) == .reducible
    return false
  | .opaque => return false
where
  consumeDefnPreamble (e : Expr) : Expr :=
    match e with
    | .mdata _ e => consumeDefnPreamble e
    | .lam _ _ b _ => consumeDefnPreamble b
    | _ => e
  isSimple (e : Expr) (allowApp : Bool) : Bool :=
    match e with
    | .bvar .. | .sort .. | .lit .. | .fvar .. | .mvar .. => true
    | .app f a => isSimple a false && isSimple f allowApp
    | .proj _ _ b => isSimple b false
    | .mdata _ b => isSimple b allowApp
    | .lam .. | .letE .. | .forallE .. | .const .. => false

/-- Try to solve `f a₁ ... aₙ =?= f b₁ ... bₙ` by solving `a₁ =?= b₁, ..., aₙ =?= bₙ`.

    Auxiliary method for isDefEqDelta -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L1405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
