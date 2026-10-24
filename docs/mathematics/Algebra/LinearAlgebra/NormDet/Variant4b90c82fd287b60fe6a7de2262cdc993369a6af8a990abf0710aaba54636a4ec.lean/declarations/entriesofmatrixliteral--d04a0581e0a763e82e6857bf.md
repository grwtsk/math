# entriesOfMatrixLiteral?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e021cd9c5ccd870fdb7e2447e805baf1a4a7861fdd901b23128e29cc6a183752",
  "kind": "def",
  "lexical_name": "entriesOfMatrixLiteral?",
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
  "slug": "entriesofmatrixliteral--d04a0581e0a763e82e6857bf",
  "source": {
    "blob": "277c3cb305ee22d969ad7f0c5390dc2e03c13070",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/NormDet/Variant4b90c82fd287b60fe6a7de2262cdc993369a6af8a990abf0710aaba54636a4ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d04a0581e0a763e82e6857bf9a307ff9e993c01a1388a38396d3709b4acbd36f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NormDet/Variant4b90c82fd287b60fe6a7de2262cdc993369a6af8a990abf0710aaba54636a4ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e021cd9c5ccd870fdb7e2447e805baf1a4a7861fdd901b23128e29cc6a183752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def entriesOfMatrixLiteral? {u : Level} {α : Q(Type u)} {n : Q(ℕ)}
    (A : Q(Matrix (Fin $n) (Fin $n) $α)) :
    MetaM (Option (Array Q($α))) := do
  let some dim ← getNatValue? n | return none
  let ~q(Matrix.of $rows) := A | return none
  let (matrixRows, _, _) ← Matrix.matchVecConsPrefix n rows
  unless matrixRows.length == dim do return none
  let entriesByRow ← matrixRows.mapM fun row => do
    let (entries, _, _) ← Matrix.matchVecConsPrefix n row
    return entries
  unless entriesByRow.all (·.length == dim) do return none
  let entries ← entriesByRow.flatten.mapM fun entry => do
    let some entry ← checkTypeQ entry α | throwError "expected matrix entry to have type {α}"
    return entry
  return some entries.toArray

/-- The `norm_det` simproc normalizes determinants of matrices written using `!![...]`
notation over a commutative ring. -/
simproc_decl norm_det (Matrix.det _) := fun e => do
  let e ← instantiateMVars e
  let ⟨_, _, e⟩ ← inferTypeQ' e
  let ~q(@Matrix.det (Fin $n) _ _ _ $rα $matrix) := e | return .continue
  let some entries ← entriesOfMatrixLiteral? matrix | return .continue
  return .done (← normalizeDetFromEntries rα matrix entries)

/--
`eval_det` normalizes determinants of matrices written using `!![...]` notation
over a commutative ring.

Examples:

```lean
example : Matrix.det (R := ℤ) !![1, 2; 3, 4] = -2 := by
  eval_det

example {R : Type*} [CommRing R] (a b c d : R) :
    Matrix.det !![a, b; c, d] = a * d - b * c := by
  eval_det
  ring
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NormDet/Variant4b90c82fd287b60fe6a7de2262cdc993369a6af8a990abf0710aaba54636a4ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NormDet/Variant4b90c82fd287b60fe6a7de2262cdc993369a6af8a990abf0710aaba54636a4ec.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `277c3cb305ee22d969ad7f0c5390dc2e03c13070` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
