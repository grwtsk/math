# oriented_plucker_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75c8cd7c-a6ac-2a8f-e35a-3dd3f69de16e",
  "kind": "theorem",
  "lexical_name": "oriented_plucker_three",
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
  "slug": "oriented-plucker-three--a1ef9ea9de995a9e92713075",
  "source": {
    "blob": "713174359f656b11b7bfd89a5c18999657ecd625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ef9ea9de995a9e92713075eb85762fc82269ebbe85795867dc7ffd5d36b7a6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75c8cd7c-a6ac-2a8f-e35a-3dd3f69de16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oriented_plucker_three (M : Matrix (Fin 3) (Fin 3) ℝ) :
    (M 0 2 * M 1 0 - M 0 0 * M 1 2) *
        (M 0 1 * M 2 0 - M 0 0 * M 2 1) -
      (M 0 1 * M 1 0 - M 0 0 * M 1 1) *
        (M 0 2 * M 2 0 - M 0 0 * M 2 2) = -M 0 0 * M.det := by
  rw [Matrix.det_fin_three]
  exact oriented_plucker_three_scalar _ _ _ _ _ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/662bb7da9ee3bc7713c4deb0eae328bbcb1fe72ea300baf977142479ca16daa3Reduction02Faile/Variant5631e40ec62ffb4fad79ad1c850272ce37a1b3a70dfcf5a4d3802bf7b5a13869.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713174359f656b11b7bfd89a5c18999657ecd625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
