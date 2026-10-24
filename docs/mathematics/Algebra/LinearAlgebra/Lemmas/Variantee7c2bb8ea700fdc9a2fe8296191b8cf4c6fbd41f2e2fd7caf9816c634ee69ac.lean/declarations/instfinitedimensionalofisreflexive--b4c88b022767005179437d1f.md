# instFiniteDimensionalOfIsReflexive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef2e24e9a4a077b0d68f711de51dd1211e54c5138d7008a4246f033a7903a856",
  "kind": "instance",
  "lexical_name": "instFiniteDimensionalOfIsReflexive",
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
  "slug": "instfinitedimensionalofisreflexive--b4c88b022767005179437d1f",
  "source": {
    "blob": "ed2cd3478a099aa7c5c95ca88bea01ed9e09bfbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 267,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4c88b022767005179437d1fbdccbdc89502b30f89b5806e0c29494d4e3043b0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef2e24e9a4a077b0d68f711de51dd1211e54c5138d7008a4246f033a7903a856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instFiniteDimensionalOfIsReflexive (K V : Type*)
    [Field K] [AddCommGroup V] [Module K V] [IsReflexive K V] :
    FiniteDimensional K V := by
  rw [FiniteDimensional, ← rank_lt_aleph0_iff]
  by_contra! contra
  suffices lift (Module.rank K V) < Module.rank K (Dual K (Dual K V)) by
    have heq := lift_rank_eq_of_equiv_equiv (R := K) (R' := K) (M := V) (M' := Dual K (Dual K V))
      (ZeroHom.id K) (evalEquiv K V) bijective_id (fun r v ↦ (evalEquiv K V).map_smul _ _)
    rw [← lift_umax, heq, lift_id'] at this
    exact lt_irrefl _ this
  have h₁ : lift (Module.rank K V) < Module.rank K (Dual K V) := lift_rank_lt_rank_dual contra
  have h₂ : Module.rank K (Dual K V) < Module.rank K (Dual K (Dual K V)) := by
    convert lift_rank_lt_rank_dual <| le_trans (by simpa) h₁.le
    rw [lift_id']
  exact lt_trans h₁ h₂

end IsReflexive

end Module

namespace Submodule

open Module

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M] {p : Submodule R M}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantee7c2bb8ea700fdc9a2fe8296191b8cf4c6fbd41f2e2fd7caf9816c634ee69ac.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed2cd3478a099aa7c5c95ca88bea01ed9e09bfbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
