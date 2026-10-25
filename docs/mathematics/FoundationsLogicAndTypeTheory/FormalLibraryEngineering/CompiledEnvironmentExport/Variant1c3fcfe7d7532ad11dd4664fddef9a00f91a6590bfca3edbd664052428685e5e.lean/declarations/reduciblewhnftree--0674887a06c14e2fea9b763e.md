# reducibleWhnfTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26fe1b29521e6625f9025dcb661ff88bbdacb6103f24c42723765848b1ce7161",
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
  "slug": "reduciblewhnftree--0674887a06c14e2fea9b763e",
  "source": {
    "blob": "7d4e2e4a7f2efffdbb6d114e8a69b7a368be8a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant1c3fcfe7d7532ad11dd4664fddef9a00f91a6590bfca3edbd664052428685e5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0674887a06c14e2fea9b763ead4edd062e4b855aa3f0ed8db20993bae623fc4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant1c3fcfe7d7532ad11dd4664fddef9a00f91a6590bfca3edbd664052428685e5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26fe1b29521e6625f9025dcb661ff88bbdacb6103f24c42723765848b1ce7161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–132.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant1c3fcfe7d7532ad11dd4664fddef9a00f91a6590bfca3edbd664052428685e5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant1c3fcfe7d7532ad11dd4664fddef9a00f91a6590bfca3edbd664052428685e5e.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4e2e4a7f2efffdbb6d114e8a69b7a368be8a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
