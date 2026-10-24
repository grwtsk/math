# UniversalCoprimeFactorizationRing.homEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:266ce4d0b3648c7a8db5d53e2794842e6d05b1ed8ad06167c299345a8fbbc582",
  "kind": "def",
  "lexical_name": "UniversalCoprimeFactorizationRing.homEquiv",
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
  "slug": "universalcoprimefactorizationring-homequiv--b45fbc455667512469253be7",
  "source": {
    "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 585,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b45fbc455667512469253be796a72509b3d49a0d680dd12d9d6e37153b7a0c66",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:266ce4d0b3648c7a8db5d53e2794842e6d05b1ed8ad06167c299345a8fbbc582`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniversalCoprimeFactorizationRing.homEquiv :
    (𝓡' →ₐ[R] S) ≃ { q : MonicDegreeEq S m × MonicDegreeEq S k //
      q.1.1 * q.2.1 = p.1.map (algebraMap R S) ∧ IsCoprime q.1.1 q.2.1 } where
  toFun f :=
    letI q := UniversalFactorizationRing.homEquiv S m k hn p (f.comp (IsScalarTower.toAlgHom _ _ _))
    ⟨q.1, q.2, by
      convert! (isCoprime_factor₁_factor₂ m k hn p).map (Polynomial.mapRingHom f.toRingHom) <;>
        simp [q, UniversalFactorizationRing.homEquiv,
          AlgHom.comp_toRingHom, ← Polynomial.map_map] <;> rfl⟩
  invFun q := by
    letI f := (UniversalFactorizationRing.homEquiv S m k hn p).symm ⟨q.1, q.2.1⟩
    apply IsLocalization.Away.liftAlgHom (f := f)
      (UniversalFactorizationRing.presentation m k hn p).jacobian
    nontriviality S
    rw [← AlgHom.coe_toRingHom, UniversalFactorizationRing.jacobian_resentation, map_mul,
      ← Polynomial.resultant_map_map, IsUnit.mul_iff]
    refine ⟨by cases n <;> simp, ?_⟩
    rw [← (UniversalFactorizationRing.factor₁ m k hn p).monic.natDegree_map f.toRingHom,
      ← (UniversalFactorizationRing.factor₂ m k hn p).monic.natDegree_map f.toRingHom,
      AlgHom.toRingHom_eq_coe, Polynomial.isUnit_resultant_iff_isCoprime
        ((UniversalFactorizationRing.factor₁ m k hn p).monic.map _)]
    change IsCoprime (UniversalFactorizationRing.homEquiv S m k hn p f).1.1.1
      (UniversalFactorizationRing.homEquiv S m k hn p f).1.2.1
    simpa [f] using q.2.2
  left_inv f := by
    apply IsLocalization.algHom_ext
      (.powers (UniversalFactorizationRing.presentation m k hn p).jacobian)
    ext; simp [Algebra.algHom]
  right_inv q := by
    apply Subtype.ext
    convert! congr($((UniversalFactorizationRing.homEquiv S m k hn p).apply_symm_apply
      ⟨_, q.2.1⟩).1) using 1
    dsimp
    congr 2
    ext
    simp

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae678ab555f97d3252bab1329bec03a83142e418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
