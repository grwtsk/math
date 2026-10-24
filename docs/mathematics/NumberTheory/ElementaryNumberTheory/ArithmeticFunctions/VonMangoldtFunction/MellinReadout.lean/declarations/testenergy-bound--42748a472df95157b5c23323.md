# testEnergy_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d82e1b35-c326-f4e0-86b6-9ec36b3fc68e",
  "kind": "theorem",
  "lexical_name": "testEnergy_bound",
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
  "slug": "testenergy-bound--42748a472df95157b5c23323",
  "source": {
    "blob": "158f2611dfbc850f02be5ae6d1d01292040c1509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 170,
    "path": "GRWTSK/NumberTheory/VonMangoldt/MellinReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42748a472df95157b5c23323f8872667b8d338f3b64832285ae77c818ab950be",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d82e1b35-c326-f4e0-86b6-9ec36b3fc68e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testEnergy_bound {s : ℂ} {M : ℝ} (hM : 0 ≤ M) (hs : ‖s‖ ≤ M) :
    testEnergy (mellinC1 s) ≤ radiusBudget M := by
  have h1 := test_norm_bound hM hs (show (1:ℝ) ∈ Icc 0 1 by norm_num)
  have hdiff : ‖mellinTest s 1-mellinTest s 0‖ ≤ radiusFactor M+1 := by
    apply (norm_sub_le _ _).trans
    simpa [mellin_at_zero] using add_le_add_right h1 1
  have hsq : Integrable (fun t => ‖mellinSlope s t‖^2) unitVolume :=
    ((mellinSlope_continuous s).norm.pow 2).integrableOn_Icc
  have hInt : (∫ t, ‖mellinSlope s t‖^2 ∂unitVolume) ≤
      ((1+M)*radiusFactor M)^2 := by
    calc
      _ ≤ ∫ _ : ℝ, ((1+M)*radiusFactor M)^2 ∂unitVolume := by
        apply integral_mono_ae hsq (integrable_const _)
        filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
        exact pow_le_pow_left₀ (norm_nonneg _) (slope_norm_bound hM hs ht) 2
      _ = _ := by simp
  have hd2 : ‖mellinTest s 1-mellinTest s 0‖^2 ≤ (radiusFactor M+1)^2 :=
    pow_le_pow_left₀ (norm_nonneg _) hdiff 2
  simpa only [testEnergy, mellinC1, mellin_at_zero, norm_one, one_pow,
    radiusBudget] using add_le_add (add_le_add le_rfl hd2) hInt

/-- A complete square-root energy bound, uniform on each bounded parameter set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/MellinReadout.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158f2611dfbc850f02be5ae6d1d01292040c1509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
