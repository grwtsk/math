# jWin_one_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6db8fb465fa0825bd9faecbe00918f00c3fd95d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e286616c-f785-2002-2181-f38307f88bce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50f560f3-d0f7-69af-f76a-10b8f7374aec",
  "kind": "theorem",
  "lexical_name": "jWin_one_le_of_le",
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
  "slug": "jwin-one-le-of-le--c819bbe8c55660343c15c2bb",
  "source": {
    "blob": "6db8fb465fa0825bd9faecbe00918f00c3fd95d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c819bbe8c55660343c15c2bb1bfc4d62f2185657a166379f1a6f94364a70b6a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50f560f3-d0f7-69af-f76a-10b8f7374aec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jWin_one_le_of_le {D E w : ℝ → ℝ} (hD : ContinuousOn D (Icc 0 1))
    (hE : ContinuousOn E (Icc 0 1)) (hw : ContinuousOn w (Icc 0 1))
    (hw0 : ∀ r ∈ Icc (0:ℝ) 1, 0 ≤ w r) {e : ℝ} (hle : ∀ r ∈ Icc (0:ℝ) 1, D r ≤ E r + e)
    {v : ℝ → ℝ} (hvw : ∀ r ∈ Icc (0:ℝ) 1, vConv v r = w r) :
    jWin D 1 v ≤ jWin E 1 v + e * (2 * ∫ r in (0:ℝ)..1, w r) := by
  rw [jWin_one, jWin_one]
  have h01 : uIcc (0:ℝ) 1 = Icc 0 1 := uIcc_of_le zero_le_one
  have hcD : ∫ r in (0:ℝ)..1, D r * vConv v r = ∫ r in (0:ℝ)..1, D r * w r :=
    integral_congr fun r hr => by rw [h01] at hr; simp [hvw r hr]
  have hcE : ∫ r in (0:ℝ)..1, E r * vConv v r = ∫ r in (0:ℝ)..1, E r * w r :=
    integral_congr fun r hr => by rw [h01] at hr; simp [hvw r hr]
  rw [hcD, hcE]
  have hiD : IntervalIntegrable (fun r => D r * w r) MeasureTheory.volume 0 1 :=
    (hD.mul hw).intervalIntegrable_of_Icc zero_le_one
  have hiE : IntervalIntegrable (fun r => E r * w r) MeasureTheory.volume 0 1 :=
    (hE.mul hw).intervalIntegrable_of_Icc zero_le_one
  have hiw : IntervalIntegrable w MeasureTheory.volume 0 1 := hw.intervalIntegrable_of_Icc zero_le_one
  have hmono : ∫ r in (0:ℝ)..1, D r * w r ≤ ∫ r in (0:ℝ)..1, (E r * w r + e * w r) := by
    apply intervalIntegral.integral_mono_on zero_le_one hiD (hiE.add (hiw.const_mul e))
    intro r hr
    have := mul_le_mul_of_nonneg_right (hle r hr) (hw0 r hr)
    linarith [this, add_mul (E r) e (w r)]
  rw [intervalIntegral.integral_add hiE (hiw.const_mul e), intervalIntegral.integral_const_mul] at hmono
  linarith

/-! ### 2∫₀¹(v⋆v) = (∫v)² for the two windows (Fubini instances, by direct evaluation) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AtOne/Variantd37fc480902ed59305ee4a6b0b75e797e3e0018b9592a2f3a835830822bba798.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6db8fb465fa0825bd9faecbe00918f00c3fd95d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
