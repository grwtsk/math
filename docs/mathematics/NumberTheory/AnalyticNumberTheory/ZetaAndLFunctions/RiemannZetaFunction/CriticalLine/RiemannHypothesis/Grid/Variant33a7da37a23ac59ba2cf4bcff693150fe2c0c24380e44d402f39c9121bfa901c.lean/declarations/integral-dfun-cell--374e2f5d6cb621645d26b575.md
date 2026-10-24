# integral_Dfun_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56a88165815718a2b4fae75a5150097103446bbd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34e2c6b0-7b14-fc7f-746b-2963c72fd788",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e73d8aa4-73d0-62a7-7b34-a49093d230cf",
  "kind": "lemma",
  "lexical_name": "integral_Dfun_cell",
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
  "slug": "integral-dfun-cell--374e2f5d6cb621645d26b575",
  "source": {
    "blob": "56a88165815718a2b4fae75a5150097103446bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:374e2f5d6cb621645d26b575984e00200cce2540d39c1117b1b4369121953e41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e73d8aa4-73d0-62a7-7b34-a49093d230cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_Dfun_cell (hN : 0 < N) {i : ℕ} (hi : i < N) :
    ∫ t in ((i:ℝ)/N)..((i+1:ℝ)/N), Dfun s N t
      = Csum s i / N - ((((i:ℝ)+1)/N) ^ 3 - ((i:ℝ)/N) ^ 3) / 6 := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  rw [intervalIntegral.integral_congr_ae (Dfun_ae_cell (s := s) hN hi)]
  rw [intervalIntegral.integral_sub _root_.intervalIntegrable_const
        (((by fun_prop : Continuous fun t : ℝ => t ^ 2 / 2)).intervalIntegrable _ _)]
  rw [intervalIntegral.integral_const, smul_eq_mul]
  have h2 : ∫ t in ((i:ℝ)/N)..((i+1:ℝ)/N), t ^ 2 / 2
      = ((((i:ℝ)+1)/N) ^ 3 - ((i:ℝ)/N) ^ 3) / 6 := by
    rw [intervalIntegral.integral_div, integral_pow]
    push_cast
    ring
  rw [h2]
  field_simp
  ring

/-- **E at the grid points.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a88165815718a2b4fae75a5150097103446bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
