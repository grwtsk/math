# table_1_to_32e12

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbbcd751-b711-cf2f-57be-41cfa0d65d1f",
  "kind": "theorem",
  "lexical_name": "table_1_to_32e12",
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
  "slug": "table-1-to-32e12--e35a0b22e0cfab0acc9fdb4c",
  "source": {
    "blob": "d46da42816612559ae96b5220d4acee7d2e1f8bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 165,
    "path": "GRWTSK/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35a0b22e0cfab0acc9fdb4c7183d92fbc23ebdffd03739819b8f1c5135cf8e9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbbcd751-b711-cf2f-57be-41cfa0d65d1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem table_1_to_32e12 :
    ∀ t ∈ Set.Icc (100 : ℝ) (32 * 10 ^ 12),
      -(0.88 : ℝ) ≤ (t - ψ t) / sqrt t ∧
        (t - ψ t) / sqrt t ≤ (0.86 : ℝ) := by
  intro t ht
  by_cases h5 : t ≤ 5 * 10 ^ 10
  · have h := sieve_bound t ⟨ht.1, h5⟩
    constructor <;> linarith
  · by_cases h8 : t ≤ 8 * 10 ^ 10
    · have h := eq_6_2 (4 * 10 ^ 10) (-0.73) 0.80
        (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h8]⟩
      constructor <;> linarith
    · by_cases h16 : t ≤ 16 * 10 ^ 10
      · have h := eq_6_2 (8 * 10 ^ 10) (-0.80) 0.86
          (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h16]⟩
        constructor <;> linarith
      · by_cases h32 : t ≤ 32 * 10 ^ 10
        · have h := eq_6_2 (16 * 10 ^ 10) (-0.88) 0.68
            (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h32]⟩
          constructor <;> linarith
        · by_cases h64 : t ≤ 64 * 10 ^ 10
          · have h := eq_6_2 (32 * 10 ^ 10) (-0.88) 0.78
              (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h64]⟩
            constructor <;> linarith
          · by_cases h128 : t ≤ 128 * 10 ^ 10
            · have h := eq_6_2 (64 * 10 ^ 10) (-0.66) 0.74
                (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h128]⟩
              constructor <;> linarith
            · by_cases h2e12 : t ≤ 2 * 10 ^ 12
              · have h := eq_6_2 (10 ^ 12) (-0.80) 0.81
                  (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h2e12]⟩
                constructor <;> linarith
              · by_cases h4e12 : t ≤ 4 * 10 ^ 12
                · have h := eq_6_2 (2 * 10 ^ 12) (-0.79) 0.76
                    (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h4e12]⟩
                  constructor <;> linarith
                · by_cases h8e12 : t ≤ 8 * 10 ^ 12
                  · have h := eq_6_2 (4 * 10 ^ 12) (-0.73) 0.73
                      (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h8e12]⟩
                    constructor <;> linarith
                  · by_cases h16e12 : t ≤ 16 * 10 ^ 12
                    · have h := eq_6_2 (8 * 10 ^ 12) (-0.80) 0.76
                        (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [h16e12]⟩
                      constructor <;> linarith
                    · have h := eq_6_2 (16 * 10 ^ 12) (-0.80) 0.68
                        (by norm_num [table_1]) t ⟨by nlinarith, by nlinarith [ht.2]⟩
                      constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Buthe/Variantb5d3fb923913d93d387ae720c90be2523d49c83b6f219ffeea1e2a87906ab441.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46da42816612559ae96b5220d4acee7d2e1f8bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
