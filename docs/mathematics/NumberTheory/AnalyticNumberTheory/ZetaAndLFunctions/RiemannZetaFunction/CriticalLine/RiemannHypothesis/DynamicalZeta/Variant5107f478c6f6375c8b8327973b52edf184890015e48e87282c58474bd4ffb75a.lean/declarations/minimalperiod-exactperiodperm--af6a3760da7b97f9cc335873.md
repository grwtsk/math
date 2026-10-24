# minimalPeriod_exactPeriodPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b8bb87b-314d-1352-968a-02c3193e77db",
  "kind": "theorem",
  "lexical_name": "minimalPeriod_exactPeriodPerm",
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
  "slug": "minimalperiod-exactperiodperm--af6a3760da7b97f9cc335873",
  "source": {
    "blob": "1ba1a9399eaa3abfa32d1c2599561dda18697c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 300,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af6a3760da7b97f9cc33587328d5859abd26cf8952589ffdb226d1de683593c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b8bb87b-314d-1352-968a-02c3193e77db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem minimalPeriod_exactPeriodPerm {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (x : ExactPoint H r) :
    Function.minimalPeriod (exactPeriodPerm H r) x = r := by
  have horiginal : Function.minimalPeriod H x.val = r :=
    (hasExactPeriod_iff_minimalPeriod_eq H r x).1
      ((mem_exactPeriodPoints_iff H r x).1 x.property)
  have hrestricted :
      Function.minimalPeriod (exactPeriodPerm H r) x =
        Function.minimalPeriod H x.val := by
    apply (Function.minimalPeriod_eq_minimalPeriod_iff).2
    intro k
    constructor
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x) at h
      apply (isPeriodicPt_iff_pow_apply H k x).2
      have hval := congrArg Subtype.val h
      rw [exactPeriodPerm_pow_apply_val] at hval
      exact hval
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x)
      apply Subtype.ext
      rw [exactPeriodPerm_pow_apply_val]
      exact (isPeriodicPt_iff_pow_apply H k x).1 h
  exact hrestricted.trans horiginal

/-- Exact-period points decompose into genuine cycles of length `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant5107f478c6f6375c8b8327973b52edf184890015e48e87282c58474bd4ffb75a.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba1a9399eaa3abfa32d1c2599561dda18697c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
