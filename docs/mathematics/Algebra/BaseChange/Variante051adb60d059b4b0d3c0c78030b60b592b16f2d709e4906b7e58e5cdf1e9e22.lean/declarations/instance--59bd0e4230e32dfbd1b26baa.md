# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4d44c5f937d117c7e6b06376655b2dfee5dabca4f81e99f1a9e564ef63be8e9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--59bd0e4230e32dfbd1b26baa",
  "source": {
    "blob": "c3c16c386e50b0680d9532b9006d119c6c60c874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 146,
    "path": "GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59bd0e4230e32dfbd1b26baa9476016b50556f2d4010bcfbc1e78ed709d286e6",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4d44c5f937d117c7e6b06376655b2dfee5dabca4f81e99f1a9e564ef63be8e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (R M : Type*) [CommRing R] [AddCommGroup M] [Module R M]
    {α} (S : Submonoid R) {Mₛ} [AddCommGroup Mₛ] [Module R Mₛ] (f : M →ₗ[R] Mₛ)
    [IsLocalizedModule S f] : IsLocalizedModule S (Finsupp.mapRange.linearMap (α := α) f) := by
  classical
  let e : Localization S ⊗[R] M ≃ₗ[R] Mₛ :=
    (LocalizedModule.equivTensorProduct S M).symm.restrictScalars R ≪≫ₗ IsLocalizedModule.iso S f
  let e' : Localization S ⊗[R] (α →₀ M) ≃ₗ[R] (α →₀ Mₛ) :=
    finsuppRight R (Localization S) M α ≪≫ₗ Finsupp.mapRange.linearEquiv e
  suffices IsLocalizedModule S (e'.symm.toLinearMap ∘ₗ Finsupp.mapRange.linearMap f) by
    convert this.of_linearEquiv (e := e')
    ext
    simp
  rw [isLocalizedModule_iff_isBaseChange S (Localization S)]
  convert TensorProduct.isBaseChange R (α →₀ M) (Localization S) using 1
  ext a m
  apply (finsuppRight R (Localization S) M α).injective
  ext b
  apply e.injective
  suffices (if a = b then f m else 0) = e (1 ⊗ₜ[R] if a = b then m else 0) by
    simpa [e', Finsupp.single_apply, -EmbeddingLike.apply_eq_iff_eq, apply_ite e]
  split_ifs with h
  · simp [e, IsBaseChange.equiv_tmul]
  · simp only [tmul_zero, LinearEquiv.trans_apply, LinearEquiv.restrictScalars_apply, map_zero]

section

variable (S : Submonoid A) {N : Type*} [AddCommMonoid N] [Module R N]
variable [Module A M] [IsScalarTower R A M]

open TensorProduct

/-- `S⁻¹M ⊗[R] N = S⁻¹(M ⊗[R] N)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c16c386e50b0680d9532b9006d119c6c60c874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
