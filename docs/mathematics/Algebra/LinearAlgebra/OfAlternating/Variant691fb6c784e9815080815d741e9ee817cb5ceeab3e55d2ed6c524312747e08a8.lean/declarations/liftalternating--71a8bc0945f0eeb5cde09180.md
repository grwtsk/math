# liftAlternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55108ebb4b220c84b43ee55048dfdb37e18c8cb35e145b78a0cfc972f9107979",
  "kind": "def",
  "lexical_name": "liftAlternating",
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
  "slug": "liftalternating--71a8bc0945f0eeb5cde09180",
  "source": {
    "blob": "54baffabbf968dd6288cff3597bab3bae524699f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71a8bc0945f0eeb5cde09180f0a1c42b38f20f9b68014ea68afb7cfcf0c6023b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55108ebb4b220c84b43ee55048dfdb37e18c8cb35e145b78a0cfc972f9107979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftAlternating : (∀ i, AlternatingMap R M N (Fin i)) →ₗ[R] ExteriorAlgebra R M →ₗ[R] N := by
  suffices
    (∀ i, AlternatingMap R M N (Fin i)) →ₗ[R]
      ExteriorAlgebra R M →ₗ[R] ∀ i, AlternatingMap R M N (Fin i) by
    refine' LinearMap.compr₂ this _
    refine' (LinearEquiv.toLinearMap _).comp (LinearMap.proj 0)
    exact AlternatingMap.constLinearEquivOfIsEmpty.symm
  refine' CliffordAlgebra.foldl _ _ _
  · refine'
      LinearMap.mk₂ R (fun m f i => (f i.succ).curryLeft m) (fun m₁ m₂ f => _) (fun c m f => _)
        (fun m f₁ f₂ => _) fun c m f => _
    all_goals
      ext i : 1
      simp only [map_smul, map_add, Pi.add_apply, Pi.smul_apply, AlternatingMap.curryLeft_add,
        AlternatingMap.curryLeft_smul, map_add, map_smul, LinearMap.add_apply, LinearMap.smul_apply]
  · -- when applied twice with the same `m`, this recursive step produces 0
    intro m x
    dsimp only [LinearMap.mk₂_apply, QuadraticForm.coeFn_zero, Pi.zero_apply]
    simp_rw [zero_smul]
    ext i : 1
    exact AlternatingMap.curryLeft_same _ _
#align exterior_algebra.lift_alternating ExteriorAlgebra.liftAlternating

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant691fb6c784e9815080815d741e9ee817cb5ceeab3e55d2ed6c524312747e08a8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54baffabbf968dd6288cff3597bab3bae524699f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
