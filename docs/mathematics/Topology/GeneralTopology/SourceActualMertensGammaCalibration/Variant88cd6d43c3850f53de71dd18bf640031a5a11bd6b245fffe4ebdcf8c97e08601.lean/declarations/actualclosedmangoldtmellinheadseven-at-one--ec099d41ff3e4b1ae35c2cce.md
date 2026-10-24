# actualClosedMangoldtMellinHeadSeven_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94eb985e-407e-a8dd-a107-d2bb12cbcc90",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtMellinHeadSeven_at_one",
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
  "slug": "actualclosedmangoldtmellinheadseven-at-one--ec099d41ff3e4b1ae35c2cce",
  "source": {
    "blob": "74b73ce98a72832f3a81f37750857f246cc844a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant88cd6d43c3850f53de71dd18bf640031a5a11bd6b245fffe4ebdcf8c97e08601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec099d41ff3e4b1ae35c2cce0527103341bdf6263a870b9cbdd041ebab156e27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant88cd6d43c3850f53de71dd18bf640031a5a11bd6b245fffe4ebdcf8c97e08601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94eb985e-407e-a8dd-a107-d2bb12cbcc90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtMellinHeadSeven_at_one :
    actualClosedMangoldtMellinHeadSeven 1 =
      ((mangoldtLogError (Real.log 7) + Real.log 7 : ℝ) : ℂ) := by
  have hh : actualClosedMangoldtMellinHeadSeven 1 =
      ((∑ n ∈ Finset.Icc 0 7, (vonMangoldt n : ℝ) / (n : ℝ) : ℝ) : ℂ) := by
    unfold actualClosedMangoldtMellinHeadSeven
    rw [ofReal_sum]
    apply Finset.sum_congr rfl
    intro n _
    rw [cpow_neg_one]
    simp only [div_eq_mul_inv, ofReal_mul, ofReal_inv, ofReal_natCast]
  have he : mangoldtLogError (Real.log 7) + Real.log 7 =
      ∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / (n : ℝ) := by
    simp only [mangoldtLogError, mangoldtLogPrefix, weightedMangoldt,
      Real.exp_log (by norm_num : (0 : ℝ) < 7), Nat.floor_ofNat, sub_add_cancel]
  rw [hh, he, ← Finset.Ioc_insert_left (by norm_num : (0 : ℕ) ≤ 7),
    Finset.sum_insert (by simp : (0 : ℕ) ∉ Finset.Ioc 0 7)]
  simp

/-- Full signed time integrability retains the exact finite lower-seven contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant88cd6d43c3850f53de71dd18bf640031a5a11bd6b245fffe4ebdcf8c97e08601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMertensGammaCalibration/Variant88cd6d43c3850f53de71dd18bf640031a5a11bd6b245fffe4ebdcf8c97e08601.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b73ce98a72832f3a81f37750857f246cc844a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
