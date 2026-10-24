# IsOpen.balancedHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:074a8eb8-08af-6c40-0e69-5115f74ae56a",
  "kind": "theorem",
  "lexical_name": "IsOpen.balancedHull",
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
  "slug": "isopen-balancedhull--033f6e3e79ffd72de7647a7a",
  "source": {
    "blob": "8c83aa726cff99a7aec0d8c1ec1eaaa00a821347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 251,
    "path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:033f6e3e79ffd72de7647a7a68046873f4ba5b02058c92f89d5d293f1a76f019",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:074a8eb8-08af-6c40-0e69-5115f74ae56a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsOpen.balancedHull [ContinuousConstSMul 𝕜 E] {s : Set E} (hs : IsOpen s)
    (hzero : 0 ∈ s) : IsOpen (balancedHull 𝕜 s) := by
  have : (⋃ r : 𝕜, ⋃ (_ : ‖r‖ ≤ 1), r • s) = (⋃ r : 𝕜, ⋃ (_ : ‖r‖ ≤ 1 ∧ r ≠ 0), r • s) := by
    refine subset_antisymm (Set.iUnion₂_mono' fun r hr ↦ ?_) (Set.iUnion₂_mono' (by grind))
    obtain rfl | hr_ne := eq_or_ne r 0
    · exact ⟨1, by simp, by simpa [Set.zero_smul_set ⟨0, hzero⟩]⟩
    · use r
  rw [balancedHull, this]
  exact isOpen_biUnion (fun r hr ↦ hs.smul₀ hr.2)

-- We don't have a `NontriviallyNormedDivisionRing`, so we use a `NeBot` assumption instead
variable [NeBot (𝓝[≠] (0 : 𝕜))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant580ef2dbf62de011ed3a5520b440dca9f0146b1ab5cde1e92616e6dbb3a6e865.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c83aa726cff99a7aec0d8c1ec1eaaa00a821347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
