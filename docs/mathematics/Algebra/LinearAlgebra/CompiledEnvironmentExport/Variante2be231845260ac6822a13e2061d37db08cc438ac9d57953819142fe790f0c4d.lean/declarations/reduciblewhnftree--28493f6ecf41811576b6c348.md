# reducibleWhnfTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3c8cc3ffda813b1100baf3edf88d8d37a0adf7faa14140564b3f01c3153329f",
  "kind": "def",
  "lexical_name": "reducibleWhnfTree",
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
  "slug": "reduciblewhnftree--28493f6ecf41811576b6c348",
  "source": {
    "blob": "4c358b708ffe569ee5a53a52fdd6edf930f9e3d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28493f6ecf41811576b6c34826bcbd0e0775d3ff1506773d28adc7a4c54955d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3c8cc3ffda813b1100baf3edf88d8d37a0adf7faa14140564b3f01c3153329f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def reducibleWhnfTree (expression : Expr) : MetaM Expr := do
  let expression ← Meta.whnf expression
  match expression with
  | .app function argument =>
      return .app (← reducibleWhnfTree function) (← reducibleWhnfTree argument)
  | .lam name domain body binderInfo =>
      let domain ← reducibleWhnfTree domain
      Meta.withLocalDecl name binderInfo domain fun localVar => do
        let body ← reducibleWhnfTree (body.instantiate1 localVar)
        Meta.mkLambdaFVars #[localVar] body
  | .forallE name domain body binderInfo =>
      let domain ← reducibleWhnfTree domain
      Meta.withLocalDecl name binderInfo domain fun localVar => do
        let body ← reducibleWhnfTree (body.instantiate1 localVar)
        Meta.mkForallFVars #[localVar] body
  | .letE name type value body nondep =>
      let type ← reducibleWhnfTree type
      let value ← reducibleWhnfTree value
      Meta.mapLetDecl name type value (nondep := nondep) fun localVar =>
        reducibleWhnfTree (body.instantiate1 localVar)
  | .mdata data body =>
      return .mdata data (← reducibleWhnfTree body)
  | .proj typeName index object =>
      return .proj typeName index (← reducibleWhnfTree object)
  | expression => return expression

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CompiledEnvironmentExport/Variante2be231845260ac6822a13e2061d37db08cc438ac9d57953819142fe790f0c4d.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c358b708ffe569ee5a53a52fdd6edf930f9e3d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
