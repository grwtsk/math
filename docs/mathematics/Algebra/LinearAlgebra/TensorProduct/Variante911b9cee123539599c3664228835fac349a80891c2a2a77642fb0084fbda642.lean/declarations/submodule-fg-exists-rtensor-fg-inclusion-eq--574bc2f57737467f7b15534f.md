# Submodule.FG.exists_rTensor_fg_inclusion_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f27ddf8-8609-1aa4-15fb-b33a8a1a9e89",
  "kind": "theorem",
  "lexical_name": "Submodule.FG.exists_rTensor_fg_inclusion_eq",
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
  "slug": "submodule-fg-exists-rtensor-fg-inclusion-eq--574bc2f57737467f7b15534f",
  "source": {
    "blob": "13f4e9e8f8b0788dd39c4682d1a01f87c94a8fce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante911b9cee123539599c3664228835fac349a80891c2a2a77642fb0084fbda642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:574bc2f57737467f7b15534f42ba51660b30f15cf50a1107bcacb3ff622b5e80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variante911b9cee123539599c3664228835fac349a80891c2a2a77642fb0084fbda642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f27ddf8-8609-1aa4-15fb-b33a8a1a9e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.FG.exists_rTensor_fg_inclusion_eq {N : Submodule R P} (hN : N.FG)
    {x y : N ⊗[R] M} (eq : N.subtype.rTensor M x = N.subtype.rTensor M y) :
    ∃ N', N'.FG ∧ ∃ h : N ≤ N', (N.inclusion h).rTensor M x = (N.inclusion h).rTensor M y := by
  classical
  lift N to {N : Submodule R P // N.FG} using hN
  apply_fun (Module.fgSystem.equiv R P).symm.toLinearMap.rTensor M at eq
  apply_fun directLimitLeft _ _ at eq
  simp_rw [← LinearMap.rTensor_comp_apply, ← (LinearEquiv.eq_toLinearMap_symm_comp _ _).mpr
    (Module.fgSystem.equiv_comp_of N), directLimitLeft_rTensor_of] at eq
  have ⟨N', le, eq⟩ := Module.DirectLimit.exists_eq_of_of_eq eq
  exact ⟨_, N'.2, le, eq⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variante911b9cee123539599c3664228835fac349a80891c2a2a77642fb0084fbda642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variante911b9cee123539599c3664228835fac349a80891c2a2a77642fb0084fbda642.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13f4e9e8f8b0788dd39c4682d1a01f87c94a8fce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
