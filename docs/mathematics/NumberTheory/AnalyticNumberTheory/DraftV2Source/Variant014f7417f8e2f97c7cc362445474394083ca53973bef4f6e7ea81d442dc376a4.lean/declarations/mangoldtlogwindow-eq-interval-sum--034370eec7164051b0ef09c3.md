# mangoldtLogWindow_eq_interval_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50ed17ece7cdfa802be65a62f73d0d32eb3c9192",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df7eec3a-a412-2002-807d-7886f7dcfcb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d4cda18-3f91-9a4e-004d-408dc9b75e93",
  "kind": "theorem",
  "lexical_name": "mangoldtLogWindow_eq_interval_sum",
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
  "slug": "mangoldtlogwindow-eq-interval-sum--034370eec7164051b0ef09c3",
  "source": {
    "blob": "50ed17ece7cdfa802be65a62f73d0d32eb3c9192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:034370eec7164051b0ef09c3d81a174427b69a5d71a2ff80cb1d07988d0a4dd2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d4cda18-3f91-9a4e-004d-408dc9b75e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogWindow_eq_interval_sum (a b : ℝ) (ha : 0 ≤ a) (hab : a ≤ b)
    (F : ℝ → ℝ) :
    mangoldtLogWindow a b F =
      ∑ n ∈ Finset.Ioc ⌊Real.exp a⌋₊ ⌊Real.exp b⌋₊,
        ArithmeticFunction.vonMangoldt n / (n : ℝ) * F (Real.log n) := by
  rw [mangoldtLogWindow_eq_filter a b hab F]
  congr 1
  ext n
  simp only [primePowerInventory, Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ioc]
  by_cases hn : 2 ≤ n
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    rw [Real.lt_log_iff_exp_lt hn0, ← Nat.floor_lt (Real.exp_pos a).le]
    omega
  · have hfloor : 1 ≤ ⌊Real.exp a⌋₊ := by
      apply (Nat.le_floor_iff (Real.exp_pos a).le).mpr
      simpa using (Real.one_le_exp_iff.mpr ha)
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ed17ece7cdfa802be65a62f73d0d32eb3c9192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
