# equalizer_ι_isLocalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a808cedbe0c99cb4b8a0eb8e0475e131ef9a8590aad6b567d5cc1901ac101d71",
  "kind": "instance",
  "lexical_name": "equalizer_ι_isLocalRingHom",
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
  "slug": "equalizer-islocalringhom--abd20e2c7286c170177e290e",
  "source": {
    "blob": "bfc70abc933b035a68c19f0c3a826921e3c3ec1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 254,
    "path": "GRWTSK/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abd20e2c7286c170177e290e3aaaf6567bd0e65e0cd43a4e842bee77ab6a5dba",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a808cedbe0c99cb4b8a0eb8e0475e131ef9a8590aad6b567d5cc1901ac101d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance equalizer_ι_isLocalRingHom (F : WalkingParallelPair ⥤ CommRingCat.{u}) :
    IsLocalRingHom (limit.π F WalkingParallelPair.zero) := by
  have := limMap_π (diagramIsoParallelPair F).hom WalkingParallelPair.zero
  rw [← IsIso.comp_inv_eq] at this
  rw [← this]
  rw [← limit.isoLimitCone_hom_π
      ⟨_,
        equalizerForkIsLimit (F.map WalkingParallelPairHom.left)
          (F.map WalkingParallelPairHom.right)⟩
      WalkingParallelPair.zero]
  change IsLocalRingHom ((lim.map _ ≫ _ ≫ (equalizerFork _ _).ι) ≫ _)
  infer_instance
set_option linter.uppercaseLean3 false in
#align CommRing.equalizer_ι_is_local_ring_hom CommRingCat.equalizer_ι_isLocalRingHom

open CategoryTheory.Limits.WalkingParallelPair Opposite

open CategoryTheory.Limits.WalkingParallelPairHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc70abc933b035a68c19f0c3a826921e3c3ec1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
