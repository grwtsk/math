# Balanced.convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f522a024-d70f-92bd-42d2-66797ae9e2b2",
  "kind": "theorem",
  "lexical_name": "Balanced.convexHull",
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
  "slug": "balanced-convexhull--8b265fe6fdfb45e6f08d97bc",
  "source": {
    "blob": "d92d33a5ece91fed015b7c766248dd5f203ad2b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b265fe6fdfb45e6f08d97bc09d653365ece53334c00e1462ccd89714e10a493",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f522a024-d70f-92bd-42d2-66797ae9e2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Balanced.convexHull (hs : Balanced 𝕜 s) : Balanced 𝕜 (convexHull ℝ s) := by
  suffices Convex ℝ { x | ∀ a : 𝕜, ‖a‖ ≤ 1 → a • x ∈ convexHull ℝ s } by
    rw [balanced_iff_smul_mem] at hs ⊢
    refine fun a ha x hx => convexHull_min ?_ this hx a ha
    exact fun y hy a ha => subset_convexHull ℝ s (hs ha hy)
  intro x hx y hy u v hu hv huv a ha
  simp only [smul_add, ← smul_comm]
  exact convex_convexHull ℝ s (hx a ha) (hy a ha) hu hv huv

end NontriviallyNormedField

section Real

variable [AddCommGroup E] [Module ℝ E] {s : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant14e3a0136290798752e013bb05b4757dd7aaaa9799b17b2c115edadd68baa6f0.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92d33a5ece91fed015b7c766248dd5f203ad2b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
