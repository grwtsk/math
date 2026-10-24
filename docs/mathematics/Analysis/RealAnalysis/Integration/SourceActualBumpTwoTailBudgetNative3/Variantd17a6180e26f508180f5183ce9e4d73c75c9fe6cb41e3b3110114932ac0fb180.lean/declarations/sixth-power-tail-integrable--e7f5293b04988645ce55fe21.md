# sixth_power_tail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c043c248-d0e1-e0eb-a46f-66259660ee85",
  "kind": "theorem",
  "lexical_name": "sixth_power_tail_integrable",
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
  "slug": "sixth-power-tail-integrable--e7f5293b04988645ce55fe21",
  "source": {
    "blob": "d22df24fcdf2a2a8b5b8ea165087104ce04bd3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7f5293b04988645ce55fe21379ada3f42b2a2ed1d2344106edaec67d53b3ea7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c043c248-d0e1-e0eb-a46f-66259660ee85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sixth_power_tail_integrable (T : ℝ) (hT : 1 ≤ T) (C : ℝ) :
    IntegrableOn (fun t : ℝ => C / t ^ 6) (Ioi T) := by
  have h := (integrableOn_Ioi_rpow_of_lt (a := (-6 : ℝ))
    (by norm_num) (show 0 < T by linarith)).const_mul C
  have hp (t : ℝ) : t ^ (-6 : ℝ) = (t ^ 6)⁻¹ := by
    rw [show (-6 : ℝ) = ((-6 : ℤ) : ℝ) by norm_num, Real.rpow_intCast]
    norm_num [zpow_neg]
  simpa only [hp, div_eq_mul_inv] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d22df24fcdf2a2a8b5b8ea165087104ce04bd3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
