# expandLinearCombo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:298168b62c50f83aff2b6063c9b792d21e6f9049775efc3ff6901ac93427b7c6",
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
  "slug": "expandlinearcombo--3ede2cdb4048a5bbb77fcd9c",
  "source": {
    "blob": "dd3d44c1922b1dfbc2896e7cc0eae897748279db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ede2cdb4048a5bbb77fcd9cfb198e2264eff25561e2330f49f5bac07a9ea534",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:298168b62c50f83aff2b6063c9b792d21e6f9049775efc3ff6901ac93427b7c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandLinearCombo (stx : Syntax.Term) : TermElabM (Option Syntax.Term) := do
  let mut result ← match stx with
  | `(($e)) => expandLinearCombo e
  | `($e₁ + $e₂) => do
    match ← expandLinearCombo e₁, ← expandLinearCombo e₂ with
    | none, none => pure none
    | some p₁, none => ``(pf_add_c $p₁ $e₂)
    | none, some p₂ => ``(c_add_pf $p₂ $e₁)
    | some p₁, some p₂ => ``(add_pf $p₁ $p₂)
  | `($e₁ - $e₂) => do
    match ← expandLinearCombo e₁, ← expandLinearCombo e₂ with
    | none, none => pure none
    | some p₁, none => ``(pf_sub_c $p₁ $e₂)
    | none, some p₂ => ``(c_sub_pf $p₂ $e₁)
    | some p₁, some p₂ => ``(sub_pf $p₁ $p₂)
  | `(-$e) => do
    match ← expandLinearCombo e with
    | none => pure none
    | some p => ``(neg_pf $p)
  | `(← $e) => do
    match ← expandLinearCombo e with
    | none => pure none
    | some p => ``(Eq.symm $p)
  | `($e₁ * $e₂) => do
    match ← expandLinearCombo e₁, ← expandLinearCombo e₂ with
    | none, none => pure none
    | some p₁, none => ``(pf_mul_c $p₁ $e₂)
    | none, some p₂ => ``(c_mul_pf $p₂ $e₁)
    | some p₁, some p₂ => ``(mul_pf $p₁ $p₂)
  | `($e⁻¹) => do
    match ← expandLinearCombo e with
    | none => pure none
    | some p => ``(inv_pf $p)
  | `($e₁ / $e₂) => do
    match ← expandLinearCombo e₁, ← expandLinearCombo e₂ with
    | none, none => pure none
    | some p₁, none => ``(pf_div_c $p₁ $e₂)
    | none, some p₂ => ``(c_div_pf $p₂ $e₁)
    | some p₁, some p₂ => ``(div_pf $p₁ $p₂)
  | e => do
    let e ← elabTerm e none
    let eType ← inferType e
    let .true := (← withReducible do whnf eType).isEq | pure none
    some <$> e.toSyntax
  return result.map fun r => ⟨r.raw.setInfo (SourceInfo.fromRef stx true)⟩

/-- A configuration object for `linear_combination`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant04ad69464731ec411c64035a8d0dfb05958e40e4b5ac983ad247561756ca6a82.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd3d44c1922b1dfbc2896e7cc0eae897748279db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
