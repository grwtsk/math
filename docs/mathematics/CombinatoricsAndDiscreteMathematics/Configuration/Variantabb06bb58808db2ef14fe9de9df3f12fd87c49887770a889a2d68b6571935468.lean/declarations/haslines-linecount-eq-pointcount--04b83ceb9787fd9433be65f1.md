# HasLines.lineCount_eq_pointCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:267fccc2-13ce-eb4f-27bc-42461f5b7f24",
  "kind": "theorem",
  "lexical_name": "HasLines.lineCount_eq_pointCount",
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
  "slug": "haslines-linecount-eq-pointcount--04b83ceb9787fd9433be65f1",
  "source": {
    "blob": "90fe22ae0eab72724e4a79c792addc7d76d1f5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 290,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b83ceb9787fd9433be65f10ac61829ae61f70173a2e9ee7b4b9fcc7b59143d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:267fccc2-13ce-eb4f-27bc-42461f5b7f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasLines.lineCount_eq_pointCount [HasLines P L] [Fintype P] [Fintype L]
    (hPL : Fintype.card P = Fintype.card L) {p : P} {l : L} (hpl : p ∉ l) :
    lineCount L p = pointCount P l := by
  classical
    obtain ⟨f, hf1, hf2⟩ := HasLines.exists_bijective_of_card_eq hPL
    let s : Finset (P × L) := Set.toFinset { i | i.1 ∈ i.2 }
    have step1 : ∑ i : P × L, lineCount L i.1 = ∑ i : P × L, pointCount P i.2 := by
      rw [← Finset.univ_product_univ, Finset.sum_product_right, Finset.sum_product]
      simp_rw [Finset.sum_const, Finset.card_univ, hPL, sum_lineCount_eq_sum_pointCount]
    have step2 : ∑ i in s, lineCount L i.1 = ∑ i in s, pointCount P i.2 := by
      rw [s.sum_finset_product Finset.univ fun p => Set.toFinset { l | p ∈ l }]
      rw [s.sum_finset_product_right Finset.univ fun l => Set.toFinset { p | p ∈ l }]
      refine'
        (Finset.sum_bij (fun l _ => f l) (fun l _ => Finset.mem_univ (f l)) (fun l hl => _)
            (fun _ _ _ _ h => hf1.1 h) fun p _ => _).symm
      · simp_rw [Finset.sum_const, Set.toFinset_card, ← Nat.card_eq_fintype_card]
        change pointCount P l • pointCount P l = lineCount L (f l) • lineCount L (f l)
        rw [hf2]
      · obtain ⟨l, hl⟩ := hf1.2 p
        exact ⟨l, Finset.mem_univ l, hl.symm⟩
      all_goals simp_rw [Finset.mem_univ, true_and_iff, Set.mem_toFinset]; exact fun p => Iff.rfl
    have step3 : ∑ i in sᶜ, lineCount L i.1 = ∑ i in sᶜ, pointCount P i.2 := by
      rwa [← s.sum_add_sum_compl, ← s.sum_add_sum_compl, step2, add_left_cancel_iff] at step1
    rw [← Set.toFinset_compl] at step3
    exact
      ((Finset.sum_eq_sum_iff_of_le fun i hi =>
              HasLines.pointCount_le_lineCount (by exact Set.mem_toFinset.mp hi)).mp
          step3.symm (p, l) (Set.mem_toFinset.mpr hpl)).symm
#align configuration.has_lines.line_count_eq_point_count Configuration.HasLines.lineCount_eq_pointCount

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90fe22ae0eab72724e4a79c792addc7d76d1f5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
