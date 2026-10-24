# CStarAlgebra.spectralOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5f26db5d7f5b01fd2da86b9de5c4c59b138e7c3e82dae78c58243157711a03c",
  "kind": "def",
  "lexical_name": "CStarAlgebra.spectralOrder",
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
  "slug": "cstaralgebra-spectralorder--8280dd1e6b3f802d9c7d336a",
  "source": {
    "blob": "a43fe3f23391562543d0f0e972062f6c7d0dc19d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8280dd1e6b3f802d9c7d336a905630ebb896b083720a6d1f00e911ed28bc8037",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5f26db5d7f5b01fd2da86b9de5c4c59b138e7c3e82dae78c58243157711a03c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CStarAlgebra.spectralOrder : PartialOrder A where
  le x y := IsSelfAdjoint (y - x) ∧ QuasispectrumRestricts (y - x) ContinuousMap.realToNNReal
  le_refl := by
    simp only [sub_self, IsSelfAdjoint.zero, true_and, forall_const]
    rw [quasispectrumRestricts_iff_spectrumRestricts_inr' ℂ, SpectrumRestricts.nnreal_iff]
    nontriviality A
    simp
  le_antisymm x y hxy hyx := by
    rw [← Unitization.isSelfAdjoint_inr (R := ℂ),
      quasispectrumRestricts_iff_spectrumRestricts_inr' ℂ, Unitization.inr_sub ℂ] at hxy hyx
    rw [← sub_eq_zero]
    apply Unitization.inr_injective (R := ℂ)
    rw [Unitization.inr_zero, Unitization.inr_sub]
    exact hyx.2.eq_zero_of_neg hyx.1 (neg_sub (x : A⁺¹) (y : A⁺¹) ▸ hxy.2)
  le_trans x y z hxy hyz := by
    simp +singlePass only [← Unitization.isSelfAdjoint_inr (R := ℂ),
      quasispectrumRestricts_iff_spectrumRestricts_inr' ℂ] at hxy hyz ⊢
    exact ⟨by simpa using hyz.1.add hxy.1, by simpa using hyz.2.nnreal_add hyz.1 hxy.1 hxy.2⟩

variable (A) in
/-- The `CStarAlgebra.spectralOrder` on a C⋆-algebra is a `StarOrderedRing`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43fe3f23391562543d0f0e972062f6c7d0dc19d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
