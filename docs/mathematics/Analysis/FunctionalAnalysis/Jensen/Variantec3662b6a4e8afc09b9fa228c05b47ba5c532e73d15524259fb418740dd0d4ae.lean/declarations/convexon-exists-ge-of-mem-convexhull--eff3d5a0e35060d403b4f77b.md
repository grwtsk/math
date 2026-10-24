# ConvexOn.exists_ge_of_mem_convexHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c284d802-4c63-bacc-821e-fc6a454f391c",
  "kind": "theorem",
  "lexical_name": "ConvexOn.exists_ge_of_mem_convexHull",
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
  "slug": "convexon-exists-ge-of-mem-convexhull--eff3d5a0e35060d403b4f77b",
  "source": {
    "blob": "c3ecb41590ec17d82cae59f5c07cd70ef908c21d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 135,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eff3d5a0e35060d403b4f77ba95ef4ba3ad6360b443d846c77681cda0333fc6c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c284d802-4c63-bacc-821e-fc6a454f391c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexOn.exists_ge_of_mem_convexHull (hf : ConvexOn 𝕜 (convexHull 𝕜 s) f) {x}
    (hx : x ∈ convexHull 𝕜 s) : ∃ y ∈ s, f x ≤ f y := by
  rw [_root_.convexHull_eq] at hx
  obtain ⟨α, t, w, p, hw₀, hw₁, hp, rfl⟩ := hx
  rcases hf.exists_ge_of_centerMass hw₀ (hw₁.symm ▸ zero_lt_one) fun i hi =>
      subset_convexHull 𝕜 s (hp i hi) with
    ⟨i, hit, Hi⟩
  exact ⟨p i, hp i hit, Hi⟩
#align convex_on.exists_ge_of_mem_convex_hull ConvexOn.exists_ge_of_mem_convexHull

/-- Minimum principle for concave functions. If a function `f` is concave on the convex hull of `s`,
then the eventual minimum of `f` on `convexHull 𝕜 s` lies in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3ecb41590ec17d82cae59f5c07cd70ef908c21d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
