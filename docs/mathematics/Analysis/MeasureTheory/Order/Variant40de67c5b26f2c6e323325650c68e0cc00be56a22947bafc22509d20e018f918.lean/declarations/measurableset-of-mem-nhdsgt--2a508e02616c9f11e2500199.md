# MeasurableSet.of_mem_nhdsGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fdcd7fa-7b33-5e43-d3da-552b3f32c94a",
  "kind": "theorem",
  "lexical_name": "MeasurableSet.of_mem_nhdsGT",
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
  "slug": "measurableset-of-mem-nhdsgt--2a508e02616c9f11e2500199",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 842,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a508e02616c9f11e2500199984724d21c318471e19018f4114dd0655dcad3ef",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fdcd7fa-7b33-5e43-d3da-552b3f32c94a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasurableSet.of_mem_nhdsGT {s : Set α} (h : ∀ x ∈ s, s ∈ 𝓝[>] x) : MeasurableSet s := by
  by_cases H : ∃ x ∈ s, IsTop x
  · rcases H with ⟨x₀, x₀s, h₀⟩
    have : s = { x₀ } ∪ s \ { x₀ } := by rw [union_sdiff_cancel (singleton_subset_iff.2 x₀s)]
    rw [this]
    refine (measurableSet_singleton _).union ?_
    have A : ∀ x ∈ s \ { x₀ }, x < x₀ := fun x hx => lt_of_le_of_ne (h₀ _) (by simpa using hx.2)
    refine .of_mem_nhdsGT_aux (fun x hx => ?_) fun x hx => ⟨x₀, A x hx⟩
    obtain ⟨u, hu, us⟩ : ∃ (u : α), u ∈ Ioi x ∧ Ioo x u ⊆ s :=
      (mem_nhdsGT_iff_exists_Ioo_subset' (A x hx)).1 (h x hx.1)
    refine (mem_nhdsGT_iff_exists_Ioo_subset' (A x hx)).2 ⟨u, hu, fun y hy => ⟨us hy, ?_⟩⟩
    exact ne_of_lt (hy.2.trans_le (h₀ _))
  · refine .of_mem_nhdsGT_aux h ?_
    simp only [IsTop] at H
    push Not at H
    exact H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
