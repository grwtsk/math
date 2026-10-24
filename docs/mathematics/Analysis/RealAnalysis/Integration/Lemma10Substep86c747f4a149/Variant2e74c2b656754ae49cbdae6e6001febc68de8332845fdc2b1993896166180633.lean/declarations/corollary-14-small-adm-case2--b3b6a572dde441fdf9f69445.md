# corollary_14_small_adm_case2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdaffb54-0dbc-ca03-9c9a-b793620f4cfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df99bbe4-2068-814d-01a2-ef9ad1217432",
  "kind": "lemma",
  "lexical_name": "corollary_14_small_adm_case2",
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
  "slug": "corollary-14-small-adm-case2--b3b6a572dde441fdf9f69445",
  "source": {
    "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1201,
    "line": 1181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b6a572dde441fdf9f69445450c4c034c6bcb3348c049704ebef03bfa056283",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df99bbe4-2068-814d-01a2-ef9ad1217432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1181–1201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma corollary_14_small_adm_case2 (u : ℝ) (hu_pos : 0 < u) (hu64' : (16 / 25 : ℝ) < u) (hu94 : u ≤ (9 / 4 : ℝ)) :
    (1 : ℝ) ≤ 121.0961 * (u * Real.sqrt u) * Real.exp (-2 * Real.sqrt u) := by
  have hsqrt_lower : (4 / 5 : ℝ) ≤ Real.sqrt u :=
    (Real.le_sqrt (by norm_num) hu_pos.le).2 (by nlinarith [hu64'])
  have hu_mul : (64 / 125 : ℝ) ≤ u * Real.sqrt u := by
    nlinarith [hu64', hsqrt_lower]
  have h_exp_base : (1 / 25 : ℝ) ≤ Real.exp (-3 : ℝ) := by
    apply inv_le_exp_neg (by norm_num)
    have hlog25 : (3 : ℝ) ≤ Real.log 25 := by
      rw [show (25 : ℝ) = (5 : ℝ) ^ 2 by norm_num, Real.log_pow]
      exact le_of_lt (by norm_cast; nlinarith [LogTables.log_5_gt])
    linarith
  have h_exp_u : Real.exp (-3 : ℝ) ≤ Real.exp (-2 * Real.sqrt u) := by
    refine Real.exp_le_exp.mpr ?_
    have hsqrt_upper : Real.sqrt u ≤ (3 / 2 : ℝ) :=
      (Real.sqrt_le_iff).2 ⟨by norm_num, by nlinarith [hu94]⟩
    linarith
  have h_exp : (1 / 25 : ℝ) ≤ Real.exp (-2 * Real.sqrt u) := le_trans h_exp_base h_exp_u
  nlinarith [hu_mul, h_exp]

-- Helper for corollary_14_small_adm when 9/4 < u ≤ 30 / 5.5666305.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean#L1181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdccd0a48781b270841d4381607ac6c992b7e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
