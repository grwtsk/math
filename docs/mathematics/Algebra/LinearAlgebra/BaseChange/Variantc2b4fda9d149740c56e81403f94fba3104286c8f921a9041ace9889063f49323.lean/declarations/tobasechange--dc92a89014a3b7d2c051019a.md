# toBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f998e14b217c3a9f73e9bbbbcd991daee6b20dcfc430e5aef3c4cdbe8c4efccf",
  "kind": "def",
  "lexical_name": "toBaseChange",
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
  "slug": "tobasechange--dc92a89014a3b7d2c051019a",
  "source": {
    "blob": "9aa5279c1231f11bf889c68d1d0ce694020ce695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc92a89014a3b7d2c051019abe1aadb43b8381fbc688e316a89758768ad6d282",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f998e14b217c3a9f73e9bbbbcd991daee6b20dcfc430e5aef3c4cdbe8c4efccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toBaseChange (Q : QuadraticForm R V) :
    CliffordAlgebra (Q.baseChange A) →ₐ[A] A ⊗[R] CliffordAlgebra Q :=
  CliffordAlgebra.lift _ <| by
    refine ⟨TensorProduct.AlgebraTensorModule.map (LinearMap.id : A →ₗ[A] A) (ι Q), ?_⟩
    letI : Invertible (2 : A) := (Invertible.map (algebraMap R A) 2).copy 2 (map_ofNat _ _).symm
    letI : Invertible (2 : A ⊗[R] CliffordAlgebra Q) :=
      (Invertible.map (algebraMap R _) 2).copy 2 (map_ofNat _ _).symm
    suffices hpure_tensor : ∀ v w, (1 * 1) ⊗ₜ[R] (ι Q v * ι Q w) + (1 * 1) ⊗ₜ[R] (ι Q w * ι Q v) =
        QuadraticMap.polarBilin (Q.baseChange A) (1 ⊗ₜ[R] v) (1 ⊗ₜ[R] w) ⊗ₜ[R] 1 by
      -- the crux is that by converting to a statement about linear maps instead of quadratic forms,
      -- we then have access to all the partially-applied `ext` lemmas.
      rw [CliffordAlgebra.forall_mul_self_eq_iff (isUnit_of_invertible _)]
      refine TensorProduct.AlgebraTensorModule.curry_injective ?_
      ext v w
      dsimp
      exact hpure_tensor v w
    intros v w
    rw [← TensorProduct.tmul_add, CliffordAlgebra.ι_mul_ι_add_swap,
      QuadraticForm.polarBilin_baseChange, LinearMap.BilinForm.baseChange_tmul, one_mul,
      TensorProduct.smul_tmul, Algebra.algebraMap_eq_smul_one, QuadraticMap.polarBilin_apply_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantc2b4fda9d149740c56e81403f94fba3104286c8f921a9041ace9889063f49323.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa5279c1231f11bf889c68d1d0ce694020ce695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
