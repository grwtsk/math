# isDefEqBindingAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f86f3e1534d1b517a194ed47b9925c8c49b0daf6b4d38538cba1604c9466fb8",
  "kind": "def",
  "lexical_name": "isDefEqBindingAux",
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
  "slug": "isdefeqbindingaux--91f684df59e3c8e4d799a45f",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 459,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91f684df59e3c8e4d799a45f0febd082e61db4c6d97a89c6303882cb71c553e9",
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

Occurrence: `declaration:6f86f3e1534d1b517a194ed47b9925c8c49b0daf6b4d38538cba1604c9466fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isDefEqBindingAux (lctx : LocalContext) (fvars : Array Expr) (e₁ e₂ : Expr) (ds₂ : Array Expr) : MetaM Bool :=
  let process (n : Name) (d₁ d₂ b₁ b₂ : Expr) : MetaM Bool := do
    let d₁     := d₁.instantiateRev fvars
    let d₂     := d₂.instantiateRev fvars
    let fvarId ← mkFreshFVarId
    let lctx   := lctx.mkLocalDecl fvarId n d₁
    let fvars  := fvars.push (mkFVar fvarId)
    isDefEqBindingAux lctx fvars b₁ b₂ (ds₂.push d₂)
  match e₁, e₂ with
  | .forallE n d₁ b₁ _, .forallE _ d₂ b₂ _ => process n d₁ d₂ b₁ b₂
  | .lam     n d₁ b₁ _, .lam     _ d₂ b₂ _ => process n d₁ d₂ b₁ b₂
  | _,                  _                  =>
    withLCtx' lctx do
      isDefEqBindingDomain fvars ds₂ do
        Meta.isExprDefEqAux (e₁.instantiateRev fvars) (e₂.instantiateRev fvars)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
