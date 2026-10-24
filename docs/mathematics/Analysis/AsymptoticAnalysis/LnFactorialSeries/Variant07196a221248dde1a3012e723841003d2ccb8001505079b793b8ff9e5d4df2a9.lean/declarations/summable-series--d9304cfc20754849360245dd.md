# summable_series

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05ab4b44-09e3-0f0a-5da7-e1131cb34e7f",
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
  "slug": "summable-series--d9304cfc20754849360245dd",
  "source": {
    "blob": "10958b0661cc0e8ab6e4d32585d4bdf2b3ce5b34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9304cfc20754849360245dd21eed807138da8aeeb41a8c97339f975f127b073",
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

Occurrence: `result:05ab4b44-09e3-0f0a-5da7-e1131cb34e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LnFactorialSeries/Variant07196a221248dde1a3012e723841003d2ccb8001505079b793b8ff9e5d4df2a9.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10958b0661cc0e8ab6e4d32585d4bdf2b3ce5b34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
