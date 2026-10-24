# typeII_root_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ca065c4-b44b-22fc-79c1-a1dc477923c7",
  "kind": "theorem",
  "lexical_name": "typeII_root_budget",
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
  "slug": "typeii-root-budget--d692d7e165e2e47ac3c53226",
  "source": {
    "blob": "3976ee96bf5977399dd6607e28888714fd35dad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 21,
    "path": "GRWTSK/Analysis/Inequalities/SquaredSumBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d692d7e165e2e47ac3c53226fe454073fa8b1d2b347df9a6d2ab517fc3c91105",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/SquaredSumBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca065c4-b44b-22fc-79c1-a1dc477923c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeII_root_budget (p q r : ℝ)
    (hp : 0 ≤ p) (hq : 0 ≤ q) (hr : 0 ≤ r)
    (hp2 : p^2 ≤ 45) (hq2 : q^2 ≤ 17) (h : r ≤ p+q) : r^2 < 118 := by
  have hprod : (p*q)^2 ≤ 765 := by
    calc
      (p*q)^2 = p^2*q^2 := by ring
      _ ≤ 45*q^2 := mul_le_mul_of_nonneg_right hp2 (sq_nonneg q)
      _ ≤ 45*17 := mul_le_mul_of_nonneg_left hq2 (by norm_num)
      _ = 765 := by norm_num
  have hpq : p*q < 28 := by nlinarith [mul_nonneg hp hq]
  have hsum : (p+q)^2 < 118 := by nlinarith
  have hrsq : r^2 ≤ (p+q)^2 := by nlinarith
  linarith

/-- Source identity applied in the low seminorm before the final return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/SquaredSumBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/SquaredSumBounds.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3976ee96bf5977399dd6607e28888714fd35dad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
