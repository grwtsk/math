# expandLinearCombo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:899dd038a0c87192a87e2abd453b52d0f9d3bcaedfa1dff92a584355b365eacc",
  "kind": "def",
  "lexical_name": "expandLinearCombo",
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
  "slug": "expandlinearcombo--a1f83d457128915c2261a3cb",
  "source": {
    "blob": "88ba7708252df5e7c1b5636afa68a0bea180546c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1f83d457128915c2261a3cb6220fbec22a89a6c298758603a50bfd12ea01aec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:899dd038a0c87192a87e2abd453b52d0f9d3bcaedfa1dff92a584355b365eacc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandLinearCombo (ty : Option Expr) (stx : Syntax.Term) :
    TermElabM Expanded := withRef stx do
  match stx with
  | `(($e)) => expandLinearCombo ty e
  | `($e₁ + $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ + $c₂)
    | .proof rel₁ p₁, .proof rel₂ p₂ =>
      let i := mkIdent <| Ineq.addRelRelData rel₁ rel₂
      .proof (max rel₁ rel₂) <$> ``($i $p₁ $p₂)
    | .proof rel p, .const c | .const c, .proof rel p =>
      logWarningAt c "this constant has no effect on the linear combination; it can be dropped \
        from the term"
      pure (.proof rel p)
  | `($e₁ - $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ - $c₂)
    | .proof rel p, .const c =>
      logWarningAt c "this constant has no effect on the linear combination; it can be dropped \
        from the term"
      pure (.proof rel p)
    | .const c, .proof eq p =>
      logWarningAt c "this constant has no effect on the linear combination; it can be dropped \
        from the term"
      .proof eq <$> ``(Eq.symm $p)
    | .proof rel₁ p₁, .proof eq p₂ =>
      let i := mkIdent <| Ineq.addRelRelData rel₁ eq
      .proof rel₁ <$> ``($i $p₁ (Eq.symm $p₂))
    | _, .proof _ _ =>
      throwError "coefficients of inequalities in 'linear_combination' must be nonnegative"
  | `(-$e) => do
      match ← expandLinearCombo ty e with
      | .const c => .const <$> `(-$c)
      | .proof eq p => .proof eq <$> ``(Eq.symm $p)
      | .proof _ _ =>
        throwError "coefficients of inequalities in 'linear_combination' must be nonnegative"
  | `($e₁ *%$tk $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ * $c₂)
    | .proof rel₁ p₁, .const c₂ => rescale mulRelConstData ty p₁ c₂ rel₁
    | .const c₁, .proof rel₂ p₂ => rescale mulConstRelData ty p₂ c₁ rel₂
    | .proof _ _, .proof _ _ =>
      throwErrorAt tk "'linear_combination' supports only linear operations"
  | `($e₁ •%$tk $e₂) => do
    match ← expandLinearCombo none e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ • $c₂)
    | .proof rel₁ p₁, .const c₂ => rescale smulRelConstData ty p₁ c₂ rel₁
    | .const c₁, .proof rel₂ p₂ => rescale smulConstRelData none p₂ c₁ rel₂
    | .proof _ _, .proof _ _ =>
      throwErrorAt tk "'linear_combination' supports only linear operations"
  | `($e₁ /%$tk $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ / $c₂)
    | .proof rel₁ p₁, .const c₂ => rescale divRelConstData ty p₁ c₂ rel₁
    | _, .proof _ _ => throwErrorAt tk "'linear_combination' supports only linear operations"
  | e =>
    -- We have the expected type from the goal, so we can fully synthesize this leaf node.
    withSynthesize do
      -- It is OK to use `ty` as the expected type even if `e` is a proof.
      -- The expected type is just a hint.
      let c ← withSynthesizeLight <| Term.elabTerm e ty
      match ← try? (← inferType c).ineq? with
      | some (rel, _) => .proof rel <$> c.toSyntax
      | none => .const <$> c.toSyntax

/-- Implementation of `linear_combination`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ba7708252df5e7c1b5636afa68a0bea180546c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
