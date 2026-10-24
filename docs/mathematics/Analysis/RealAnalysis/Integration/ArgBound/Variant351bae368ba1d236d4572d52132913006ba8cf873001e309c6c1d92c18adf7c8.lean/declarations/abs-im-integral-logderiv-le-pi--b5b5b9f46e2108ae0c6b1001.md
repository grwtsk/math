# abs_im_integral_logDeriv_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cca31247-a91c-e902-5ffa-c95dacf98171",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e58e6c3-fec9-4e89-e0fc-35c349bc7ff3",
  "kind": "theorem",
  "lexical_name": "abs_im_integral_logDeriv_le_pi",
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
  "slug": "abs-im-integral-logderiv-le-pi--b5b5b9f46e2108ae0c6b1001",
  "source": {
    "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5b5b9f46e2108ae0c6b1001777e3e3ba5a6c200d40d2b292d813c5662a184ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e58e6c3-fec9-4e89-e0fc-35c349bc7ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_im_integral_logDeriv_le_pi {g g' : ℝ → ℂ} {a b : ℝ} (hab : a ≤ b)
    (hderiv : ∀ x ∈ Icc a b, HasDerivAt g (g' x) x) (hcont : ContinuousOn g' (Icc a b))
    (hre : ∀ x ∈ Icc a b, 0 < (g x).re) :
    |(∫ x in a..b, g' x / g x).im| ≤ Real.pi := by
  have hgc : ContinuousOn g (Icc a b) := fun x hx => (hderiv x hx).continuousAt.continuousWithinAt
  have hne : ∀ x ∈ Icc a b, g x ≠ 0 := fun x hx h => by
    have := hre x hx; rw [h] at this; simp at this
  have hlog : ∀ x ∈ Icc a b, HasDerivAt (fun y => Complex.log (g y)) (g' x / g x) x := by
    intro x hx
    have h1 : HasDerivAt Complex.log (g x)⁻¹ (g x) := Complex.hasDerivAt_log (Or.inl (hre x hx))
    have h := h1.comp x (hderiv x hx)
    have e : (g x)⁻¹ * g' x = g' x / g x := by field_simp
    rw [e] at h
    exact h
  have hint : IntervalIntegrable (fun x => g' x / g x) volume a b := by
    apply ContinuousOn.intervalIntegrable
    rw [uIcc_of_le hab]
    exact hcont.div hgc hne
  rw [integral_eq_sub_of_hasDerivAt (fun x hx => hlog x (by rwa [uIcc_of_le hab] at hx)) hint,
    Complex.sub_im, Complex.log_im, Complex.log_im]
  have h1 : |Complex.arg (g b)| ≤ Real.pi / 2 :=
    Complex.abs_arg_le_pi_div_two_iff.mpr (hre b ⟨hab, le_rfl⟩).le
  have h2 : |Complex.arg (g a)| ≤ Real.pi / 2 :=
    Complex.abs_arg_le_pi_div_two_iff.mpr (hre a ⟨le_rfl, hab⟩).le
  calc |Complex.arg (g b) - Complex.arg (g a)| ≤ |Complex.arg (g b)| + |Complex.arg (g a)| :=
        abs_sub _ _
    _ ≤ Real.pi / 2 + Real.pi / 2 := add_le_add h1 h2
    _ = Real.pi := by ring

/-- the vertical path t ↦ σ + it and its derivative i. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d423497ad4094e1b0ce85926c78132fbe710c7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
