# quaternionBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b05561b9df94bf732afc206515631d23282466c259e76b6095c286f517325b10",
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
  "slug": "quaternionbasis--383e6083c4804ccfacccadcd",
  "source": {
    "blob": "a65ea0d047b84f7c1ea409024bfbf24fdda4c019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:383e6083c4804ccfacccadcd879b684c219fa0e1e7054e782d6c9e291756c9fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b05561b9df94bf732afc206515631d23282466c259e76b6095c286f517325b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quaternionBasis : QuaternionAlgebra.Basis (CliffordAlgebra (Q c₁ c₂)) c₁ c₂ where
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
    rw [eq_neg_iff_add_eq_zero, ι_mul_ι_add_swap, QuadraticForm.polar]
    simp
#align clifford_algebra_quaternion.quaternion_basis CliffordAlgebraQuaternion.quaternionBasis

variable {c₁ c₂}

/-- Intermediate result of `CliffordAlgebraQuaternion.equiv`: clifford algebras over
`CliffordAlgebraQuaternion.Q` can be converted to `ℍ[R,c₁,c₂]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equivs/Variantcff3de8c202ed6517014cdbafd66b81511fc8bb87374d1b5178ac45a2a84fa51.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a65ea0d047b84f7c1ea409024bfbf24fdda4c019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
