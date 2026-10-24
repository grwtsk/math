# toMatrix_dualTensorHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a46f1c4b-d3df-7c62-5ce6-29b47034afc1",
  "kind": "theorem",
  "lexical_name": "toMatrix_dualTensorHom",
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
  "slug": "tomatrix-dualtensorhom--9a8c0933b5bbb03e9092f4ac",
  "source": {
    "blob": "bc211468a78270a1b2ffb9273270fd6d8692643a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a8c0933b5bbb03e9092f4ac6dbadfd46f46328b4aebe2414bc6b2e1f7d7c984",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a46f1c4b-d3df-7c62-5ce6-29b47034afc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMatrix_dualTensorHom {m : Type*} {n : Type*} [Fintype m] [Fintype n] [DecidableEq m]
    [DecidableEq n] (bM : Basis m R M) (bN : Basis n R N) (j : m) (i : n) :
    toMatrix bM bN (dualTensorHom R M N (bM.coord j ⊗ₜ bN i)) = stdBasisMatrix i j 1 := by
  ext i' j'
  by_cases hij : i = i' ∧ j = j' <;>
    simp [LinearMap.toMatrix_apply, Finsupp.single_eq_pi_single, hij]
  rw [and_iff_not_or_not, Classical.not_not] at hij
  cases' hij with hij hij <;> simp [hij]
#align to_matrix_dual_tensor_hom toMatrix_dualTensorHom

end CommSemiring

section CommRing

variable [CommRing R]

variable [AddCommGroup M] [AddCommGroup N] [AddCommGroup P] [AddCommGroup Q]

variable [Module R M] [Module R N] [Module R P] [Module R Q]

variable [DecidableEq ι] [Fintype ι] (b : Basis ι R M)

variable {R M N P Q}

/-- If `M` is free, the natural linear map $M^* ⊗ N → Hom(M, N)$ is an equivalence. This function
provides this equivalence in return for a basis of `M`. -/
-- @[simps! apply] -- Porting note: removed and created manually; malformed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc211468a78270a1b2ffb9273270fd6d8692643a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
