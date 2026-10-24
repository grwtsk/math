# ruzsaSzemerediNumberNat_asymptotic_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82722dbad7c77b0f4158ef68b5b9646f197d2ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00bf52ba-f843-7a0c-3fa5-cf5bbe69c72c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3fcfcda-babb-56fa-5554-66e31a380200",
  "kind": "theorem",
  "lexical_name": "ruzsaSzemerediNumberNat_asymptotic_lower_bound",
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
  "slug": "ruzsaszemeredinumbernat-asymptotic-lower-bound--e8eb862370a1e95560bc0e67",
  "source": {
    "blob": "82722dbad7c77b0f4158ef68b5b9646f197d2ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8eb862370a1e95560bc0e67db0597b6ba6b1c790cded8a6403e4044a637a880",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3fcfcda-babb-56fa-5554-66e31a380200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ruzsaSzemerediNumberNat_asymptotic_lower_bound :
   (fun n ↦ n ^ 2 * exp (-4 * √(log n)) : ℕ → ℝ) =O[atTop]
     fun n ↦ (ruzsaSzemerediNumberNat n : ℝ) := by
  trans fun n ↦ (n / 3 - 2) * ↑((n - 3) / 6) * exp (-4 * √(log ↑((n - 3) / 6)))
  · simp_rw [sq]
    refine (IsBigO.mul ?_ ?_).mul ?_
    · trans fun n ↦ n / 3
      · simp_rw [div_eq_inv_mul]
        exact (isBigO_refl ..).const_mul_right (by norm_num)
      refine IsLittleO.right_isBigO_sub ?_
      simpa [div_eq_inv_mul, Function.comp_def] using
        .atTop_of_const_mul₀ zero_lt_three (by simp [tendsto_natCast_atTop_atTop])
    · rw [IsBigO_def]
      refine ⟨12, ?_⟩
      simp only [IsBigOWith, norm_natCast, eventually_atTop]
      exact ⟨15, fun x hx ↦ by norm_cast; omega⟩
    · rw [isBigO_exp_comp_exp_comp]
      refine ⟨0, ?_⟩
      simp only [neg_mul, eventually_map, Pi.sub_apply, sub_neg_eq_add, neg_add_le_iff_le_add,
        add_zero, ofNat_pos, _root_.mul_le_mul_left, eventually_atTop]
      refine ⟨9, fun x hx ↦ ?_⟩
      gcongr
      · simp
        omega
      · omega
  · refine .of_norm_eventuallyLE ?_
    filter_upwards [eventually_ge_atTop 6] with n hn
    have : (0 : ℝ) ≤ n / 3 - 2 := by rify at hn; linarith
    simpa [neg_mul, abs_mul, abs_of_nonneg this] using ruzsaSzemerediNumberNat_lower_bound n
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant9467520be287170e89cad3c5645ed693adc3d7f369d2b77812c978ccd2dc1ad1.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82722dbad7c77b0f4158ef68b5b9646f197d2ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
