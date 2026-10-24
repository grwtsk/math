# liftEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa1bc240e0cad25c163e73a996fc325383a21d294a026ba92d264239369648ef",
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
  "slug": "liftequiv--86c4cb26ef3ed359612eab7e",
  "source": {
    "blob": "e1293004ac5374da86d7d1c09f2a7a2ff167da0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 343,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86c4cb26ef3ed359612eab7e57dd177bd7e4a681a8be51513882551c04f720cc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa1bc240e0cad25c163e73a996fc325383a21d294a026ba92d264239369648ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftEquiv :
    { fg : (A →ₐ[R] C) × (B →ₐ[R] C) //
        ∀ ⦃i j⦄ (a : 𝒜 i) (b : ℬ j), fg.1 a * fg.2 b = (-1 : ℤˣ)^(j * i) • (fg.2 b * fg.1 a)} ≃
      ((𝒜 ᵍ⊗[R] ℬ) →ₐ[R] C) where
  toFun fg := lift 𝒜 ℬ _ _ fg.prop
  invFun F := ⟨(F.comp (includeLeft 𝒜 ℬ), F.comp (includeRight 𝒜 ℬ)), fun i j a b => by
    dsimp
    rw [← map_mul, ← map_mul F, tmul_coe_mul_coe_tmul, one_mul, mul_one, AlgHom.map_smul_of_tower,
      tmul_one_mul_one_tmul, smul_smul, Int.units_mul_self, one_smul]⟩
  left_inv fg := by ext <;> (dsimp; simp only [map_one, mul_one, one_mul])
  right_inv F := by
    apply AlgHom.toLinearMap_injective
    ext
    dsimp
    rw [← map_mul, tmul_one_mul_one_tmul]

/-- Two algebra morphism from the graded tensor product agree if their compositions with the left
and right inclusions agree. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1293004ac5374da86d7d1c09f2a7a2ff167da0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
