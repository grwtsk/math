# table_8_ε.le_simp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0529e5c126546a6a369676b778e7fdc576047a1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 714,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d24d5638a857de13af29674e97aaef8861f7bd3513a4956f5d266dd317a76e33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ca841d6-95b7-c94e-6879-8ecf8ca6fec0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a231378-0167-60d4-6278-2bb089a3328c",
  "kind": "theorem",
  "lexical_name": "table_8_ε.le_simp",
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
  "slug": "table-8-le-simp--6c1007b4ff9a0fffe902e290",
  "source": {
    "blob": "0529e5c126546a6a369676b778e7fdc576047a1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1241,
    "line": 714,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantd24d5638a857de13af29674e97aaef8861f7bd3513a4956f5d266dd317a76e33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1007b4ff9a0fffe902e29024313622427f91b8c7b42a890d5ed0be04663271",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantd24d5638a857de13af29674e97aaef8861f7bd3513a4956f5d266dd317a76e33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a231378-0167-60d4-6278-2bb089a3328c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–1241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_8_ε.le_simp (b : ℝ) (hb : b ≥ 20) : table_8_ε b ≤ table_8_ε' b := by
  classical
  have h20 : ¬ b < 20 := by linarith [hb]
  by_cases h21 : b < 21
  · have hprev : (20 : ℝ) ≤ b := by exact hb
    have hrow : table_8_ε b ≤ 4.2676e-5 :=
      table_8_ε_le_of_row table_8_mem_20 hprev
    have hbound : (4.2676e-5 : ℝ) ≤ 4.26760e-5 * table_8_margin := by
      norm_num [table_8_margin]
    have hle : table_8_ε b ≤ 4.26760e-5 * table_8_margin := by
      exact le_trans hrow hbound
    simpa [table_8_ε', h20, h21] using hle
  · by_cases h22 : b < 22
    · have hprev : (21 : ℝ) ≤ b := by exact le_of_not_lt h21
      have hrow : table_8_ε b ≤ 2.5885e-5 :=
        table_8_ε_le_of_row table_8_mem_21 hprev
      have hbound : (2.5885e-5 : ℝ) ≤ 2.58843e-5 * table_8_margin := by
        norm_num [table_8_margin]
      have hle : table_8_ε b ≤ 2.58843e-5 * table_8_margin := by
        exact le_trans hrow hbound
      simpa [table_8_ε', h20, h22, h21] using hle
    · by_cases h23 : b < 23
      · have hprev : (22 : ℝ) ≤ b := by exact le_of_not_lt h22
        have hrow : table_8_ε b ≤ 1.5701e-5 :=
          table_8_ε_le_of_row table_8_mem_22 hprev
        have hbound : (1.5701e-5 : ℝ) ≤ 1.56996e-5 * table_8_margin := by
          norm_num [table_8_margin]
        have hle : table_8_ε b ≤ 1.56996e-5 * table_8_margin := by
          exact le_trans hrow hbound
        simpa [table_8_ε', h20, h23, h21, h22] using hle
      · by_cases h24 : b < 24
        · have hprev : (23 : ℝ) ≤ b := by exact le_of_not_lt h23
          have hrow : table_8_ε b ≤ 9.5224e-6 :=
            table_8_ε_le_of_row table_8_mem_23 hprev
          have hbound : (9.5224e-6 : ℝ) ≤ 9.52229e-6 * table_8_margin := by
            norm_num [table_8_margin]
          have hle : table_8_ε b ≤ 9.52229e-6 * table_8_margin := by
            exact le_trans hrow hbound
          simpa [table_8_ε', h20, h24, h21, h22, h23] using hle
        · by_cases h25 : b < 25
          · have hprev : (24 : ℝ) ≤ b := by exact le_of_not_lt h24
            have hrow : table_8_ε b ≤ 5.7757e-6 :=
              table_8_ε_le_of_row table_8_mem_24 hprev
            have hbound : (5.7757e-6 : ℝ) ≤ 5.77556e-6 * table_8_margin := by
              norm_num [table_8_margin]
            have hle : table_8_ε b ≤ 5.77556e-6 * table_8_margin := by
              exact le_trans hrow hbound
            simpa [table_8_ε', h20, h25, h21, h22, h23, h24] using hle
          · by_cases h30 : b < 30
            · have hprev : (25 : ℝ) ≤ b := by exact le_of_not_lt h25
              have hrow : table_8_ε b ≤ 3.5032e-6 :=
                table_8_ε_le_of_row table_8_mem_25 hprev
              have hbound : (3.5032e-6 : ℝ) ≤ 3.50306e-6 * table_8_margin := by
                norm_num [table_8_margin]
              have hle : table_8_ε b ≤ 3.50306e-6 * table_8_margin := by
                exact le_trans hrow hbound
              simpa [table_8_ε', h20, h30, h21, h22, h23, h24, h25] using hle
            · by_cases h35 : b < 35
              · have hprev : (30 : ℝ) ≤ b := by exact le_of_not_lt h30
                have hrow : table_8_ε b ≤ 2.8756e-7 :=
                  table_8_ε_le_of_row table_8_mem_30 hprev
                have hbound : (2.8756e-7 : ℝ) ≤ 2.87549e-7 * table_8_margin := by
                  norm_num [table_8_margin]
                have hle : table_8_ε b ≤ 2.87549e-7 * table_8_margin := by
                  exact le_trans hrow hbound
                simpa [table_8_ε', h20, h35, h21, h22, h23, h24, h25, h30] using hle
              · by_cases h40 : b < 40
                · have hprev : (35 : ℝ) ≤ b := by exact le_of_not_lt h35
                  have hrow : table_8_ε b ≤ 2.3604e-8 :=
                    table_8_ε_le_of_row table_8_mem_35 hprev
                  have hbound : (2.3604e-8 : ℝ) ≤ 2.36034e-8 * table_8_margin := by
                    norm_num [table_8_margin]
                  have hle : table_8_ε b ≤ 2.36034e-8 * table_8_margin := by
                    exact le_trans hrow hbound
                  simpa [table_8_ε', h20, h40, h21, h22, h23, h24, h25, h30, h35] using hle
                · by_cases h45 : b < 45
                  · have hprev : (40 : ℝ) ≤ b := by exact le_of_not_lt h40
                    have hrow : table_8_ε b ≤ 1.9339e-8 :=
                      table_8_ε_le_of_row table_8_mem_40 hprev
                    have hbound : (1.9339e-8 : ℝ) ≤ 1.93378e-8 * table_8_margin := by
                      norm_num [table_8_margin]
                    have hle : table_8_ε b ≤ 1.93378e-8 * table_8_margin := by
                      exact le_trans hrow hbound
                    simpa [table_8_ε', h20, h45, h21, h22, h23, h24, h25, h30, h35, h40] using hle
                  · by_cases h50 : b < 50
                    · have hprev : (45 : ℝ) ≤ b := by exact le_of_not_lt h45
                      have hrow : table_8_ε b ≤ 1.0908e-8 :=
                        table_8_ε_le_of_row table_8_mem_45 hprev
                      have hbound : (1.0908e-8 : ℝ) ≤ 1.09073e-8 * table_8_margin := by
                        norm_num [table_8_margin]
                      have hle : table_8_ε b ≤ 1.09073e-8 * table_8_margin := by
                        exact le_trans hrow hbound
                      simpa [table_8_ε', h20, h50, h21, h22, h23, h24, h25, h30, h35, h40, h45] using hle
                    · by_cases h100 : b < 100
                      · have hprev : (50 : ℝ) ≤ b := by exact le_of_not_lt h50
                        have hrow : table_8_ε b ≤ 1.1200e-9 :=
                          table_8_ε_le_of_row table_8_mem_50 hprev
                        have hbound : (1.1200e-9 : ℝ) ≤ 1.11990e-9 * table_8_margin := by
                          norm_num [table_8_margin]
                        have hle : table_8_ε b ≤ 1.11990e-9 * table_8_margin := by
                          exact le_trans hrow hbound
                        simpa [table_8_ε', h20, h100, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50] using hle
                      · by_cases h200 : b < 200
                        · have hprev : (100 : ℝ) ≤ b := by exact le_of_not_lt h100
                          have hrow : table_8_ε b ≤ 2.4531e-12 :=
                            table_8_ε_le_of_row table_8_mem_100 hprev
                          have hbound : (2.4531e-12 : ℝ) ≤ 2.45299e-12 * table_8_margin := by
                            norm_num [table_8_margin]
                          have hle : table_8_ε b ≤ 2.45299e-12 * table_8_margin := by
                            exact le_trans hrow hbound
                          simpa [table_8_ε', h20, h200, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100] using hle
                        · by_cases h300 : b < 300
                          · have hprev : (200 : ℝ) ≤ b := by exact le_of_not_lt h200
                            have hrow : table_8_ε b ≤ 2.1816e-12 :=
                              table_8_ε_le_of_row table_8_mem_200 hprev
                            have hbound : (2.1816e-12 : ℝ) ≤ 2.18154e-12 * table_8_margin := by
                              norm_num [table_8_margin]
                            have hle : table_8_ε b ≤ 2.18154e-12 * table_8_margin := by
                              exact le_trans hrow hbound
                            simpa [table_8_ε', h20, h300, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200] using hle
                          · by_cases h400 : b < 400
                            · have hprev : (300 : ℝ) ≤ b := by exact le_of_not_lt h300
                              have hrow : table_8_ε b ≤ 2.0903e-12 :=
                                table_8_ε_le_of_row table_8_mem_300 hprev
                              have hbound : (2.0903e-12 : ℝ) ≤ 2.09022e-12 * table_8_margin := by
                                norm_num [table_8_margin]
                              have hle : table_8_ε b ≤ 2.09022e-12 * table_8_margin := by
                                exact le_trans hrow hbound
                              simpa [table_8_ε', h20, h400, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300] using hle
                            · by_cases h500 : b < 500
                              · have hprev : (400 : ℝ) ≤ b := by exact le_of_not_lt h400
                                have hrow : table_8_ε b ≤ 2.0399e-12 :=
                                  table_8_ε_le_of_row table_8_mem_400 hprev
                                have hbound : (2.0399e-12 : ℝ) ≤ 2.03981e-12 * table_8_margin := by
                                  norm_num [table_8_margin]
                                have hle : table_8_ε b ≤ 2.03981e-12 * table_8_margin := by
                                  exact le_trans hrow hbound
                                simpa [table_8_ε', h20, h500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400] using hle
                              · by_cases h600 : b < 600
                                · have hprev : (500 : ℝ) ≤ b := by exact le_of_not_lt h500
                                  have hrow : table_8_ε b ≤ 1.9999e-12 :=
                                    table_8_ε_le_of_row table_8_mem_500 hprev
                                  have hbound : (1.9999e-12 : ℝ) ≤ 1.99986e-12 * table_8_margin := by
                                    norm_num [table_8_margin]
                                  have hle : table_8_ε b ≤ 1.99986e-12 * table_8_margin := by
                                    exact le_trans hrow hbound
                                  simpa [table_8_ε', h20, h600, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500] using hle
                                · by_cases h700 : b < 700
                                  · have hprev : (600 : ℝ) ≤ b := by exact le_of_not_lt h600
                                    have hrow : table_8_ε b ≤ 1.9890e-12 :=
                                      table_8_ε_le_of_row table_8_mem_600 hprev
                                    have hbound : (1.9890e-12 : ℝ) ≤ 1.98894e-12 * table_8_margin := by
                                      norm_num [table_8_margin]
                                    have hle : table_8_ε b ≤ 1.98894e-12 * table_8_margin := by
                                      exact le_trans hrow hbound
                                    simpa [table_8_ε', h20, h700, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600] using hle
                                  · by_cases h800 : b < 800
                                    · have hprev : (700 : ℝ) ≤ b := by exact le_of_not_lt h700
                                      have hrow : table_8_ε b ≤ 1.9765e-12 :=
                                        table_8_ε_le_of_row table_8_mem_700 hprev
                                      have hbound : (1.9765e-12 : ℝ) ≤ 1.97643e-12 * table_8_margin := by
                                        norm_num [table_8_margin]
                                      have hle : table_8_ε b ≤ 1.97643e-12 * table_8_margin := by
                                        exact le_trans hrow hbound
                                      simpa [table_8_ε', h20, h800, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700] using hle
                                    · by_cases h900 : b < 900
                                      · have hprev : (800 : ℝ) ≤ b := by exact le_of_not_lt h800
                                        have hrow : table_8_ε b ≤ 1.9672e-12 :=
                                          table_8_ε_le_of_row table_8_mem_800 hprev
                                        have hbound : (1.9672e-12 : ℝ) ≤ 1.96710e-12 * table_8_margin := by
                                          norm_num [table_8_margin]
                                        have hle : table_8_ε b ≤ 1.96710e-12 * table_8_margin := by
                                          exact le_trans hrow hbound
                                        simpa [table_8_ε', h20, h900, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800] using hle
                                      · by_cases h1000 : b < 1000
                                        · have hprev : (900 : ℝ) ≤ b := by exact le_of_not_lt h900
                                          have hrow : table_8_ε b ≤ 1.9600e-12 :=
                                            table_8_ε_le_of_row table_8_mem_900 hprev
                                          have hbound : (1.9600e-12 : ℝ) ≤ 1.95987e-12 * table_8_margin := by
                                            norm_num [table_8_margin]
                                          have hle : table_8_ε b ≤ 1.95987e-12 * table_8_margin := by
                                            exact le_trans hrow hbound
                                          simpa [table_8_ε', h20, h1000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900] using hle
                                        · by_cases h1500 : b < 1500
                                          · have hprev : (1000 : ℝ) ≤ b := by exact le_of_not_lt h1000
                                            have hrow : table_8_ε b ≤ 1.9476e-12 :=
                                              table_8_ε_le_of_row table_8_mem_1000 hprev
                                            have hbound : (1.9476e-12 : ℝ) ≤ 1.94751e-12 * table_8_margin := by
                                              norm_num [table_8_margin]
                                            have hle : table_8_ε b ≤ 1.94751e-12 * table_8_margin := by
                                              exact le_trans hrow hbound
                                            simpa [table_8_ε', h20, h1500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000] using hle
                                          · by_cases h2000 : b < 2000
                                            · have hprev : (1500 : ℝ) ≤ b := by exact le_of_not_lt h1500
                                              have hrow : table_8_ε b ≤ 1.9369e-12 :=
                                                table_8_ε_le_of_row table_8_mem_1500 hprev
                                              have hbound : (1.9369e-12 : ℝ) ≤ 1.93677e-12 * table_8_margin := by
                                                norm_num [table_8_margin]
                                              have hle : table_8_ε b ≤ 1.93677e-12 * table_8_margin := by
                                                exact le_trans hrow hbound
                                              simpa [table_8_ε', h20, h2000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500] using hle
                                            · by_cases h2500 : b < 2500
                                              · have hprev : (2000 : ℝ) ≤ b := by exact le_of_not_lt h2000
                                                have hrow : table_8_ε b ≤ 1.9229e-12 :=
                                                  table_8_ε_le_of_row table_8_mem_2000 hprev
                                                have hbound : (1.9229e-12 : ℝ) ≤ 1.92279e-12 * table_8_margin := by
                                                  norm_num [table_8_margin]
                                                have hle : table_8_ε b ≤ 1.92279e-12 * table_8_margin := by
                                                  exact le_trans hrow hbound
                                                simpa [table_8_ε', h20, h2500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000] using hle
                                              · by_cases h3000 : b < 3000
                                                · have hprev : (2500 : ℝ) ≤ b := by exact le_of_not_lt h2500
                                                  have hrow : table_8_ε b ≤ 9.0631e-13 :=
                                                    table_8_ε_le_of_row table_8_mem_2500 hprev
                                                  have hbound : (9.0631e-13 : ℝ) ≤ 9.06304e-13 * table_8_margin := by
                                                    norm_num [table_8_margin]
                                                  have hle : table_8_ε b ≤ 9.06304e-13 * table_8_margin := by
                                                    exact le_trans hrow hbound
                                                  simpa [table_8_ε', h20, h3000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500] using hle
                                                · by_cases h3500 : b < 3500
                                                  · have hprev : (3000 : ℝ) ≤ b := by exact le_of_not_lt h3000
                                                    have hrow : table_8_ε b ≤ 4.5998e-14 :=
                                                      table_8_ε_le_of_row table_8_mem_3000 hprev
                                                    have hbound : (4.5998e-14 : ℝ) ≤ 4.59972e-14 * table_8_margin := by
                                                      norm_num [table_8_margin]
                                                    have hle : table_8_ε b ≤ 4.59972e-14 * table_8_margin := by
                                                      exact le_trans hrow hbound
                                                    simpa [table_8_ε', h20, h3500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000] using hle
                                                  · by_cases h4000 : b < 4000
                                                    · have hprev : (3500 : ℝ) ≤ b := by exact le_of_not_lt h3500
                                                      have hrow : table_8_ε b ≤ 2.4865e-15 :=
                                                        table_8_ε_le_of_row table_8_mem_3500 hprev
                                                      have hbound : (2.4865e-15 : ℝ) ≤ 2.48641e-15 * table_8_margin := by
                                                        norm_num [table_8_margin]
                                                      have hle : table_8_ε b ≤ 2.48641e-15 * table_8_margin := by
                                                        exact le_trans hrow hbound
                                                      simpa [table_8_ε', h20, h4000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500] using hle
                                                    · by_cases h4500 : b < 4500
                                                      · have hprev : (4000 : ℝ) ≤ b := by exact le_of_not_lt h4000
                                                        have hrow : table_8_ε b ≤ 1.4264e-16 :=
                                                          table_8_ε_le_of_row table_8_mem_4000 hprev
                                                        have hbound : (1.4264e-16 : ℝ) ≤ 1.42633e-16 * table_8_margin := by
                                                          norm_num [table_8_margin]
                                                        have hle : table_8_ε b ≤ 1.42633e-16 * table_8_margin := by
                                                          exact le_trans hrow hbound
                                                        simpa [table_8_ε', h20, h4500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000] using hle
                                                      · by_cases h5000 : b < 5000
                                                        · have hprev : (4500 : ℝ) ≤ b := by exact le_of_not_lt h4500
                                                          have hrow : table_8_ε b ≤ 8.6830e-18 :=
                                                            table_8_ε_le_of_row table_8_mem_4500 hprev
                                                          have hbound : (8.6830e-18 : ℝ) ≤ 8.68295e-18 * table_8_margin := by
                                                            norm_num [table_8_margin]
                                                          have hle : table_8_ε b ≤ 8.68295e-18 * table_8_margin := by
                                                            exact le_trans hrow hbound
                                                          simpa [table_8_ε', h20, h5000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500] using hle
                                                        · by_cases h5500 : b < 5500
                                                          · have hprev : (5000 : ℝ) ≤ b := by exact le_of_not_lt h5000
                                                            have hrow : table_8_ε b ≤ 5.6304e-19 :=
                                                              table_8_ε_le_of_row table_8_mem_5000 hprev
                                                            have hbound : (5.6304e-19 : ℝ) ≤ 5.63030e-19 * table_8_margin := by
                                                              norm_num [table_8_margin]
                                                            have hle : table_8_ε b ≤ 5.63030e-19 * table_8_margin := by
                                                              exact le_trans hrow hbound
                                                            simpa [table_8_ε', h20, h5500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000] using hle
                                                          · by_cases h6000 : b < 6000
                                                            · have hprev : (5500 : ℝ) ≤ b := by exact le_of_not_lt h5500
                                                              have hrow : table_8_ε b ≤ 3.9136e-20 :=
                                                                table_8_ε_le_of_row table_8_mem_5500 hprev
                                                              have hbound : (3.9136e-20 : ℝ) ≤ 3.91348e-20 * table_8_margin := by
                                                                norm_num [table_8_margin]
                                                              have hle : table_8_ε b ≤ 3.91348e-20 * table_8_margin := by
                                                                exact le_trans hrow hbound
                                                              simpa [table_8_ε', h20, h6000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500] using hle
                                                            · by_cases h6500 : b < 6500
                                                              · have hprev : (6000 : ℝ) ≤ b := by exact le_of_not_lt h6000
                                                                have hrow : table_8_ε b ≤ 2.9430e-21 :=
                                                                  table_8_ε_le_of_row table_8_mem_6000 hprev
                                                                have hbound : (2.9430e-21 : ℝ) ≤ 2.94288e-21 * table_8_margin := by
                                                                  norm_num [table_8_margin]
                                                                have hle : table_8_ε b ≤ 2.94288e-21 * table_8_margin := by
                                                                  exact le_trans hrow hbound
                                                                simpa [table_8_ε', h20, h6500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000] using hle
                                                              · by_cases h7000 : b < 7000
                                                                · have hprev : (6500 : ℝ) ≤ b := by exact le_of_not_lt h6500
                                                                  have hrow : table_8_ε b ≤ 2.3850e-22 :=
                                                                    table_8_ε_le_of_row table_8_mem_6500 hprev
                                                                  have hbound : (2.3850e-22 : ℝ) ≤ 2.38493e-22 * table_8_margin := by
                                                                    norm_num [table_8_margin]
                                                                  have hle : table_8_ε b ≤ 2.38493e-22 * table_8_margin := by
                                                                    exact le_trans hrow hbound
                                                                  simpa [table_8_ε', h20, h7000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500] using hle
                                                                · by_cases h7500 : b < 7500
                                                                  · have hprev : (7000 : ℝ) ≤ b := by exact le_of_not_lt h7000
                                                                    have hrow : table_8_ε b ≤ 2.0766e-23 :=
                                                                      table_8_ε_le_of_row table_8_mem_7000 hprev
                                                                    have hbound : (2.0766e-23 : ℝ) ≤ 2.07655e-23 * table_8_margin := by
                                                                      norm_num [table_8_margin]
                                                                    have hle : table_8_ε b ≤ 2.07655e-23 * table_8_margin := by
                                                                      exact le_trans hrow hbound
                                                                    simpa [table_8_ε', h20, h7500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000] using hle
                                                                  · by_cases h8000 : b < 8000
                                                                    · have hprev : (7500 : ℝ) ≤ b := by exact le_of_not_lt h7500
                                                                      have hrow : table_8_ε b ≤ 1.9616e-24 :=
                                                                        table_8_ε_le_of_row table_8_mem_7500 hprev
                                                                      have hbound : (1.9616e-24 : ℝ) ≤ 1.96150e-24 * table_8_margin := by
                                                                        norm_num [table_8_margin]
                                                                      have hle : table_8_ε b ≤ 1.96150e-24 * table_8_margin := by
                                                                        exact le_trans hrow hbound
                                                                      simpa [table_8_ε', h20, h8000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500] using hle
                                                                    · by_cases h8500 : b < 8500
                                                                      · have hprev : (8000 : ℝ) ≤ b := by exact le_of_not_lt h8000
                                                                        have hrow : table_8_ε b ≤ 1.9762e-25 :=
                                                                          table_8_ε_le_of_row table_8_mem_8000 hprev
                                                                        have hbound : (1.9762e-25 : ℝ) ≤ 1.97611e-25 * table_8_margin := by
                                                                          norm_num [table_8_margin]
                                                                        have hle : table_8_ε b ≤ 1.97611e-25 * table_8_margin := by
                                                                          exact le_trans hrow hbound
                                                                        simpa [table_8_ε', h20, h8500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000] using hle
                                                                      · by_cases h9000 : b < 9000
                                                                        · have hprev : (8500 : ℝ) ≤ b := by exact le_of_not_lt h8500
                                                                          have hrow : table_8_ε b ≤ 2.1298e-26 :=
                                                                            table_8_ε_le_of_row table_8_mem_8500 hprev
                                                                          have hbound : (2.1298e-26 : ℝ) ≤ 2.12970e-26 * table_8_margin := by
                                                                            norm_num [table_8_margin]
                                                                          have hle : table_8_ε b ≤ 2.12970e-26 * table_8_margin := by
                                                                            exact le_trans hrow hbound
                                                                          simpa [table_8_ε', h20, h9000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500] using hle
                                                                        · by_cases h9500 : b < 9500
                                                                          · have hprev : (9000 : ℝ) ≤ b := by exact le_of_not_lt h9000
                                                                            have hrow : table_8_ε b ≤ 2.4454e-27 :=
                                                                              table_8_ε_le_of_row table_8_mem_9000 hprev
                                                                            have hbound : (2.4454e-27 : ℝ) ≤ 2.44532e-27 * table_8_margin := by
                                                                              norm_num [table_8_margin]
                                                                            have hle : table_8_ε b ≤ 2.44532e-27 * table_8_margin := by
                                                                              exact le_trans hrow hbound
                                                                            simpa [table_8_ε', h20, h9500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000] using hle
                                                                          · by_cases h10000 : b < 10000
                                                                            · have hprev : (9500 : ℝ) ≤ b := by exact le_of_not_lt h9500
                                                                              have hrow : table_8_ε b ≤ 2.9701e-28 :=
                                                                                table_8_ε_le_of_row table_8_mem_9500 hprev
                                                                              have hbound : (2.9701e-28 : ℝ) ≤ 2.97001e-28 * table_8_margin := by
                                                                                norm_num [table_8_margin]
                                                                              have hle : table_8_ε b ≤ 2.97001e-28 * table_8_margin := by
                                                                                exact le_trans hrow hbound
                                                                              simpa [table_8_ε', h20, h10000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500] using hle
                                                                            · by_cases h10500 : b < 10500
                                                                              · have hprev : (10000 : ℝ) ≤ b := by exact le_of_not_lt h10000
                                                                                have hrow : table_8_ε b ≤ 3.7850e-29 :=
                                                                                  table_8_ε_le_of_row table_8_mem_10000 hprev
                                                                                have hbound : (3.7850e-29 : ℝ) ≤ 3.78493e-29 * table_8_margin := by
                                                                                  norm_num [table_8_margin]
                                                                                have hle : table_8_ε b ≤ 3.78493e-29 * table_8_margin := by
                                                                                  exact le_trans hrow hbound
                                                                                simpa [table_8_ε', h20, h10500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000] using hle
                                                                              · by_cases h11000 : b < 11000
                                                                                · have hprev : (10500 : ℝ) ≤ b := by exact le_of_not_lt h10500
                                                                                  have hrow : table_8_ε b ≤ 5.1016e-30 :=
                                                                                    table_8_ε_le_of_row table_8_mem_10500 hprev
                                                                                  have hbound : (5.1016e-30 : ℝ) ≤ 5.10153e-30 * table_8_margin := by
                                                                                    norm_num [table_8_margin]
                                                                                  have hle : table_8_ε b ≤ 5.10153e-30 * table_8_margin := by
                                                                                    exact le_trans hrow hbound
                                                                                  simpa [table_8_ε', h20, h11000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500] using hle
                                                                                · by_cases h11500 : b < 11500
                                                                                  · have hprev : (11000 : ℝ) ≤ b := by exact le_of_not_lt h11000
                                                                                    have hrow : table_8_ε b ≤ 7.1427e-31 :=
                                                                                      table_8_ε_le_of_row table_8_mem_11000 hprev
                                                                                    have hbound : (7.1427e-31 : ℝ) ≤ 7.14264e-31 * table_8_margin := by
                                                                                      norm_num [table_8_margin]
                                                                                    have hle : table_8_ε b ≤ 7.14264e-31 * table_8_margin := by
                                                                                      exact le_trans hrow hbound
                                                                                    simpa [table_8_ε', h20, h11500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000] using hle
                                                                                  · by_cases h12000 : b < 12000
                                                                                    · have hprev : (11500 : ℝ) ≤ b := by exact le_of_not_lt h11500
                                                                                      have hrow : table_8_ε b ≤ 1.0434e-31 :=
                                                                                        table_8_ε_le_of_row table_8_mem_11500 hprev
                                                                                      have hbound : (1.0434e-31 : ℝ) ≤ 1.04329e-31 * table_8_margin := by
                                                                                        norm_num [table_8_margin]
                                                                                      have hle : table_8_ε b ≤ 1.04329e-31 * table_8_margin := by
                                                                                        exact le_trans hrow hbound
                                                                                      simpa [table_8_ε', h20, h12000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500] using hle
                                                                                    · by_cases h12500 : b < 12500
                                                                                      · have hprev : (12000 : ℝ) ≤ b := by exact le_of_not_lt h12000
                                                                                        have hrow : table_8_ε b ≤ 1.5976e-32 :=
                                                                                          table_8_ε_le_of_row table_8_mem_12000 hprev
                                                                                        have hbound : (1.5976e-32 : ℝ) ≤ 1.59755e-32 * table_8_margin := by
                                                                                          norm_num [table_8_margin]
                                                                                        have hle : table_8_ε b ≤ 1.59755e-32 * table_8_margin := by
                                                                                          exact le_trans hrow hbound
                                                                                        simpa [table_8_ε', h20, h12500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000] using hle
                                                                                      · by_cases h13000 : b < 13000
                                                                                        · have hprev : (12500 : ℝ) ≤ b := by exact le_of_not_lt h12500
                                                                                          have hrow : table_8_ε b ≤ 2.5337e-33 :=
                                                                                            table_8_ε_le_of_row table_8_mem_12500 hprev
                                                                                          have hbound : (2.5337e-33 : ℝ) ≤ 2.53362e-33 * table_8_margin := by
                                                                                            norm_num [table_8_margin]
                                                                                          have hle : table_8_ε b ≤ 2.53362e-33 * table_8_margin := by
                                                                                            exact le_trans hrow hbound
                                                                                          simpa [table_8_ε', h20, h13000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500] using hle
                                                                                        · by_cases h13500 : b < 13500
                                                                                          · have hprev : (13000 : ℝ) ≤ b := by exact le_of_not_lt h13000
                                                                                            have hrow : table_8_ε b ≤ 4.1356e-34 :=
                                                                                              table_8_ε_le_of_row table_8_mem_13000 hprev
                                                                                            have hbound : (4.1356e-34 : ℝ) ≤ 4.13554e-34 * table_8_margin := by
                                                                                              norm_num [table_8_margin]
                                                                                            have hle : table_8_ε b ≤ 4.13554e-34 * table_8_margin := by
                                                                                              exact le_trans hrow hbound
                                                                                            simpa [table_8_ε', h20, h13500, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000] using hle
                                                                                          · by_cases h14000 : b < 14000
                                                                                            · have hprev : (13500 : ℝ) ≤ b := by exact le_of_not_lt h13500
                                                                                              have hrow : table_8_ε b ≤ 7.2154e-34 :=
                                                                                                table_8_ε_le_of_row table_8_mem_13500 hprev
                                                                                              have hbound : (7.2154e-34 : ℝ) ≤ 7.21538e-34 * table_8_margin := by
                                                                                                norm_num [table_8_margin]
                                                                                              have hle : table_8_ε b ≤ 7.21538e-34 * table_8_margin := by
                                                                                                exact le_trans hrow hbound
                                                                                              simpa [table_8_ε', h20, h14000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500] using hle
                                                                                            · by_cases h15000 : b < 15000
                                                                                              · have hprev : (14000 : ℝ) ≤ b := by exact le_of_not_lt h14000
                                                                                                have hrow : table_8_ε b ≤ 1.2266e-35 :=
                                                                                                  table_8_ε_le_of_row table_8_mem_14000 hprev
                                                                                                have hbound : (1.2266e-35 : ℝ) ≤ 1.22655e-35 * table_8_margin := by
                                                                                                  norm_num [table_8_margin]
                                                                                                have hle : table_8_ε b ≤ 1.22655e-35 * table_8_margin := by
                                                                                                  exact le_trans hrow hbound
                                                                                                simpa [table_8_ε', h20, h15000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000] using hle
                                                                                              · by_cases h16000 : b < 16000
                                                                                                · have hprev : (15000 : ℝ) ≤ b := by exact le_of_not_lt h15000
                                                                                                  have hrow : table_8_ε b ≤ 4.1071e-37 :=
                                                                                                    table_8_ε_le_of_row table_8_mem_15000 hprev
                                                                                                  have hbound : (4.1071e-37 : ℝ) ≤ 4.10696e-37 * table_8_margin := by
                                                                                                    norm_num [table_8_margin]
                                                                                                  have hle : table_8_ε b ≤ 4.10696e-37 * table_8_margin := by
                                                                                                    exact le_trans hrow hbound
                                                                                                  simpa [table_8_ε', h20, h16000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000] using hle
                                                                                                · by_cases h17000 : b < 17000
                                                                                                  · have hprev : (16000 : ℝ) ≤ b := by exact le_of_not_lt h16000
                                                                                                    have hrow : table_8_ε b ≤ 1.5141e-38 :=
                                                                                                      table_8_ε_le_of_row table_8_mem_16000 hprev
                                                                                                    have hbound : (1.5141e-38 : ℝ) ≤ 1.51402e-38 * table_8_margin := by
                                                                                                      norm_num [table_8_margin]
                                                                                                    have hle : table_8_ε b ≤ 1.51402e-38 * table_8_margin := by
                                                                                                      exact le_trans hrow hbound
                                                                                                    simpa [table_8_ε', h20, h17000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000] using hle
                                                                                                  · by_cases h18000 : b < 18000
                                                                                                    · have hprev : (17000 : ℝ) ≤ b := by exact le_of_not_lt h17000
                                                                                                      have hrow : table_8_ε b ≤ 6.2041e-40 :=
                                                                                                        table_8_ε_le_of_row table_8_mem_17000 hprev
                                                                                                      have hbound : (6.2041e-40 : ℝ) ≤ 6.20397e-40 * table_8_margin := by
                                                                                                        norm_num [table_8_margin]
                                                                                                      have hle : table_8_ε b ≤ 6.20397e-40 * table_8_margin := by
                                                                                                        exact le_trans hrow hbound
                                                                                                      simpa [table_8_ε', h20, h18000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000] using hle
                                                                                                    · by_cases h19000 : b < 19000
                                                                                                      · have hprev : (18000 : ℝ) ≤ b := by exact le_of_not_lt h18000
                                                                                                        have hrow : table_8_ε b ≤ 2.8284e-41 :=
                                                                                                          table_8_ε_le_of_row table_8_mem_18000 hprev
                                                                                                        have hbound : (2.8284e-41 : ℝ) ≤ 2.82833e-41 * table_8_margin := by
                                                                                                          norm_num [table_8_margin]
                                                                                                        have hle : table_8_ε b ≤ 2.82833e-41 * table_8_margin := by
                                                                                                          exact le_trans hrow hbound
                                                                                                        simpa [table_8_ε', h20, h19000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000] using hle
                                                                                                      · by_cases h20000 : b < 20000
                                                                                                        · have hprev : (19000 : ℝ) ≤ b := by exact le_of_not_lt h19000
                                                                                                          have hrow : table_8_ε b ≤ 1.3679e-42 :=
                                                                                                            table_8_ε_le_of_row table_8_mem_19000 hprev
                                                                                                          have hbound : (1.3679e-42 : ℝ) ≤ 1.36785e-42 * table_8_margin := by
                                                                                                            norm_num [table_8_margin]
                                                                                                          have hle : table_8_ε b ≤ 1.36785e-42 * table_8_margin := by
                                                                                                            exact le_trans hrow hbound
                                                                                                          simpa [table_8_ε', h20, h20000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000, h19000] using hle
                                                                                                        · by_cases h21000 : b < 21000
                                                                                                          · have hprev : (20000 : ℝ) ≤ b := by exact le_of_not_lt h20000
                                                                                                            have hrow : table_8_ε b ≤ 7.1622e-44 :=
                                                                                                              table_8_ε_le_of_row table_8_mem_20000 hprev
                                                                                                            have hbound : (7.1622e-44 : ℝ) ≤ 7.16209e-44 * table_8_margin := by
                                                                                                              norm_num [table_8_margin]
                                                                                                            have hle : table_8_ε b ≤ 7.16209e-44 * table_8_margin := by
                                                                                                              exact le_trans hrow hbound
                                                                                                            simpa [table_8_ε', h20, h21000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000, h19000, h20000] using hle
                                                                                                          · by_cases h22000 : b < 22000
                                                                                                            · have hprev : (21000 : ℝ) ≤ b := by exact le_of_not_lt h21000
                                                                                                              have hrow : table_8_ε b ≤ 4.1185e-45 :=
                                                                                                                table_8_ε_le_of_row table_8_mem_21000 hprev
                                                                                                              have hbound : (4.1185e-45 : ℝ) ≤ 4.11842e-45 * table_8_margin := by
                                                                                                                norm_num [table_8_margin]
                                                                                                              have hle : table_8_ε b ≤ 4.11842e-45 * table_8_margin := by
                                                                                                                exact le_trans hrow hbound
                                                                                                              simpa [table_8_ε', h20, h22000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000, h19000, h20000, h21000] using hle
                                                                                                            · by_cases h23000 : b < 23000
                                                                                                              · have hprev : (22000 : ℝ) ≤ b := by exact le_of_not_lt h22000
                                                                                                                have hrow : table_8_ε b ≤ 2.4393e-46 :=
                                                                                                                  table_8_ε_le_of_row table_8_mem_22000 hprev
                                                                                                                have hbound : (2.4393e-46 : ℝ) ≤ 2.43916e-46 * table_8_margin := by
                                                                                                                  norm_num [table_8_margin]
                                                                                                                have hle : table_8_ε b ≤ 2.43916e-46 * table_8_margin := by
                                                                                                                  exact le_trans hrow hbound
                                                                                                                simpa [table_8_ε', h20, h23000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000, h19000, h20000, h21000, h22000] using hle
                                                                                                              · by_cases h24000 : b < 24000
                                                                                                                · have hprev : (23000 : ℝ) ≤ b := by exact le_of_not_lt h23000
                                                                                                                  have hrow : table_8_ε b ≤ 1.5648e-47 :=
                                                                                                                    table_8_ε_le_of_row table_8_mem_23000 hprev
                                                                                                                  have hbound : (1.5648e-47 : ℝ) ≤ 1.56474e-47 * table_8_margin := by
                                                                                                                    norm_num [table_8_margin]
                                                                                                                  have hle : table_8_ε b ≤ 1.56474e-47 * table_8_margin := by
                                                                                                                    exact le_trans hrow hbound
                                                                                                                  simpa [table_8_ε', h20, h24000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000, h19000, h20000, h21000, h22000, h23000] using hle
                                                                                                                · by_cases h25000 : b < 25000
                                                                                                                  · have hprev : (24000 : ℝ) ≤ b := by exact le_of_not_lt h24000
                                                                                                                    have hrow : table_8_ε b ≤ 1.0703e-48 :=
                                                                                                                      table_8_ε_le_of_row table_8_mem_24000 hprev
                                                                                                                    have hbound : (1.0703e-48 : ℝ) ≤ 1.07022e-48 * table_8_margin := by
                                                                                                                      norm_num [table_8_margin]
                                                                                                                    have hle : table_8_ε b ≤ 1.07022e-48 * table_8_margin := by
                                                                                                                      exact le_trans hrow hbound
                                                                                                                    simpa [table_8_ε', h20, h25000, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000, h19000, h20000, h21000, h22000, h23000, h24000] using hle
                                                                                                                  · -- final else
                                                                                                                    have hprev : (25000 : ℝ) ≤ b := by exact le_of_not_lt h25000
                                                                                                                    have hrow : table_8_ε b ≤ 7.5725e-50 :=
                                                                                                                      table_8_ε_le_of_row table_8_mem_25000 hprev
                                                                                                                    have hbound : (7.5725e-50 : ℝ) ≤ 7.57240e-50 * table_8_margin := by
                                                                                                                      norm_num [table_8_margin]
                                                                                                                    have hle : table_8_ε b ≤ 7.57240e-50 * table_8_margin := by
                                                                                                                      exact le_trans hrow hbound
                                                                                                                    simpa [table_8_ε', h20, h21, h22, h23, h24, h25, h30, h35, h40, h45, h50, h100, h200, h300, h400, h500, h600, h700, h800, h900, h1000, h1500, h2000, h2500, h3000, h3500, h4000, h4500, h5000, h5500, h6000, h6500, h7000, h7500, h8000, h8500, h9000, h9500, h10000, h10500, h11000, h11500, h12000, h12500, h13000, h13500, h14000, h15000, h16000, h17000, h18000, h19000, h20000, h21000, h22000, h23000, h24000, h25000] using hle


end BKLNW_app
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantd24d5638a857de13af29674e97aaef8861f7bd3513a4956f5d266dd317a76e33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantd24d5638a857de13af29674e97aaef8861f7bd3513a4956f5d266dd317a76e33.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0529e5c126546a6a369676b778e7fdc576047a1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
