# inv_Gammaℝ_two_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09568288ef9897b1e3b0e0763dd31a9421b77616",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a07d9265c71fae46f5d0bb76f07d850ef9712ce9914fbc1165d17329c693ef1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:596908df-69a3-688a-7d0b-8b9a5d2d68eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01519344-d000-e98f-5df4-a8fbfe0e3722",
  "kind": "lemma",
  "lexical_name": "inv_Gammaℝ_two_sub",
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
  "slug": "inv-gamma-two-sub--32a47baf836ffb619fbd35a6",
  "source": {
    "blob": "09568288ef9897b1e3b0e0763dd31a9421b77616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 187,
    "path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant6a07d9265c71fae46f5d0bb76f07d850ef9712ce9914fbc1165d17329c693ef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32a47baf836ffb619fbd35a6ed9a75bc14bfff5ae77e7dc8dba3d7f5c387b3ff",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Deligne/Variant6a07d9265c71fae46f5d0bb76f07d850ef9712ce9914fbc1165d17329c693ef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01519344-d000-e98f-5df4-a8fbfe0e3722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv_Gammaℝ_two_sub {s : ℂ} (hs : ∀ (n : ℕ), s ≠ -n) :
    (Gammaℝ (2 - s))⁻¹ = Gammaℂ s * sin (π * s / 2) * (Gammaℝ (s + 1))⁻¹ := by
  by_cases h : s = 1
  · rw [h, (by ring : 2 - 1 = (1 : ℂ)), Gammaℝ_one, Gammaℝ,
    neg_div, (by simp : (1 + 1) / 2 = (1 : ℂ)), Complex.Gamma_one, Gammaℂ_one,
    mul_one, Complex.sin_pi_div_two, mul_one, cpow_neg_one, mul_one, inv_inv,
    div_mul_cancel₀ _ (ofReal_ne_zero.mpr pi_ne_zero), inv_one]
  rw [← Ne, ← sub_ne_zero] at h
  have h' (n : ℕ) : s - 1 ≠ -n := by
    rcases n with - | m
    · rwa [Nat.cast_zero, neg_zero]
    · rw [Ne, sub_eq_iff_eq_add]
      convert! hs m using 2
      push_cast
      ring
  rw [(by ring : 2 - s = 1 - (s - 1)), inv_Gammaℝ_one_sub h',
    (by rw [sub_add_cancel] : Gammaℂ s = Gammaℂ (s - 1 + 1)), Gammaℂ_add_one h,
    (by ring : s + 1 = (s - 1) + 2), Gammaℝ_add_two h, mul_sub, sub_div, mul_one,
      Complex.cos_sub_pi_div_two]
  simp_rw [mul_div_assoc, mul_inv]
  generalize (Gammaℝ (s - 1))⁻¹ = A
  field

end reflection

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Deligne/Variant6a07d9265c71fae46f5d0bb76f07d850ef9712ce9914fbc1165d17329c693ef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Deligne/Variant6a07d9265c71fae46f5d0bb76f07d850ef9712ce9914fbc1165d17329c693ef1.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09568288ef9897b1e3b0e0763dd31a9421b77616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
