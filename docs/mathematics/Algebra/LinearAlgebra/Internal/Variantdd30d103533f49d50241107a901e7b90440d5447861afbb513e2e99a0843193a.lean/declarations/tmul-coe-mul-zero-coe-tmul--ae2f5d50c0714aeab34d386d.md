# tmul_coe_mul_zero_coe_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03f640e82c1320e0e994e21efb704bc0571f1d3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a28deb95-713d-dc9c-6058-5a7d8bb9471b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d878b51-d3e3-740e-e93f-cf6e2407a648",
  "kind": "theorem",
  "lexical_name": "tmul_coe_mul_zero_coe_tmul",
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
  "slug": "tmul-coe-mul-zero-coe-tmul--ae2f5d50c0714aeab34d386d",
  "source": {
    "blob": "03f640e82c1320e0e994e21efb704bc0571f1d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 203,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae2f5d50c0714aeab34d386d0ed09ed77a4caea1776ed2bd6f0bdaa6b5907875",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d878b51-d3e3-740e-e93f-cf6e2407a648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_coe_mul_zero_coe_tmul {j₁ : ι} (a₁ : A) (b₁ : ℬ j₁) (a₂ : 𝒜 0) (b₂ : B) :
    (a₁ ᵍ⊗ₜ[R] (b₁ : B) * (a₂ : A) ᵍ⊗ₜ[R] b₂ : 𝒜 ᵍ⊗[R] ℬ) =
      ((a₁ * a₂ : A) ᵍ⊗ₜ (b₁ * b₂ : B)) := by
  rw [tmul_coe_mul_coe_tmul, mul_zero, uzpow_zero, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f640e82c1320e0e994e21efb704bc0571f1d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
