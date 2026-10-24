# _root_.GRWTSK.Algebra.MkPrimeMemIff.Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.Module.IsTorsionFree.of_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:435db4ed-7140-6d6f-7943-dd9d2eef38ec",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.MkPrimeMemIff.Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.Module.IsTorsionFree.of_isLocalization",
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
  "slug": "root-grwtsk-algebra-mkprimememiff-variant57f1536d3169ea7f6205e40f3298851--c47bba28b6d00516a8676773",
  "source": {
    "blob": "1521d90abd85c361b282cc6052c254b7663dd2a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 361,
    "path": "GRWTSK/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c47bba28b6d00516a86767738b8d5d0c2d346c2b52c72e99faf10c5ed7c22d10",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:435db4ed-7140-6d6f-7943-dd9d2eef38ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.MkPrimeMemIff.Variant57f1536d3169ea7f6205e40f3298851daae309f6de4bb8432db2c90cec85b97c.Module.IsTorsionFree.of_isLocalization [IsDomain R] [IsDomain S] {Rₚ Sₚ : Type*}
    [CommRing Rₚ] [IsDomain Rₚ] [CommRing Sₚ] [Algebra R Rₚ] [Algebra R Sₚ] [Algebra S Sₚ]
    [Algebra Rₚ Sₚ] [IsScalarTower R S Sₚ] [IsScalarTower R Rₚ Sₚ] {M : Submonoid R} (hM : M ≤ R⁰)
    [IsLocalization M Rₚ] [IsLocalization (Algebra.algebraMapSubmonoid S M) Sₚ]
    [Module.IsTorsionFree R S] : Module.IsTorsionFree Rₚ Sₚ := by
  have e : Algebra.algebraMapSubmonoid S M ≤ S⁰ :=
    Submonoid.map_le_of_le_comap _ <| hM.trans
      (nonZeroDivisors_le_comap_nonZeroDivisors_of_injective _
        (FaithfulSMul.algebraMap_injective _ _))
  have : IsDomain Sₚ := IsLocalization.isDomain_of_le_nonZeroDivisors _ e
  have : algebraMap Rₚ Sₚ = IsLocalization.map (T := Algebra.algebraMapSubmonoid S M) Sₚ
    (algebraMap R S) (Submonoid.le_comap_map M) := by
    apply IsLocalization.ringHom_ext M
    simp only [IsLocalization.map_comp, ← IsScalarTower.algebraMap_eq]
  rw [Module.isTorsionFree_iff_algebraMap_injective, RingHom.injective_iff_ker_eq_bot,
    RingHom.ker_eq_bot_iff_eq_zero]
  intro x hx
  obtain ⟨x, s, rfl⟩ := IsLocalization.exists_mk'_eq M x
  simp only [IsLocalization.map_mk', IsLocalization.mk'_eq_zero_iff,
    Subtype.exists, exists_prop, this] at hx ⊢
  obtain ⟨_, ⟨a, ha, rfl⟩, H⟩ := hx
  simp only [← map_mul,
    (injective_iff_map_eq_zero' _).mp (FaithfulSMul.algebraMap_injective R S)] at H
  exact ⟨a, ha, H⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant48e9c6b0ba8854287a56f1b920b9698ee4731fb566c370d534fe36d6f9122b0b.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1521d90abd85c361b282cc6052c254b7663dd2a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
