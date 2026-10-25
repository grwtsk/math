# evalDual?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0e9f1ab7788f3105756dedcd08c07442d601e16607ecdb2285bd84eaab18300",
  "kind": "def",
  "lexical_name": "evalDual?",
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
  "slug": "evaldual--80860a0e4cf4fb5a73426ea2",
  "source": {
    "blob": "47093bf878447aa38a00d9061606763e7b74b8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80860a0e4cf4fb5a73426ea22b0218af5029cf320910bfba34ec3b28be2c6e4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0e9f1ab7788f3105756dedcd08c07442d601e16607ecdb2285bd84eaab18300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evalDual? (e : Expr) (ρ : DualEnv) : Option DualInterval :=
  match e with
  | Expr.const q => some (DualInterval.const q)
  | Expr.var idx => some (ρ idx)
  | Expr.add e₁ e₂ =>
      match evalDual? e₁ ρ, evalDual? e₂ ρ with
      | some d₁, some d₂ => some (DualInterval.add d₁ d₂)
      | _, _ => none
  | Expr.mul e₁ e₂ =>
      match evalDual? e₁ ρ, evalDual? e₂ ρ with
      | some d₁, some d₂ => some (DualInterval.mul d₁ d₂)
      | _, _ => none
  | Expr.neg e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.neg d)
      | none => none
  | Expr.inv e₁ =>
      match evalDual? e₁ ρ with
      | none => none
      | some d => DualInterval.inv? d
  | Expr.exp e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.exp d)
      | none => none
  | Expr.sin e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.sin d)
      | none => none
  | Expr.cos e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.cos d)
      | none => none
  | Expr.log e =>
      match evalDual? e ρ with
      | none => none
      | some d => DualInterval.log? d
  | Expr.atan e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.atan d)
      | none => none
  | Expr.arsinh e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.arsinh d)
      | none => none
  | Expr.atanh _ =>
      -- atanh is partial (defined only for |x| < 1) and requires complex bounds
      -- We return none to avoid the complexity of proving atanh bounds
      none
  | Expr.sinc e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.sinc d)
      | none => none
  | Expr.erf e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.erf d)
      | none => none
  | Expr.sinh e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.sinh d)
      | none => none
  | Expr.cosh e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.cosh d)
      | none => none
  | Expr.tanh e =>
      match evalDual? e ρ with
      | some d => some (DualInterval.tanh d)
      | none => none
  | Expr.sqrt e =>
      match evalDual? e ρ with
      | some d => DualInterval.sqrt? d
      | none => none
  | Expr.namedConst c => some (DualInterval.ofMathConst c)

/-- Single-variable version of evalDual? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant8bdf65063d5d2c257d73ec8469a6351db431d59fb2916ac73cbf9010cc8b2c17.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47093bf878447aa38a00d9061606763e7b74b8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
