# archLineData_Lfn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e454068d-f119-6b9f-4d3b-25ec45743cfc",
  "kind": "theorem",
  "lexical_name": "archLineData_Lfn",
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
  "slug": "archlinedata-lfn--99742f8c70eea957055a8438",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1138,
    "line": 1120,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99742f8c70eea957055a843871289f664f0c2c5e2404a9ee7a9333822c5b1d2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e454068d-f119-6b9f-4d3b-25ec45743cfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1120–1138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archLineData_Lfn : ArchLineData (5/4) Lfn Lstar where
  one_lt := by norm_num
  le := by norm_num
  analytic := fun t => analyticAt_Lfn_of_one_lt (one_lt_re_54 t)
  conj_symm := fun z _ _ => Lfn_conj z
  two_pt := ⟨8, fun t τ ht hτ => by
    have h := norm_Lfn_sub_Lstar_le ht hτ
    refine h.trans ?_
    have hm : 0 < min t τ := lt_min (by linarith) (by linarith)
    rw [div_le_div_iff₀ (by positivity) hm]
    nlinarith [abs_nonneg (t - τ)]⟩
  deriv_le := ⟨3, fun t ht => by
    have h := norm_deriv_Lfn_le (t := t) (by rw [abs_of_pos (by linarith)]; exact ht)
    rwa [abs_of_pos (by linarith : (0:ℝ) < t)] at h⟩
  lower := ⟨5, fun t ht => norm_Lfn_ge' ht⟩
  lower_par := ⟨1, fun τ hτ => norm_Lstar_ge' (by linarith)⟩
  upper := norm_Lfn_line54

/-- continuity of t ↦ E′/E(5/4+it) given ξ′ ≠ 0 on the line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L1120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
