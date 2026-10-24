# liftEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdcf5ff0198ebe670d17fa8b258ea17fcf0cfe3214a5866ad8afdbdff6906ced",
  "kind": "def",
  "lexical_name": "liftEquiv",
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
  "slug": "liftequiv--797a2b576b6fe03911df20fe",
  "source": {
    "blob": "e3254ece54a80ee8d1e4d8d4009395e191dff080",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:797a2b576b6fe03911df20fea543a9b79d06824d40f889285faa662c6caee838",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdcf5ff0198ebe670d17fa8b258ea17fcf0cfe3214a5866ad8afdbdff6906ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def liftEquiv [AddMonoid M] : (ModN G n →+ M) ≃ {φ : G →+ M // ∀ g, n • φ g = 0} where
  toFun f := ⟨f.comp (QuotientAddGroup.mk' _), fun g ↦ by
    let Gn : AddSubgroup G := (LinearMap.range (LinearMap.lsmul ℤ G n)).toAddSubgroup
    suffices n • g ∈ (QuotientAddGroup.mk' Gn).ker by
      simp only [AddMonoidHom.coe_comp, comp_apply, ← map_nsmul]
      change f (QuotientAddGroup.mk' Gn (n • g)) = 0 -- Can we avoid `change`?
      rw [this, map_zero]
    simp [QuotientAddGroup.ker_mk', Gn]⟩
  invFun φ := QuotientAddGroup.lift _ φ <| by rintro - ⟨g, rfl⟩; simpa using φ.property g
  left_inv f := by
    ext x
    induction x using QuotientAddGroup.induction_on
    rfl -- Should `simp` suffice here?
  right_inv φ := by aesop

/-- The universal property of `ModN G n` in terms of `ZMod n`-modules: `ZMod n`-linear maps from
`ModN G n` are the same as monoid homormorphisms from `G` whose values are `n`-torsion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModN/Variantfedcd53759f9f872aaed1dcbd1b3797c54219a3c71612798d342ae7b06ecbce6.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3254ece54a80ee8d1e4d8d4009395e191dff080` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
