# AffineMap.isOpenMap_linear_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2e6c94d-caa8-11ee-b277-6742e2b9a27f",
  "kind": "theorem",
  "lexical_name": "AffineMap.isOpenMap_linear_iff",
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
  "slug": "affinemap-isopenmap-linear-iff--9526a4a13438bd0cce352681",
  "source": {
    "blob": "47507d17ddf18be10e96b6e2ef19193dd0aa7be8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 755,
    "path": "GRWTSK/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9526a4a13438bd0cce3526811185912bb8a5ee9ac3f21450beaf06c371c2c9e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2e6c94d-caa8-11ee-b277-6742e2b9a27f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineMap.isOpenMap_linear_iff {f : P →ᵃ[𝕜] P₂} : IsOpenMap f.linear ↔ IsOpenMap f := by
  inhabit P
  have :
    (f.linear : V → V₂) =
      (AffineIsometryEquiv.vaddConst 𝕜 <| f default).toHomeomorph.symm ∘
        f ∘ (AffineIsometryEquiv.vaddConst 𝕜 default).toHomeomorph := by
    ext v
    simp
  rw [this]
  simp only [Homeomorph.comp_isOpenMap_iff, Homeomorph.comp_isOpenMap_iff']

attribute [local instance] AffineSubspace.nonempty_map -- Porting note: removed `fails_quickly`

namespace AffineSubspace

/-- An affine subspace is isomorphic to its image under an injective affine map.
This is the affine version of `Submodule.equivMapOfInjective`.
-/
@[simps linear, simps! toFun]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Isometry/Variant67ed9f8ab70038e19e435b537b982fb08dd6fa7d56c330dd32b6d4a3be42c7f1.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47507d17ddf18be10e96b6e2ef19193dd0aa7be8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
