# LinearMap.clmOfExistsBoundedImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae125fabc8495345b5b4ff8af2ca618a94c2a9f597001ed15442c9076c50e02b",
  "kind": "def",
  "lexical_name": "LinearMap.clmOfExistsBoundedImage",
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
  "slug": "linearmap-clmofexistsboundedimage--ff9d8c84e49f6a8abfd15f09",
  "source": {
    "blob": "158b79c6a72fe2e84104e1ca466d7006cd9102b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff9d8c84e49f6a8abfd15f09fd88d6c67411c3a5e0591ee35466f8644976622e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae125fabc8495345b5b4ff8af2ca618a94c2a9f597001ed15442c9076c50e02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearMap.clmOfExistsBoundedImage [IsTopologicalAddGroup F] (f : E →ₛₗ[σ] F)
    (h : ∃ V ∈ 𝓝 (0 : E), Bornology.IsVonNBounded 𝕜' (f '' V)) : E →SL[σ] F :=
  ⟨f, by
    -- It suffices to show that `f` is continuous at `0`.
    refine continuous_of_continuousAt_zero f ?_
    rw [continuousAt_def, f.map_zero]
    intro U hU
    -- Continuity means that `U ∈ 𝓝 0` implies that `f ⁻¹' U ∈ 𝓝 0`.
    rcases h with ⟨V, hV, h⟩
    rcases (h hU).exists_pos with ⟨r, hr, h⟩
    rcases NormedField.exists_lt_norm 𝕜 r with ⟨x, hx⟩
    specialize h (σ x) (by simpa using hx.le)
    -- After unfolding all the definitions, we know that `f '' V ⊆ σ x • U`. We use this to show the
    -- inclusion `x⁻¹ • V ⊆ f⁻¹' U`.
    have x_ne := norm_pos_iff.mp (hr.trans hx)
    have : x⁻¹ • V ⊆ f ⁻¹' U :=
      calc
        x⁻¹ • V ⊆ x⁻¹ • f ⁻¹' f '' V := Set.smul_set_mono (Set.subset_preimage_image (⇑f) V)
        _ ⊆ x⁻¹ • f ⁻¹' (σ x • U) := Set.smul_set_mono (Set.preimage_mono h)
        _ = f ⁻¹' U := by rw [x_ne.isUnit.preimage_smul_setₛₗ _, inv_smul_smul₀ x_ne _]
    -- Using this inclusion, it suffices to show that `x⁻¹ • V` is in `𝓝 0`, which is trivial.
    grw [← this]
    rwa [set_smul_mem_nhds_zero_iff (inv_ne_zero x_ne)]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158b79c6a72fe2e84104e1ca466d7006cd9102b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
