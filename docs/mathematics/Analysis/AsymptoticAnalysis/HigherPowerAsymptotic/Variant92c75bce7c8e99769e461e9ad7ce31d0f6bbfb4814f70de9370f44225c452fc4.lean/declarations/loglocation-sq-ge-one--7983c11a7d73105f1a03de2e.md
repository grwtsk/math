# logLocation_sq_ge_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da631bc2-8f6c-b036-d56e-f05fc7b434d5",
  "kind": "theorem",
  "lexical_name": "logLocation_sq_ge_one",
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
  "slug": "loglocation-sq-ge-one--7983c11a7d73105f1a03de2e",
  "source": {
    "blob": "d86a63914c1cae8e84787d796f5bd7c5cc25230b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 222,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7983c11a7d73105f1a03de2ea71924bf5c4936ea2cdb2544dd4343b3544a3244",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da631bc2-8f6c-b036-d56e-f05fc7b434d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logLocation_sq_ge_one (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    1 ≤ ((k : ℝ) * Real.log (p : ℝ)) ^ 2 := by
  have hlog2 := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlogp := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (by exact_mod_cast hp : (2 : ℝ) ≤ p)
  have hlog : (1 / 2 : ℝ) ≤ Real.log (p : ℝ) := by norm_num at hlog2; linarith
  have hm := mul_le_mul (by exact_mod_cast hk : (3 : ℝ) ≤ k) hlog
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (Nat.cast_nonneg k)
  nlinarith

/-- The unweighted higher-power coefficient is bounded by its second logarithmic moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86a63914c1cae8e84787d796f5bd7c5cc25230b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
