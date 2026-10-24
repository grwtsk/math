# toGrothendieck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc87bcdc5d2b0bc2a49552aaefab1039b60d1ac8e2064bc1c0d62c7a5653201c",
  "kind": "def",
  "lexical_name": "toGrothendieck",
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
  "slug": "togrothendieck--a36193c022ef57fb8d79e117",
  "source": {
    "blob": "93edd7f0fee9bec049bd90eab67b584cfaabf43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a36193c022ef57fb8d79e117b428d5a402aeec4d7611f48fee8ad18651ddb2a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc87bcdc5d2b0bc2a49552aaefab1039b60d1ac8e2064bc1c0d62c7a5653201c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGrothendieck (K : Pretopology C) : GrothendieckTopology C where
  sieves X S := ∃ R ∈ K X, R ≤ (S : Presieve _)
  top_mem' _ := ⟨Presieve.singleton (𝟙 _), K.has_isos _, fun _ _ _ => ⟨⟩⟩
  pullback_stable' X Y S g := by
    rintro ⟨R, hR, RS⟩
    refine ⟨_, K.pullbacks g _ hR, ?_⟩
    rw [← Sieve.generate_le_iff, Sieve.pullbackArrows_comm]
    apply Sieve.pullback_monotone
    rwa [Sieve.giGenerate.gc]
  transitive' := by
    rintro X S ⟨R', hR', RS⟩ R t
    choose t₁ t₂ t₃ using t
    refine ⟨_, K.transitive _ _ hR' fun _ f hf => t₂ (RS _ hf), ?_⟩
    rintro Y _ ⟨Z, g, f, hg, hf, rfl⟩
    apply t₃ (RS _ hg) _ hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretopology/Variantcc29d82c9867ecb07890300afad85b37c0f87e16799d3a4d1cb406a7d5cbc5e6.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93edd7f0fee9bec049bd90eab67b584cfaabf43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
