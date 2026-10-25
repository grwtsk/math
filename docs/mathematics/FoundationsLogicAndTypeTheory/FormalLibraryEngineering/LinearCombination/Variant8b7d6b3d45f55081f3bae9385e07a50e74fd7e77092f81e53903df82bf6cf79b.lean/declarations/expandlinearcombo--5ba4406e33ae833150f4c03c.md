# expandLinearCombo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd3f6d883757cccbda37ea9dd065486ce54c6fc4d49c5482dc6f714f20e52af2",
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
  "slug": "expandlinearcombo--5ba4406e33ae833150f4c03c",
  "source": {
    "blob": "6311d2131ef87ac2d1541009b41eada247f16231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ba4406e33ae833150f4c03c67c01ae18a0b457d1723ec88994d3d558ef86039",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd3f6d883757cccbda37ea9dd065486ce54c6fc4d49c5482dc6f714f20e52af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandLinearCombo (ty : Expr) (stx : Syntax.Term) : TermElabM Expanded := withRef stx do
  match stx with
  | `(($e)) => expandLinearCombo ty e
  | `($e₁ + $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ + $c₂)
    | .proof p₁, .const c₂ => .proof <$> ``(pf_add_c $p₁ $c₂)
    | .const c₁, .proof p₂ => .proof <$> ``(c_add_pf $p₂ $c₁)
    | .proof p₁, .proof p₂ => .proof <$> ``(add_pf $p₁ $p₂)
  | `($e₁ - $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ - $c₂)
    | .proof p₁, .const c₂ => .proof <$> ``(pf_sub_c $p₁ $c₂)
    | .const c₁, .proof p₂ => .proof <$> ``(c_sub_pf $p₂ $c₁)
    | .proof p₁, .proof p₂ => .proof <$> ``(sub_pf $p₁ $p₂)
  | `(-$e) => do
    match ← expandLinearCombo ty e with
    | .const c => .const <$> `(-$c)
    | .proof p => .proof <$> ``(neg_pf $p)
  | `(← $e) => do
    match ← expandLinearCombo ty e with
    | .const c => return .const c
    | .proof p => .proof <$> ``(Eq.symm $p)
  | `($e₁ * $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ * $c₂)
    | .proof p₁, .const c₂ => .proof <$> ``(pf_mul_c $p₁ $c₂)
    | .const c₁, .proof p₂ => .proof <$> ``(c_mul_pf $p₂ $c₁)
    | .proof p₁, .proof p₂ => .proof <$> ``(mul_pf $p₁ $p₂)
  | `($e⁻¹) => do
    match ← expandLinearCombo ty e with
    | .const c => .const <$> `($c⁻¹)
    | .proof p => .proof <$> ``(inv_pf $p)
  | `($e₁ / $e₂) => do
    match ← expandLinearCombo ty e₁, ← expandLinearCombo ty e₂ with
    | .const c₁, .const c₂ => .const <$> ``($c₁ / $c₂)
    | .proof p₁, .const c₂ => .proof <$> ``(pf_div_c $p₁ $c₂)
    | .const c₁, .proof p₂ => .proof <$> ``(c_div_pf $p₂ $c₁)
    | .proof p₁, .proof p₂ => .proof <$> ``(div_pf $p₁ $p₂)
  | e =>
    -- We have the expected type from the goal, so we can fully synthesize this leaf node.
    withSynthesize do
      -- It is OK to use `ty` as the expected type even if `e` is a proof.
      -- The expected type is just a hint.
      let c ← withSynthesizeLight <| Term.elabTerm e ty
      if (← whnfR (← inferType c)).isEq then
        .proof <$> c.toSyntax
      else
        .const <$> c.toSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant8b7d6b3d45f55081f3bae9385e07a50e74fd7e77092f81e53903df82bf6cf79b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6311d2131ef87ac2d1541009b41eada247f16231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
