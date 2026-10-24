# kernel_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7deb63f-b4c3-c3db-0de1-20d11718d091",
  "kind": "theorem",
  "lexical_name": "kernel_nonnegative",
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
  "slug": "kernel-nonnegative--1b89910c50340cd661f5eff9",
  "source": {
    "blob": "27390b05a6335ccccad245ac6f87dcc79cd54650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b89910c50340cd661f5eff9d7dd6312bdc6437a01b342b1b77070a2d25b8a0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7deb63f-b4c3-c3db-0de1-20d11718d091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_nonnegative {N m : ℕ} (hm : 1 ≤ m) (hmN : m ≤ N) :
    0 ≤ actualClosedXiAtomKernel (N : ℝ) m := by
  have hmp : 0 < (m : ℝ) := by exact_mod_cast hm
  have hs := Real.sqrt_le_sqrt (show (m : ℝ) ≤ (N : ℝ) by exact_mod_cast hmN)
  unfold actualClosedXiAtomKernel
  exact sub_nonneg.mpr (one_div_le_one_div_of_le (Real.sqrt_pos.2 hmp) hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt02/Variante54bb8265861c53277d4ce51ef83bf02bf50c6ba8fa836c6449206988d564431.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27390b05a6335ccccad245ac6f87dcc79cd54650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
