# Bundle.Prod.contMDiffVectorBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dddbe186a2c226e35a3d7593c57c24468e261c8b3bd129a0381dbcd59f10fc93",
  "kind": "instance",
  "lexical_name": "Bundle.Prod.contMDiffVectorBundle",
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
  "slug": "bundle-prod-contmdiffvectorbundle--25cf64258dd74e3c1024c47c",
  "source": {
    "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 611,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25cf64258dd74e3c1024c47cea82ef0909bee3352b6c3987fdb40024d1ecc175",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dddbe186a2c226e35a3d7593c57c24468e261c8b3bd129a0381dbcd59f10fc93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Bundle.Prod.contMDiffVectorBundle : ContMDiffVectorBundle n (F₁ × F₂) (E₁ ×ᵇ E₂) IB where
  contMDiffOn_coordChangeL := by
    rintro _ _ ⟨e₁, e₂, i₁, i₂, rfl⟩ ⟨e₁', e₂', i₁', i₂', rfl⟩
    refine ContMDiffOn.congr ?_ (e₁.coordChangeL_prod 𝕜 e₁' e₂ e₂')
    refine ContMDiffOn.clm_prodMap ?_ ?_
    · refine (contMDiffOn_coordChangeL e₁ e₁').mono ?_
      simp only [Trivialization.baseSet_prod, mfld_simps]
      mfld_set_tac
    · refine (contMDiffOn_coordChangeL e₂ e₂').mono ?_
      simp only [Trivialization.baseSet_prod, mfld_simps]
      mfld_set_tac

end Prod

end WithTopology

/-! ### Prebundle construction for `C^n` vector bundles -/

namespace VectorPrebundle

variable [∀ x, TopologicalSpace (E x)]

variable (IB) in
/-- Mixin for a `VectorPrebundle` stating that coordinate changes are `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b07b763caa8b753341a002288853ff79a8652d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
