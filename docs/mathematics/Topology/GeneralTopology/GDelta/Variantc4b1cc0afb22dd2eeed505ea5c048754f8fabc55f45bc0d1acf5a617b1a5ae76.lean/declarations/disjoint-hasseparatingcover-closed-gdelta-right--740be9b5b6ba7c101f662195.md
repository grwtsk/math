# Disjoint.hasSeparatingCover_closed_gdelta_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fe41b7380b60e57fc81c37e699c93d511cd4891",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb4733cf-71d9-ae3f-449c-3f538a1dd867",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e14bf064-edff-2bf4-56b7-262f7dddc9e0",
  "kind": "theorem",
  "lexical_name": "Disjoint.hasSeparatingCover_closed_gdelta_right",
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
  "slug": "disjoint-hasseparatingcover-closed-gdelta-right--740be9b5b6ba7c101f662195",
  "source": {
    "blob": "7fe41b7380b60e57fc81c37e699c93d511cd4891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740be9b5b6ba7c101f662195cf7ec1029a4b4020fbea801fb73e0a716cb97521",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e14bf064-edff-2bf4-56b7-262f7dddc9e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disjoint.hasSeparatingCover_closed_gdelta_right {s t : Set X} [NormalSpace X]
    (st_dis : Disjoint s t) (t_cl : IsClosed t) (t_gd : IsGδ t) : HasSeparatingCover s t := by
  obtain ⟨T, T_open, T_count, T_int⟩ := t_gd
  rcases T.eq_empty_or_nonempty with rfl | T_nonempty
  · rw [T_int, sInter_empty] at st_dis
    rw [(s.disjoint_univ).mp st_dis]
    exact t.hasSeparatingCover_empty_left
  obtain ⟨g, g_surj⟩ := T_count.exists_surjective T_nonempty
  choose g' g'_open clt_sub_g' clg'_sub_g using fun n ↦ by
    apply normal_exists_closure_subset t_cl (T_open (g n).1 (g n).2)
    rw [T_int]
    exact sInter_subset_of_mem (g n).2
  have clg'_int : t = ⋂ i, closure (g' i) := by
    apply (subset_iInter fun n ↦ (clt_sub_g' n).trans subset_closure).antisymm
    rw [T_int]
    refine subset_sInter fun t tinT ↦ ?_
    obtain ⟨n, gn⟩ := g_surj ⟨t, tinT⟩
    refine iInter_subset_of_subset n <| (clg'_sub_g n).trans ?_
    rw [gn]
  use fun n ↦ (closure (g' n))ᶜ
  constructor
  · rw [← compl_iInter, subset_compl_comm, ← clg'_int]
    exact st_dis.subset_compl_left
  · refine fun n ↦ ⟨isOpen_compl_iff.mpr isClosed_closure, ?_⟩
    simp only [closure_compl, disjoint_compl_left_iff_subset]
    rw [← closure_eq_iff_isClosed.mpr t_cl] at clt_sub_g'
    exact subset_closure.trans <| (clt_sub_g' n).trans <| (g'_open n).subset_interior_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GDelta/Variantc4b1cc0afb22dd2eeed505ea5c048754f8fabc55f45bc0d1acf5a617b1a5ae76.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe41b7380b60e57fc81c37e699c93d511cd4891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
