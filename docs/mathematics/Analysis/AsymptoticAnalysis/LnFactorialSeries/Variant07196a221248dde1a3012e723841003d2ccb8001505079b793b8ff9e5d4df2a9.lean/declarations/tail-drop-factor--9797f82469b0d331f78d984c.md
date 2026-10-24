# tail_drop_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:027c397a-62ce-5096-4f41-85fd34efd84b",
  "kind": "lemma",
  "lexical_name": "tail_drop_factor",
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
  "slug": "tail-drop-factor--9797f82469b0d331f78d984c",
  "source": {
    "blob": "10958b0661cc0e8ab6e4d32585d4bdf2b3ce5b34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9797f82469b0d331f78d984c1716eb131b24eb1278378474d13f506b9a4d4458",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:027c397a-62ce-5096-4f41-85fd34efd84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tail_drop_factor :
    (∑' n : ℕ, (Real.log 2) ^ (n + 11) / ((↑(n + 11) : ℝ) * ↑(n + 11).factorial)) ≤
    (∑' n : ℕ, (Real.log 2) ^ (n + 11) / (↑(n + 11).factorial)) := by
  refine Summable.tsum_le_tsum ?_ ?_ ?_
  · intro n; gcongr; norm_cast; nlinarith [Nat.factorial_pos (n + 11)]
  · exact Summable.of_nonneg_of_le (fun n => by positivity)
      (fun n => div_le_div_of_nonneg_left (by positivity) (by positivity)
        (le_mul_of_one_le_left (by positivity) (mod_cast Nat.le_add_left _ _)))
      (by simpa using (summable_nat_add_iff 11).2 (Real.summable_pow_div_factorial _))
  · exact (Real.summable_pow_div_factorial _).comp_injective (add_left_injective _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10958b0661cc0e8ab6e4d32585d4bdf2b3ce5b34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
