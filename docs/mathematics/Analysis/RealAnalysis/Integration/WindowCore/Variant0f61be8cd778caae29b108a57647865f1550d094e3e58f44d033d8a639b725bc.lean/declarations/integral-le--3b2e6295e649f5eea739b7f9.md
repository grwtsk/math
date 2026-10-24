# integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee3be51a876222c3617067f2992ab85393e4e40a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:482c2a52-f08c-3113-5241-77dd8999a5b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47ba8a45-5e02-1240-6179-7f5a731c81e1",
  "kind": "lemma",
  "lexical_name": "integral_le",
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
  "slug": "integral-le--3b2e6295e649f5eea739b7f9",
  "source": {
    "blob": "ee3be51a876222c3617067f2992ab85393e4e40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b2e6295e649f5eea739b7f946945b1b3cf461593cd07c9f586c61cfcee0b638",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ba8a45-5e02-1240-6179-7f5a731c81e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_le : ∫ u, v u ≤ L := by
  have hL : 0 ≤ L := hW.L_pos.le
  have hle : ∀ u, v u ≤ (Icc (-(L / 2)) (L / 2)).indicator (fun _ => (1 : ℝ)) u := by
    intro u
    by_cases hu : u ∈ Icc (-(L / 2)) (L / 2)
    · rw [indicator_of_mem hu]; exact hW.le_one u
    · rw [indicator_of_notMem hu, hW.eq_zero_of_not_mem hu]
  calc ∫ u, v u ≤ ∫ u, (Icc (-(L / 2)) (L / 2)).indicator (fun _ => (1 : ℝ)) u := by
        apply integral_mono hW.integrable _ hle
        exact (integrable_indicator_iff measurableSet_Icc).mpr (integrableOn_const (by simp))
    _ = L := by
        rw [integral_indicator_const _ measurableSet_Icc, measureReal_def, Real.volume_Icc,
          ENNReal.toReal_ofReal (by linarith), smul_eq_mul, mul_one]
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WindowCore/Variant0f61be8cd778caae29b108a57647865f1550d094e3e58f44d033d8a639b725bc.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3be51a876222c3617067f2992ab85393e4e40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
