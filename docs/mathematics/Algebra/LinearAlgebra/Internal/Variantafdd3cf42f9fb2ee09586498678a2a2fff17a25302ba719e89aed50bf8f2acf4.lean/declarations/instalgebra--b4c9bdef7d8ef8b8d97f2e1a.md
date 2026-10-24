# instAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77725ec2759fe422f60f2f7adeb8ac04996d694ae6f429d6c5d73c8c5f612601",
  "kind": "instance",
  "lexical_name": "instAlgebra",
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
  "slug": "instalgebra--b4c9bdef7d8ef8b8d97f2e1a",
  "source": {
    "blob": "424c445a0606204a7431c90a9b3ae1a3f1e6ca1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 243,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4c9bdef7d8ef8b8d97f2e1a8a44582e125bc65d1a57f8bc0f2f7aff155e4428",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77725ec2759fe422f60f2f7adeb8ac04996d694ae6f429d6c5d73c8c5f612601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAlgebra : Algebra R (𝒜 ᵍ⊗[R] ℬ) where
  algebraMap := (includeLeftRingHom 𝒜 ℬ).comp (algebraMap R A)
  commutes' r x := by
    dsimp [mul_def, mulHom_apply, auxEquiv_tmul]
    simp_rw [DirectSum.decompose_algebraMap, DirectSum.decompose_one, algebraMap_gradedMul,
      gradedMul_algebraMap]
  smul_def' r x := by
    dsimp [mul_def, mulHom_apply, auxEquiv_tmul]
    simp_rw [DirectSum.decompose_algebraMap, DirectSum.decompose_one, algebraMap_gradedMul]
    -- Qualified `map_smul` to avoid a TC timeout https://github.com/leanprover-community/mathlib4/pull/8386
    rw [LinearEquiv.map_smul]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424c445a0606204a7431c90a9b3ae1a3f1e6ca1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
