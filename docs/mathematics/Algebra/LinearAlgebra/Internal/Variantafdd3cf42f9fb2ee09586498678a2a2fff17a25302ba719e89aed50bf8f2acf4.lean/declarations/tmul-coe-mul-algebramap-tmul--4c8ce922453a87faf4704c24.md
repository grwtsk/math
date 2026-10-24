# tmul_coe_mul_algebraMap_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "424c445a0606204a7431c90a9b3ae1a3f1e6ca1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5d303fb-672e-f6a0-acc9-131cc3b48c69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f80411a3-fc29-a13d-43e0-4a81920e7742",
  "kind": "theorem",
  "lexical_name": "tmul_coe_mul_algebraMap_tmul",
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
  "slug": "tmul-coe-mul-algebramap-tmul--4c8ce922453a87faf4704c24",
  "source": {
    "blob": "424c445a0606204a7431c90a9b3ae1a3f1e6ca1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 263,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c8ce922453a87faf4704c2481fab1e81c256156167546eeee430a9aa4fb0082",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f80411a3-fc29-a13d-43e0-4a81920e7742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_coe_mul_algebraMap_tmul {j₁ : ι} (a₁ : A) (b₁ : ℬ j₁) (r : R) (b₂ : B) :
    (a₁ ᵍ⊗ₜ[R] (b₁ : B) * algebraMap R A r ᵍ⊗ₜ[R] b₂ : 𝒜 ᵍ⊗[R] ℬ)
      = (a₁ * algebraMap R A r : A) ᵍ⊗ₜ (b₁ * b₂ : B) :=
  tmul_coe_mul_zero_coe_tmul 𝒜 ℬ a₁ b₁ (GAlgebra.toFun (A := (𝒜 ·)) r) b₂

/-- The algebra morphism `A →ₐ[R] A ⊗[R] B` sending `a` to `a ⊗ₜ 1`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424c445a0606204a7431c90a9b3ae1a3f1e6ca1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
