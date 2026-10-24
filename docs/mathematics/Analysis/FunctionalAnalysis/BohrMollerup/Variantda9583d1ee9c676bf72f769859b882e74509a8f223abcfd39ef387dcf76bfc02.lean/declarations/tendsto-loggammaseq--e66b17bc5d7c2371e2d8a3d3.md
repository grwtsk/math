# tendsto_logGammaSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d97f7dec-1ec0-73bd-9b09-f16e5dec5ddb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8fe3a9a-9a3e-752f-abcd-362a9cf56975",
  "kind": "theorem",
  "lexical_name": "tendsto_logGammaSeq",
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
  "slug": "tendsto-loggammaseq--e66b17bc5d7c2371e2d8a3d3",
  "source": {
    "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 315,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e66b17bc5d7c2371e2d8a3d3578415300d17217d7f9d1e76950bc619929cd4f3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8fe3a9a-9a3e-752f-abcd-362a9cf56975`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_logGammaSeq (hf_conv : ConvexOn ℝ (Ioi 0) f)
    (hf_feq : ∀ {y : ℝ}, 0 < y → f (y + 1) = f y + log y) (hx : 0 < x) :
    Tendsto (logGammaSeq x) atTop (𝓝 <| f x - f 1) := by
  suffices ∀ m : ℕ, ↑m < x → x ≤ m + 1 → Tendsto (logGammaSeq x) atTop (𝓝 <| f x - f 1) by
    refine' this ⌈x - 1⌉₊ _ _
    · rcases lt_or_le x 1 with ⟨⟩
      · rwa [Nat.ceil_eq_zero.mpr (by linarith : x - 1 ≤ 0), Nat.cast_zero]
      · convert Nat.ceil_lt_add_one (by linarith : 0 ≤ x - 1)
        abel
    · rw [← sub_le_iff_le_add]; exact Nat.le_ceil _
  intro m
  induction' m with m hm generalizing x
  · rw [Nat.cast_zero, zero_add]
    exact fun _ hx' => tendsto_logGammaSeq_of_le_one hf_conv (@hf_feq) hx hx'
  · intro hy hy'
    rw [Nat.cast_succ, ← sub_le_iff_le_add] at hy'
    rw [Nat.cast_succ, ← lt_sub_iff_add_lt] at hy
    specialize hm ((Nat.cast_nonneg _).trans_lt hy) hy hy'
    -- now massage gauss_product n (x - 1) into gauss_product (n - 1) x
    have :
      ∀ᶠ n : ℕ in atTop,
        logGammaSeq (x - 1) n =
          logGammaSeq x (n - 1) + x * (log (↑(n - 1) + 1) - log ↑(n - 1)) - log (x - 1) := by
      refine' Eventually.mp (eventually_ge_atTop 1) (eventually_of_forall fun n hn => _)
      have := logGammaSeq_add_one (x - 1) (n - 1)
      rw [sub_add_cancel, Nat.sub_add_cancel hn] at this
      rw [this]
      ring
    replace hm :=
      ((Tendsto.congr' this hm).add (tendsto_const_nhds : Tendsto (fun _ => log (x - 1)) _ _)).comp
        (tendsto_add_atTop_nat 1)
    have :
      ((fun x_1 : ℕ =>
            (fun n : ℕ =>
                  logGammaSeq x (n - 1) + x * (log (↑(n - 1) + 1) - log ↑(n - 1)) - log (x - 1))
                x_1 +
              (fun b : ℕ => log (x - 1)) x_1) ∘
          fun a : ℕ => a + 1) =
        fun n => logGammaSeq x n + x * (log (↑n + 1) - log ↑n) := by
      ext1 n
      dsimp only [Function.comp_apply]
      rw [sub_add_cancel, Nat.add_sub_cancel]
    rw [this] at hm
    convert hm.sub (tendsto_log_nat_add_one_sub_log.const_mul x) using 2
    · ring
    · have := hf_feq ((Nat.cast_nonneg m).trans_lt hy)
      rw [sub_add_cancel] at this
      rw [this]
      ring
#align real.bohr_mollerup.tendsto_log_gamma_seq Real.BohrMollerup.tendsto_logGammaSeq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdb7d3c3585c295f3b1919953b4ddae45190113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
