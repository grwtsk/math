# mkCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a303c2a081fdf05f6faf56025a708ec70dac99de2870ce11710a1e386b99d8e6",
  "kind": "def",
  "lexical_name": "mkCertificate",
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
  "slug": "mkcertificate--08865eace0ea6b1a4dcd7ae8",
  "source": {
    "blob": "3ffcdbfde99b11389744b58363860ae652fa6f34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cert/Variantccaf9e587267ec6449b3cb5b0301e2d45b719d22fb3e9f64baffa6b1387fb05c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08865eace0ea6b1a4dcd7ae8dce1497d92af4c923f3dbd1f7e03b803f3902444",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cert/Variantccaf9e587267ec6449b3cb5b0301e2d45b719d22fb3e9f64baffa6b1387fb05c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a303c2a081fdf05f6faf56025a708ec70dac99de2870ce11710a1e386b99d8e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCertificate {u : Level} {m n : ℕ} {α : Q(Type u)} (_cr : Q(CommRing $α))
    (A : Q(Matrix (Fin $m) (Fin $n) $α)) (entries : Array (Array Expr))
    (data : BareissData Expr) : MetaM Q(Echelon.Decomposition $A) := do
  have L := mkMatrixLit α m m data.L
  have U := mkMatrixLit α m n data.U
  -- the row of `A_σ = A.submatrix σ id` at position `i` is the row of `A` at `σ i`
  have Aσ := mkMatrixLit α m n (data.rowOrder.map (entries[·]!))
  let σ ← mkPerm m data.swaps
  let pivot ← mkPivotLit m n data.pivot
  let hperm ← certifyCondition "the row arrangement" q(($A).submatrix $σ id = $Aσ)
  -- TODO: switch to a dedicated matrix multiplication tactic once implemented
  let hprod ← certifyCondition "the product of the transform" q($L * $Aσ = $U)
  have hU : Q($L * ($A).submatrix $σ id = $U) := q($hperm ▸ $hprod)
  let hpivot ← certifyCondition "the echelon-pivot condition" q(($U).IsPivotedBy $pivot)
  let hlower ← certifyCondition "lower triangularity of the transform" q(($L).IsLowerTriangular)
  let hdiag ← certifyCondition "the nonzero diagonal of the transform" q(∀ i, ($L).diag i ≠ 0)
  return q(⟨$L, $σ, $pivot, $hU ▸ $hpivot, $hlower, $hdiag⟩)

end Mathlib.Tactic.Echelon
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Cert/Variantccaf9e587267ec6449b3cb5b0301e2d45b719d22fb3e9f64baffa6b1387fb05c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Cert/Variantccaf9e587267ec6449b3cb5b0301e2d45b719d22fb3e9f64baffa6b1387fb05c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ffcdbfde99b11389744b58363860ae652fa6f34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
