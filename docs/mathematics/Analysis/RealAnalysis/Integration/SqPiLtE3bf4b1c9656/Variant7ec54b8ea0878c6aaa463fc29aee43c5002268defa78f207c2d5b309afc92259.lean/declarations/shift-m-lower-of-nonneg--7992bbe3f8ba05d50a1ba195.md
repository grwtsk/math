# shift_m_lower_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bddf487-d269-2a2d-8ab9-3afdc4c23fb4",
  "kind": "lemma",
  "lexical_name": "shift_m_lower_of_nonneg",
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
  "slug": "shift-m-lower-of-nonneg--7992bbe3f8ba05d50a1ba195",
  "source": {
    "blob": "b6ca87b02f4d071369a6450567252419632f736d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7992bbe3f8ba05d50a1ba195d412d5f1e5f635621d9e41b48a46dc72ce43623a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bddf487-d269-2a2d-8ab9-3afdc4c23fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma shift_m_lower_of_nonneg
    (m l : ℝ)
    (hm : 0 ≤ m)
    (hl : 1 < l) :
    m / (l * (l - 1) ^ 6) ≥ m / l ^ 7 := by
  have hl0 : 0 < l := by linarith
  have hlm1 : 0 < l - 1 := by linarith
  have hratio_ge1 : 1 ≤ l / (l - 1) := (le_div_iff₀ hlm1).2 (by linarith)
  have hpow : 1 ≤ (l / (l - 1)) ^ 6 := one_le_pow₀ hratio_ge1
  have hmdiv_nonneg : 0 ≤ m / l ^ 7 := div_nonneg hm (pow_nonneg hl0.le _)
  have hmul : m / l ^ 7 ≤ (m / l ^ 7) * (l / (l - 1)) ^ 6 := by
    simpa [one_mul] using mul_le_mul_of_nonneg_left hpow hmdiv_nonneg
  have hrepr : m / (l * (l - 1) ^ 6) = (m / l ^ 7) * (l / (l - 1)) ^ 6 := by
    field_simp [hl0.ne', hlm1.ne']
  rw [hrepr]
  exact hmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca87b02f4d071369a6450567252419632f736d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
