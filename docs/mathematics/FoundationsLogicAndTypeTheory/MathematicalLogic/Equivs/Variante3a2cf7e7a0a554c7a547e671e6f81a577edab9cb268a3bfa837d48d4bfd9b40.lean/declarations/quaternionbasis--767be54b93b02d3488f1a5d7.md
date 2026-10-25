# quaternionBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3f0d7b805b959246e513dd9c4f7b8583853ca0674376b5515c86d866cc14e96",
  "kind": "def",
  "lexical_name": "quaternionBasis",
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
  "slug": "quaternionbasis--767be54b93b02d3488f1a5d7",
  "source": {
    "blob": "035312ffac82244ddca8c45e090a65cf72bfcff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variante3a2cf7e7a0a554c7a547e671e6f81a577edab9cb268a3bfa837d48d4bfd9b40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:767be54b93b02d3488f1a5d7a0a6dd68f5cb9de6d091b9afde8b1091dd8a35fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variante3a2cf7e7a0a554c7a547e671e6f81a577edab9cb268a3bfa837d48d4bfd9b40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3f0d7b805b959246e513dd9c4f7b8583853ca0674376b5515c86d866cc14e96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quaternionBasis : QuaternionAlgebra.Basis (CliffordAlgebra (Q c₁ c₂)) c₁ 0 c₂ where
  i := ι (Q c₁ c₂) (1, 0)
  j := ι (Q c₁ c₂) (0, 1)
  k := ι (Q c₁ c₂) (1, 0) * ι (Q c₁ c₂) (0, 1)
  i_mul_i := by
    rw [ι_sq_scalar, Q_apply, ← Algebra.algebraMap_eq_smul_one]
    simp
  j_mul_j := by
    rw [ι_sq_scalar, Q_apply, ← Algebra.algebraMap_eq_smul_one]
    simp
  i_mul_j := rfl
  j_mul_i := by
    rw [zero_smul, zero_sub, eq_neg_iff_add_eq_zero, ι_mul_ι_add_swap, QuadraticMap.polar]
    simp

variable {c₁ c₂}

/-- Intermediate result of `CliffordAlgebraQuaternion.equiv`: clifford algebras over
`CliffordAlgebraQuaternion.Q` can be converted to `ℍ[R,c₁,c₂]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variante3a2cf7e7a0a554c7a547e671e6f81a577edab9cb268a3bfa837d48d4bfd9b40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variante3a2cf7e7a0a554c7a547e671e6f81a577edab9cb268a3bfa837d48d4bfd9b40.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035312ffac82244ddca8c45e090a65cf72bfcff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
