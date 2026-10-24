# d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5add68a3f236fce739a4c1fb2774a9dd9bc01aee89d3454753c3088a853cc98c",
  "kind": "def",
  "lexical_name": "d",
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
  "slug": "d--fa15a7eea4258d225d2cef1b",
  "source": {
    "blob": "752787cd3e067cb7f17daf08ce13ffefa17733c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa15a7eea4258d225d2cef1b524787211992a2337cdde4def1581f7fd867d0e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5add68a3f236fce739a4c1fb2774a9dd9bc01aee89d3454753c3088a853cc98c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def d [Monoid G] (n : ℕ) (A : Rep k G) : ((Fin n → G) → A) →ₗ[k] (Fin (n + 1) → G) → A where
  toFun f g :=
    A.ρ (g 0) (f fun i => g i.succ) +
      Finset.univ.sum fun j : Fin (n + 1) =>
        (-1 : k) ^ ((j : ℕ) + 1) • f (Fin.contractNth j (· * ·) g)
  map_add' f g := by
    ext x
/- Porting note: changed from `simp only` which needed extra heartbeats -/
    simp_rw [Pi.add_apply, map_add, smul_add, Finset.sum_add_distrib, add_add_add_comm]
  map_smul' r f := by
    ext x
/- Porting note: changed from `simp only` which needed extra heartbeats -/
    simp_rw [Pi.smul_apply, RingHom.id_apply, map_smul, smul_add, Finset.smul_sum, ← smul_assoc,
      smul_eq_mul, mul_comm r]

variable [Group G] (n) (A : Rep k G)

/-- The theorem that our isomorphism `Fun(Gⁿ, A) ≅ Hom(k[Gⁿ⁺¹], A)` (where the righthand side is
morphisms in `Rep k G`) commutes with the differentials in the complex of inhomogeneous cochains
and the homogeneous `linearYonedaObjResolution`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd81bf94b0b4be9b550b820fb4dfaecd7a26ebfc53216f03931b5ed63a1fe4874.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `752787cd3e067cb7f17daf08ce13ffefa17733c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
