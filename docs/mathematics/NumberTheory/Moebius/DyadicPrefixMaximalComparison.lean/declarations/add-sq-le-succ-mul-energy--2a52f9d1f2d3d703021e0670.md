# add_sq_le_succ_mul_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f78d4c9-b039-68ca-ddfa-c00d585026f5",
  "kind": "theorem",
  "lexical_name": "add_sq_le_succ_mul_energy",
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
  "slug": "add-sq-le-succ-mul-energy--2a52f9d1f2d3d703021e0670",
  "source": {
    "blob": "a48f1478b662e4895cf30c6544cc14872b71f474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a52f9d1f2d3d703021e0670a52bfe72e6a51abe1cf548bdcefb127711b372d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f78d4c9-b039-68ca-ddfa-c00d585026f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem add_sq_le_succ_mul_energy
    {k L R EL ER : ℝ}
    (hk : 0 < k)
    (hL : L ^ 2 ≤ EL)
    (hR : R ^ 2 ≤ k * ER) :
    (L + R) ^ 2 ≤ (k + 1) * (EL + ER) := by
  have hk1 : 0 ≤ k + 1 := by linarith
  have hA : 0 ≤ k * (k + 1) * (EL - L ^ 2) := by
    exact mul_nonneg (mul_nonneg hk.le hk1) (sub_nonneg.mpr hL)
  have hB : 0 ≤ (k * L - R) ^ 2 := sq_nonneg _
  have hC : 0 ≤ (k + 1) * (k * ER - R ^ 2) := by
    exact mul_nonneg hk1 (sub_nonneg.mpr hR)
  have hprod :
      0 ≤ k * ((k + 1) * (EL + ER) - (L + R) ^ 2) := by
    nlinarith
  have hgap :
      0 ≤ (k + 1) * (EL + ER) - (L + R) ^ 2 :=
    (mul_nonneg_iff_of_pos_left hk).mp hprod
  linarith

/-- Every prefix square on a dyadic interval is controlled by the complete
aligned dyadic-tree energy with exactly one factor per possible binary depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicPrefixMaximalComparison.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48f1478b662e4895cf30c6544cc14872b71f474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
