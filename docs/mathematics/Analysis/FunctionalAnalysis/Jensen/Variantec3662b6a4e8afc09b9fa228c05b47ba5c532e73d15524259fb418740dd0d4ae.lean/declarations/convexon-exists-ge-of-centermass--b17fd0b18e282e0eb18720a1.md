# ConvexOn.exists_ge_of_centerMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2d7b429-e0e3-a1b5-01f5-9599cbc45d01",
  "kind": "theorem",
  "lexical_name": "ConvexOn.exists_ge_of_centerMass",
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
  "slug": "convexon-exists-ge-of-centermass--b17fd0b18e282e0eb18720a1",
  "source": {
    "blob": "c3ecb41590ec17d82cae59f5c07cd70ef908c21d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 111,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b17fd0b18e282e0eb18720a1d01eb9171f76100535aa10e87d28581032eeeb2e",
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

Occurrence: `result:f2d7b429-e0e3-a1b5-01f5-9599cbc45d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexOn.exists_ge_of_centerMass (h : ConvexOn 𝕜 s f) (hw₀ : ∀ i ∈ t, 0 ≤ w i)
    (hw₁ : 0 < ∑ i in t, w i) (hp : ∀ i ∈ t, p i ∈ s) :
    ∃ i ∈ t, f (t.centerMass w p) ≤ f (p i) := by
  set y := t.centerMass w p
  obtain ⟨i, hi, hfi⟩ : ∃ i ∈ t.filter fun i => w i ≠ 0, w i • f y ≤ w i • (f ∘ p) i
  rotate_left
  · rw [mem_filter] at hi
    exact ⟨i, hi.1, (smul_le_smul_iff_of_pos <| (hw₀ i hi.1).lt_of_ne hi.2.symm).1 hfi⟩
  have hw' : (0 : 𝕜) < ∑ i in filter (fun i => w i ≠ 0) t, w i := by rwa [sum_filter_ne_zero]
  refine' exists_le_of_sum_le (nonempty_of_sum_ne_zero hw'.ne') _
  rw [← sum_smul, ← smul_le_smul_iff_of_pos (inv_pos.2 hw'), inv_smul_smul₀ hw'.ne', ←
    Finset.centerMass, Finset.centerMass_filter_ne_zero]
  exact h.map_centerMass_le hw₀ hw₁ hp
#align convex_on.exists_ge_of_center_mass ConvexOn.exists_ge_of_centerMass

/-- If a function `f` is concave on `s`, then the value it takes at some center of mass of points of
`s` is greater than the value it takes on one of those points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantec3662b6a4e8afc09b9fa228c05b47ba5c532e73d15524259fb418740dd0d4ae.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3ecb41590ec17d82cae59f5c07cd70ef908c21d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
