# mkCasesOnMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08cb4baa486eb6f31ce016524ce646879b8b64dcaccbb2a0c31c7ea35e699efd",
  "kind": "def",
  "lexical_name": "mkCasesOnMatch",
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
  "slug": "mkcasesonmatch--63c955f500dea15c45175b70",
  "source": {
    "blob": "95bc102a890ea8258bcc0702b2e62cd947938793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63c955f500dea15c45175b70e963fce2679d25c8108c304eb07f9a6a09e551c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08cb4baa486eb6f31ce016524ce646879b8b64dcaccbb2a0c31c7ea35e699efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCasesOnMatch (type : Name) (levels : List Level) (params : List Expr) (motive : Expr)
    (indices : List Expr) (val : Expr)
    (rhss : (ctor : Name) → (fields : List FVarId) → TermElabM Expr) : TermElabM Expr := do
  let matcherName ← getDeclName? >>= (fun n? => Lean.mkAuxName (.mkStr (n?.getD type) "match") 1)
  let matchType ← generalizeTelescope (indices.concat val).toArray fun iargs =>
    mkForallFVars iargs (motive.beta iargs)
  let iinfo ← getConstInfoInduct type
  let lhss ← iinfo.ctors.mapM fun ctor => do
    let cinfo ← getConstInfoCtor ctor
    let catype ←
      instantiateForall (cinfo.type.instantiateLevelParams cinfo.levelParams levels) params.toArray
    forallBoundedTelescope catype cinfo.numFields fun cargs _ => do
      let fvarDecls ← cargs.toList.mapM fun carg => getFVarLocalDecl carg
      let fieldPats := cargs.toList.map fun carg => Pattern.var carg.fvarId!
      let patterns := [Pattern.ctor cinfo.name levels params fieldPats]
      return { ref := .missing
               fvarDecls
               patterns }
  let mres ← Term.mkMatcher { matcherName
                              matchType
                              discrInfos := .replicate (indices.length + 1) {}
                              lhss }
  mres.addMatcher
  let rhss ← lhss.mapM fun altLHS => do
    let [.ctor ctor _ _ cpats] := altLHS.patterns | unreachable!
    withExistingLocalDecls altLHS.fvarDecls do
      let fields := altLHS.fvarDecls.map LocalDecl.fvarId
      let rhsBody ← rhss ctor fields
      if cpats.isEmpty then
        mkFunUnit rhsBody
      else
        mkLambdaFVars (fields.map Expr.fvar).toArray rhsBody
  return mkAppN mres.matcher (motive :: indices ++ [val] ++ rhss).toArray

/-- Get `FVarId`s which is not implementation details in the current context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant5583e72bacaad5e96751b8b24f1c3ce78ba0365d9caabc43f7883fa57f465ff8.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95bc102a890ea8258bcc0702b2e62cd947938793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
