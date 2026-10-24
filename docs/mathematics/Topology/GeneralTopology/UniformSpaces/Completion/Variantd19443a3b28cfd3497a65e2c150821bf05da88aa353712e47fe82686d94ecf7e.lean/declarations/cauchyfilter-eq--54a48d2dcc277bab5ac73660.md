# cauchyFilter_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7788721b3919655f7cc54f275fbe1166422a576e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbbecfea-2c4e-cc8b-b3ff-53678267e6df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec8ca254-07ff-78bb-975c-9c3532da19bc",
  "kind": "theorem",
  "lexical_name": "cauchyFilter_eq",
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
  "slug": "cauchyfilter-eq--54a48d2dcc277bab5ac73660",
  "source": {
    "blob": "7788721b3919655f7cc54f275fbe1166422a576e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54a48d2dcc277bab5ac7366016b621a22b9004977e6a2bada69d63176c43c564",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec8ca254-07ff-78bb-975c-9c3532da19bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchyFilter_eq {α : Type*} [Inhabited α] [UniformSpace α] [CompleteSpace α]
    [SeparatedSpace α] {f g : CauchyFilter α} :
    lim f.1 = lim g.1 ↔ (f, g) ∈ separationRel (CauchyFilter α) := by
  constructor
  · intro e s hs
    rcases CauchyFilter.mem_uniformity'.1 hs with ⟨t, tu, ts⟩
    apply ts
    rcases comp_mem_uniformity_sets tu with ⟨d, du, dt⟩
    refine'
      mem_prod_iff.2
        ⟨_, f.2.le_nhds_lim (mem_nhds_right (lim f.1) du), _,
          g.2.le_nhds_lim (mem_nhds_left (lim g.1) du), fun x h => _⟩
    cases' x with a b
    cases' h with h₁ h₂
    rw [← e] at h₂
    exact dt ⟨_, h₁, h₂⟩
  · intro H
    refine' separated_def.1 (by infer_instance) _ _ fun t tu => _
    rcases mem_uniformity_isClosed tu with ⟨d, du, dc, dt⟩
    refine'
      H { p | (lim p.1.1, lim p.2.1) ∈ t } (CauchyFilter.mem_uniformity'.2 ⟨d, du, fun f g h => _⟩)
    rcases mem_prod_iff.1 h with ⟨x, xf, y, yg, h⟩
    have limc : ∀ (f : CauchyFilter α), ∀ x ∈ f.1, lim f.1 ∈ closure x := by
      intro f x xf
      rw [closure_eq_cluster_pts]
      exact f.2.1.mono (le_inf f.2.le_nhds_lim (le_principal_iff.2 xf))
    have := dc.closure_subset_iff.2 h
    rw [closure_prod_eq] at this
    refine' dt (this ⟨_, _⟩) <;> dsimp <;> apply limc <;> assumption
set_option linter.uppercaseLean3 false in
#align Cauchy.Cauchy_eq CauchyFilter.cauchyFilter_eq

section

attribute [local instance] UniformSpace.separationSetoid

-- porting note: added types in Function.Injective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7788721b3919655f7cc54f275fbe1166422a576e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
