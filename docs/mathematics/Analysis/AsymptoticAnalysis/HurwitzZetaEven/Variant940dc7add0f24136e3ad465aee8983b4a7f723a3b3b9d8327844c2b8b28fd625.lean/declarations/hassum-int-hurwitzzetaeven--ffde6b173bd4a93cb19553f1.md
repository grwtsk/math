# hasSum_int_hurwitzZetaEven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:137ac34b-aede-d98b-d438-31a3a536f0c6",
  "kind": "lemma",
  "lexical_name": "hasSum_int_hurwitzZetaEven",
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
  "slug": "hassum-int-hurwitzzetaeven--ffde6b173bd4a93cb19553f1",
  "source": {
    "blob": "013f2bdf9dd03263486c1491a907da39bbde1132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 676,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffde6b173bd4a93cb19553f1f6d07e090fc3f39f30d61c4f188f73c42641c982",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:137ac34b-aede-d98b-d438-31a3a536f0c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_int_hurwitzZetaEven (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℤ ↦ 1 / (↑|n + a| : ℂ) ^ s / 2) (hurwitzZetaEven a s) := by
  rw [hurwitzZetaEven, Function.update_of_ne (ne_zero_of_one_lt_re hs)]
  have := (hasSum_int_completedHurwitzZetaEven a hs).div_const (Gammaℝ s)
  exact this.congr_fun fun n ↦ by simp only [div_right_comm _ _ (Gammaℝ _),
    div_self (Gammaℝ_ne_zero_of_re_pos (zero_lt_one.trans hs))]

/-- Formula for `hurwitzZetaEven` as a Dirichlet series in the convergence range, with sum over `ℕ`
(version with absolute values) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013f2bdf9dd03263486c1491a907da39bbde1132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
