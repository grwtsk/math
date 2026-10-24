# tmul_coe_mul_one_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d72e9aaa-9956-47d0-b7f0-27db286082b6",
  "kind": "theorem",
  "lexical_name": "tmul_coe_mul_one_tmul",
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
  "slug": "tmul-coe-mul-one-tmul--a0fa75ee11041c851a5a0c70",
  "source": {
    "blob": "e1293004ac5374da86d7d1c09f2a7a2ff167da0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0fa75ee11041c851a5a0c70cfa6040c039eb832132d41acb3ab6985aa378344",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d72e9aaa-9956-47d0-b7f0-27db286082b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_coe_mul_one_tmul {j₁ : ι} (a₁ : A) (b₁ : ℬ j₁) (b₂ : B) :
    (a₁ ᵍ⊗ₜ[R] (b₁ : B) * (1 : A) ᵍ⊗ₜ[R] b₂ : 𝒜 ᵍ⊗[R] ℬ) = (a₁ : A) ᵍ⊗ₜ (b₁ * b₂ : B) := by
  convert! tmul_coe_mul_zero_coe_tmul 𝒜 ℬ a₁ b₁ (@GradedMonoid.GOne.one _ (𝒜 ·) _ _) b₂
  rw [SetLike.coe_gOne, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1293004ac5374da86d7d1c09f2a7a2ff167da0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
