# tmul_zero_coe_mul_coe_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a3326cb-5a47-81b6-be7e-970cceb4f2c3",
  "kind": "theorem",
  "lexical_name": "tmul_zero_coe_mul_coe_tmul",
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
  "slug": "tmul-zero-coe-mul-coe-tmul--f6df8e340ee2215e81184ba4",
  "source": {
    "blob": "e1293004ac5374da86d7d1c09f2a7a2ff167da0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6df8e340ee2215e81184ba4a6f1287797a24c174f4ccc0d5e397061df8fbf7e",
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

Occurrence: `result:9a3326cb-5a47-81b6-be7e-970cceb4f2c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_zero_coe_mul_coe_tmul {i₂ : ι} (a₁ : A) (b₁ : ℬ 0) (a₂ : 𝒜 i₂) (b₂ : B) :
    (a₁ ᵍ⊗ₜ[R] (b₁ : B) * (a₂ : A) ᵍ⊗ₜ[R] b₂ : 𝒜 ᵍ⊗[R] ℬ) =
      ((a₁ * a₂ : A) ᵍ⊗ₜ (b₁ * b₂ : B)) := by
  rw [tmul_coe_mul_coe_tmul, zero_mul, uzpow_zero, one_smul]

/-- A special case for when `a₂` has grade 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant6419cab079f67a3933c4c3181cdce6783940ab954d522d8cb9188f1b4c353b18.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1293004ac5374da86d7d1c09f2a7a2ff167da0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
