# entriesOfMatrixLiteral?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eb239e786a401694f41bc31d44967772fd3909af58602a7ff87c1204e971450",
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
  "slug": "entriesofmatrixliteral--79ff560ff3b7126792a54562",
  "source": {
    "blob": "d99976a2bcca24f01a21cfa3d2dead5882906b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79ff560ff3b7126792a54562c9e15333f480321f7fb29248ca8974213e2e2c71",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eb239e786a401694f41bc31d44967772fd3909af58602a7ff87c1204e971450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–90.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d99976a2bcca24f01a21cfa3d2dead5882906b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
