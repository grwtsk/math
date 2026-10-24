# summable_series

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "caa2ae544bc5853f725c138e3d8854eb4634b789",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de08fc36-d9a2-53c0-3acd-702a35db2ffa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:643f9e66-91f7-7945-259b-10026c82bc2d",
  "kind": "lemma",
  "lexical_name": "summable_series",
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
  "slug": "summable-series--bb54415bc4061f82a065112c",
  "source": {
    "blob": "caa2ae544bc5853f725c138e3d8854eb4634b789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb54415bc4061f82a065112c3cd59b59ac41e4c5ea0de55d695bfebb467737e5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:643f9e66-91f7-7945-259b-10026c82bc2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma summable_series :
    Summable fun n : ℕ => (Real.log 2) ^ (n + 1) / ((↑(n + 1) : ℝ) * ↑(n + 1).factorial) := by
  refine .of_nonneg_of_le (fun n => ?_) (fun n => ?_)
    (summable_nat_add_iff 1 |>.2 <| Real.summable_pow_div_factorial <| Real.log 2)
  · exact div_nonneg (pow_nonneg (Real.log_nonneg one_le_two) _)
      (mul_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _))
  · exact div_le_div_of_nonneg_left (by positivity) (by positivity)
      (mod_cast Nat.le_mul_of_pos_left _ (Nat.succ_pos _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant06c084cfd32b861205514e2e16224989a5283ca3d1b6939f83d2e20d13aaca82.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caa2ae544bc5853f725c138e3d8854eb4634b789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
