# Sylow.mulEquivIteratedWreathProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f545a7984247d294d65f9bf5e7143a91a541d621935274286133681cf920902",
  "kind": "def",
  "lexical_name": "Sylow.mulEquivIteratedWreathProduct",
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
  "slug": "sylow-mulequiviteratedwreathproduct--700d7ec7725ae33b050e8f13",
  "source": {
    "blob": "8f8e2905bb716db4982dca5d7a59f0f4ab8053fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 242,
    "path": "GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:700d7ec7725ae33b050e8f13a711e5077eddc5efd67651457fe3ce0c0fcf304e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f545a7984247d294d65f9bf5e7143a91a541d621935274286133681cf920902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Sylow.mulEquivIteratedWreathProduct (p : ℕ) [hp : Fact (Nat.Prime p)] (n : ℕ)
    (α : Type*) [Finite α] (hα : Nat.card α = p ^ n)
    (G : Type*) [Group G] [Finite G] (hG : Nat.card G = p)
    (P : Sylow p (Equiv.Perm α)) :
    P ≃* IteratedWreathProduct G n := by
  let e1 : α ≃ (Fin n → G) := (Finite.equivFinOfCardEq hα).trans
    (Finite.equivFinOfCardEq (by rw [Nat.card_fun, Nat.card_fin, hG])).symm
  let f := e1.symm.permCongrHom.toMonoidHom.comp (iteratedWreathToPermHom G n)
  have hf : Function.Injective f :=
    (e1.symm.permCongrHom.comp_injective _).mpr (iteratedWreathToPermHomInj G n)
  let g := (MonoidHom.ofInjective hf).symm
  let P' : Sylow p (Equiv.Perm α) := Sylow.ofCard (MonoidHom.range f) (by
    rw [Nat.card_congr g.toEquiv, IteratedWreathProduct.card, hG, Nat.card_perm, hα,
        ← Nat.multiplicity_eq_factorization hp.out, Nat.Prime.multiplicity_factorial_pow hp.out])
  exact (P.equiv P').trans g

end iterated
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/RegularWreathProduct/Variant6b7f087f8a431b04bf76d526ff766e53923573fa7a31f6684a93c40435354d48.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8e2905bb716db4982dca5d7a59f0f4ab8053fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
