# logPower_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a0ff1e2-f093-dfb6-7dea-043a2b8bfc54",
  "kind": "theorem",
  "lexical_name": "logPower_integral",
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
  "slug": "logpower-integral--0718f07edfe1619930eca72a",
  "source": {
    "blob": "a5a4b3ffe1a3ff66e1b592264f9ff34a6cd73167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0718f07edfe1619930eca72a0da464a75b434db5a90146243a9b4e165ae5c6e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a0ff1e2-f093-dfb6-7dea-043a2b8bfc54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logPower_integral :
    (∫ x : ℝ in Ioi 2, logPower x) = 2*(Real.log 2+2)/Real.sqrt 2 := by
  rw [integral_Ioi_of_hasDerivAt_of_nonneg'
    (fun x hx => primitive_hasDerivAt (by have hx2 : 2 ≤ x := hx; linarith))
    (fun x hx => logPower_nonneg hx.le) primitive_tendsto_zero]
  unfold logPowerPrimitive
  rw [show -(1:ℝ)/2 = -((1:ℝ)/2) by ring,
    Real.rpow_neg (by norm_num : (0:ℝ)≤2), ← Real.sqrt_eq_rpow]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a4b3ffe1a3ff66e1b592264f9ff34a6cd73167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
