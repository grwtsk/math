# actualXiIntegerCriticalReadout_eq_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba29e187-078e-2415-32b3-fe2c7e572009",
  "kind": "theorem",
  "lexical_name": "actualXiIntegerCriticalReadout_eq_primitive",
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
  "slug": "actualxiintegercriticalreadout-eq-primitive--08aac0cdb055436d24e794c4",
  "source": {
    "blob": "f2b57af8f949c884e71d96e36a23d5d08904da9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08aac0cdb055436d24e794c419d9593b78e27fd75a4bb3c57a8f49531ef143fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba29e187-078e-2415-32b3-fe2c7e572009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiIntegerCriticalReadout_eq_primitive {N : ℕ} (hN : 7 ≤ N) :
    actualXiIntegerCriticalReadout N =
      actualAnchoredXiTailPrimitive (Real.log (N : ℝ)) := by
  have hnp : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hl : Real.log 7 ≤ Real.log (N : ℝ) := by
    apply Real.log_le_log (by norm_num)
    exact_mod_cast hN
  have h := actualAnchoredXiTailPrimitive_eq_reciprocal_abel hl
  simp only [Real.exp_log hnp, Nat.floor_natCast] at h
  exact h.symm

/-- The whole mean is a weighted finite inventory of the actual critical signed arithmetic readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant84ebd458289a77075941c82b5b16d04d3c5b91002fd90799ed082cb96911f435.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b57af8f949c884e71d96e36a23d5d08904da9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
