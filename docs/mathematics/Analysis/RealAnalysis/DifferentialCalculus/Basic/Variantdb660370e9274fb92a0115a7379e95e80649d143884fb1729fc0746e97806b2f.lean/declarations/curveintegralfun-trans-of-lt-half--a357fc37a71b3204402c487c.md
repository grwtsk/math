# curveIntegralFun_trans_of_lt_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f66d4defe7ec4507090c529606544578bcc18aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b0054b0-5f79-4485-829b-9fbb5e6e9075",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f0e64b4-b642-13b6-4d85-4450074e303e",
  "kind": "theorem",
  "lexical_name": "curveIntegralFun_trans_of_lt_half",
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
  "slug": "curveintegralfun-trans-of-lt-half--a357fc37a71b3204402c487c",
  "source": {
    "blob": "5f66d4defe7ec4507090c529606544578bcc18aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a357fc37a71b3204402c487c020ef632f656486a0d4df2d4828d73d55638a793",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f0e64b4-b642-13b6-4d85-4450074e303e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curveIntegralFun_trans_of_lt_half (ω : E → E →L[𝕜] F) (γab : Path a b) (γbc : Path b c)
    (ht : t < 1 / 2) :
    curveIntegralFun ω (γab.trans γbc) t = (2 : ℕ) • curveIntegralFun ω γab (2 * t) := by
  let instE := NormedSpace.restrictScalars ℝ 𝕜 E
  have H₁ : (γab.trans γbc).extend =ᶠ[𝓝 t] (fun s ↦ γab.extend (2 * s)) :=
    (eventually_le_nhds ht).mono fun _ ↦ Path.extend_trans_of_le_half _ _
  have H₂ : (2 : ℝ) • I =ᶠ[𝓝 (2 * t)] I := by
    rw [LinearOrderedField.smul_Icc two_pos, mul_zero, mul_one, ← nhdsWithin_eq_iff_eventuallyEqSet]
    rcases lt_trichotomy t 0 with ht₀ | rfl | ht₀
    · rw [notMem_closure_iff_nhdsWithin_eq_bot.mp, notMem_closure_iff_nhdsWithin_eq_bot.mp] <;>
        simp_intro h <;> linarith
    · simp
    · rw [nhdsWithin_eq_nhds.2, nhdsWithin_eq_nhds.2] <;> simp [*] <;> linarith
  rw [curveIntegralFun_def, H₁.self_of_nhds, H₁.derivWithin_eq_of_nhds, curveIntegralFun_def,
    derivWithin_comp_mul_left, ofNat_smul_eq_nsmul, map_nsmul, derivWithin_congr_set H₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantdb660370e9274fb92a0115a7379e95e80649d143884fb1729fc0746e97806b2f.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f66d4defe7ec4507090c529606544578bcc18aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
