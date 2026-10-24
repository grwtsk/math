# IsBaseChange.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3238e0c2242e100d32cc2ec72076a68d06270ad9ad7ba319ba0e43a003ba69db",
  "kind": "def",
  "lexical_name": "IsBaseChange.equiv",
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
  "slug": "isbasechange-equiv--4e17319014a4fa44296bd505",
  "source": {
    "blob": "7423b539d1e0cd84d706380234a1f8a252cfb8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e17319014a4fa44296bd505c11cd29e92b417d4323beb3319ab96e1eae99e5a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3238e0c2242e100d32cc2ec72076a68d06270ad9ad7ba319ba0e43a003ba69db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable nonrec def IsBaseChange.equiv : S ⊗[R] M ≃ₗ[S] N :=
  { h.equiv with
    map_smul' := fun r x => by
      change h.equiv (r • x) = r • h.equiv x
      refine TensorProduct.induction_on x ?_ ?_ ?_
      · rw [smul_zero, map_zero, smul_zero]
      · intro x y
        -- Porting note (https://github.com/leanprover-community/mathlib4/issues/10745): was simp [smul_tmul', Algebra.ofId_apply]
        simp only [Algebra.linearMap_apply, lift.tmul, smul_eq_mul, Module.End.mul_apply,
          LinearMap.smul_apply, IsTensorProduct.equiv_apply, Module.algebraMap_end_apply, map_mul,
          smul_tmul', eq_self_iff_true, LinearMap.coe_restrictScalars, LinearMap.flip_apply]
      · intro x y hx hy
        rw [map_add, smul_add, map_add, smul_add, hx, hy] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7423b539d1e0cd84d706380234a1f8a252cfb8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
