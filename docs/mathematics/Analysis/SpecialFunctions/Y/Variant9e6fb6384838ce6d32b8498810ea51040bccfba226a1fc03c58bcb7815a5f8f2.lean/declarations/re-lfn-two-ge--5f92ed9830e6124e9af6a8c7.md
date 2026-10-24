# re_Lfn_two_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab11aea8-9c69-326b-4c64-bf1c057ebee5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2b74f4e-2cc3-41a9-28a0-65cced5e29ca",
  "kind": "lemma",
  "lexical_name": "re_Lfn_two_ge",
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
  "slug": "re-lfn-two-ge--5f92ed9830e6124e9af6a8c7",
  "source": {
    "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 273,
    "path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f92ed9830e6124e9af6a8c76e8e378bf63b6961dc906061e298b1a512588cf9",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b74f4e-2cc3-41a9-28a0-65cced5e29ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_Lfn_two_ge {t : ℝ} (ht : 2 ≤ |t|) :
    (1 / 2) * Real.log (|t| / 2) - 3 ≤ (Lfn (2 + t * I)).re := by
  rw [Lfn_eq_digamma (by simp : (0:ℝ) < ((2 : ℂ) + t * I).re)]
  have hw : 0 < (((2 : ℂ) + t * I) / 2).re := by simp
  have hwim : (((2 : ℂ) + t * I) / 2).im = t / 2 := by simp
  have hw' : 1 ≤ |(((2 : ℂ) + t * I) / 2).im| := by
    rw [hwim, abs_div, abs_two]; linarith
  have hψ := re_digamma_ge hw hw'
  rw [hwim, abs_div, abs_two] at hψ
  have h1 : 0 ≤ (1 / ((2 : ℂ) + t * I)).re := by
    rw [one_div, Complex.inv_re]
    exact div_nonneg (by simp) (Complex.normSq_nonneg _)
  have h2 : 0 ≤ (1 / ((2 : ℂ) + t * I - 1)).re := by
    rw [one_div, Complex.inv_re]
    exact div_nonneg (by norm_num) (Complex.normSq_nonneg _)
  have hlogpi : Real.log Real.pi ≤ 2 := by
    have := Real.log_le_sub_one_of_pos Real.pi_pos
    have h4 : Real.log Real.pi ≤ Real.log 4 := Real.log_le_log Real.pi_pos Real.pi_lt_four.le
    have h4' : Real.log 4 = 2 * Real.log 2 := by
      rw [show (4:ℝ) = 2 ^ 2 by norm_num, Real.log_pow]; push_cast; ring
    linarith [Real.log_two_lt_d9]
  have hre_const : (-(Real.log Real.pi : ℂ) / 2).re = -(Real.log Real.pi) / 2 := by
    simp [Complex.neg_re, Complex.div_ofNat_re]
  have hre_half : ((1 / 2 : ℂ) * Complex.digamma (((2 : ℂ) + t * I) / 2)).re
      = (1 / 2) * (Complex.digamma (((2 : ℂ) + t * I) / 2)).re := by
    rw [Complex.mul_re]; simp
  simp only [Complex.add_re]
  rw [hre_const, hre_half]
  linarith

/-- **Lower bounds on the line Re s = 2, far up**: there is t₁ ≥ 2 such that for |t| ≥ t₁,
  3 ≤ Re (L + ζ′/ζ)(2+it)   and   1 ≤ ‖Y(2+it)‖. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
