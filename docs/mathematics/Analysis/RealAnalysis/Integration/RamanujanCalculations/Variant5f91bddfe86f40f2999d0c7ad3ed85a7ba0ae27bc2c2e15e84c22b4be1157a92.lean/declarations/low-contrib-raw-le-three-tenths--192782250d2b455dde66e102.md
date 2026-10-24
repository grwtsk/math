# low_contrib_raw_le_three_tenths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19542d77-2d6d-66f8-f370-97280eade1e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:587b17f7-58f8-2890-8416-3aaf9c0a11eb",
  "kind": "theorem",
  "lexical_name": "low_contrib_raw_le_three_tenths",
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
  "slug": "low-contrib-raw-le-three-tenths--192782250d2b455dde66e102",
  "source": {
    "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 293,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192782250d2b455dde66e102b888433e9aaeebc36cfbe0fcccf93ee3c1eca3f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:587b17f7-58f8-2890-8416-3aaf9c0a11eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem low_contrib_raw_le_three_tenths :
    (3914 : ℝ) ^ 6 / exp (3914 : ℝ) *
      ((100000000000000000720 : ℝ) *
        (exp (3870 : ℝ) / (3870 : ℝ) ^ 7
          + 7 *
            (sqrt (exp (3870 : ℝ)) / (log 2) ^ 8
              + (2 : ℝ) ^ 8 * exp (3870 : ℝ) / (3870 : ℝ) ^ 8)))
      ≤ (3 : ℝ) / 10 := by
  have h44 : exp (3870 : ℝ) / exp (3914 : ℝ) = exp (-(44 : ℝ)) := by
    have h := (exp_sub (3870 : ℝ) (3914 : ℝ)).symm
    simpa [show (3870 : ℝ) - 3914 = (-(44 : ℝ)) by norm_num] using h
  have h1979 : exp (1935 : ℝ) / exp (3914 : ℝ) = exp (-(1979 : ℝ)) := by
    have h := (exp_sub (1935 : ℝ) (3914 : ℝ)).symm
    simpa [show (1935 : ℝ) - 3914 = (-(1979 : ℝ)) by norm_num] using h
  rw [sqrt_exp_3870]
  have hrewrite :
      (3914 : ℝ) ^ 6 / exp (3914 : ℝ) *
          ((100000000000000000720 : ℝ) *
            (exp (3870 : ℝ) / (3870 : ℝ) ^ 7
              + 7 *
                (exp (1935 : ℝ) / (log 2) ^ 8
                  + (2 : ℝ) ^ 8 * exp (3870 : ℝ) / (3870 : ℝ) ^ 8)))
        = (3914 : ℝ) ^ 6 * (100000000000000000720 : ℝ) *
            (exp (-(44 : ℝ)) / (3870 : ℝ) ^ 7
              + 7 * (exp (-(1979 : ℝ)) / (log 2) ^ 8
                + (2 : ℝ) ^ 8 * exp (-(44 : ℝ)) / (3870 : ℝ) ^ 8)) := by
    rw [← h44, ← h1979]
    field_simp
  rw [hrewrite]
  exact low_contrib_le_three_tenths

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453e830095347a4b4868e31bd20aa3dede73817f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
