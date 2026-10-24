# ContinuousMapZero.nonUnitalStarAlgHom_apply_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d24f9589-8365-3677-3bbd-e6c9a7e97d8a",
  "kind": "lemma",
  "lexical_name": "ContinuousMapZero.nonUnitalStarAlgHom_apply_mul_eq_zero",
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
  "slug": "continuousmapzero-nonunitalstaralghom-apply-mul-eq-zero--3e244c54d30dcf0a8a58607f",
  "source": {
    "blob": "cb7a95dc9e737bf23397389e3299604cea25a84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 689,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e244c54d30dcf0a8a58607f5ee453639c87971571838a05cccbf6bf6e114b85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d24f9589-8365-3677-3bbd-e6c9a7e97d8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousMapZero.nonUnitalStarAlgHom_apply_mul_eq_zero {𝕜 A : Type*}
    [RCLike 𝕜] [NonUnitalSemiring A] [Star A] [TopologicalSpace A] [SeparatelyContinuousMul A]
    [T2Space A] [DistribMulAction 𝕜 A] [IsScalarTower 𝕜 A A] {s : Set 𝕜} [Fact (0 ∈ s)]
    [CompactSpace s] (φ : C(s, 𝕜)₀ →⋆ₙₐ[𝕜] A) (a : A) (hmul_id : φ (.id s) * a = 0)
    (hmul_star_id : φ (star (.id s)) * a = 0) (hφ : Continuous φ) (f : C(s, 𝕜)₀) :
    φ f * a = 0 := by
  induction f using ContinuousMapZero.induction_on_of_compact with
  | zero => simp [map_zero]
  | id => exact hmul_id
  | star_id => exact hmul_star_id
  | add _ _ h₁ h₂ => simp only [map_add, add_mul, h₁, h₂, zero_add]
  | mul _ _ _ h => simp only [map_mul, mul_assoc, h, mul_zero]
  | smul _ _ h => rw [map_smul, smul_mul_assoc, h, smul_zero]
  | frequently f h => exact h.mem_of_closed <| isClosed_eq (by fun_prop) continuous_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7a95dc9e737bf23397389e3299604cea25a84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
