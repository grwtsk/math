# meromorphicOrderAt_coth_lt_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95c89a89-309c-9b49-8733-e87d1a3767b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:baefa7ab-b23f-6917-8c35-acf3d5a22f5d",
  "kind": "lemma",
  "lexical_name": "meromorphicOrderAt_coth_lt_zero_iff",
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
  "slug": "meromorphicorderat-coth-lt-zero-iff--62f0b727b93ee5d2021468e0",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1371,
    "line": 1310,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62f0b727b93ee5d2021468e00457b442ec84b197d48794e16177a6e9d4d470ef",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baefa7ab-b23f-6917-8c35-acf3d5a22f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1310–1371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma meromorphicOrderAt_coth_lt_zero_iff (z : ℂ) :
    meromorphicOrderAt coth z < 0 ↔ Complex.sinh z = 0 := by
  have h_coth_eq : coth = Complex.tanh⁻¹ := funext fun z => by unfold coth; simp [one_div]
  have h_mero_tanh : MeromorphicAt Complex.tanh z := by fun_prop
  have hne_top_tanh : meromorphicOrderAt Complex.tanh z ≠ ⊤ := by
    apply (meromorphicOrderAt_ne_top_iff_eventually_ne_zero h_mero_tanh).mpr
    have h_sinh_ne : ∀ᶠ x in nhdsWithin z {z}ᶜ, Complex.sinh x ≠ 0 :=
      (meromorphicOrderAt_ne_top_iff_eventually_ne_zero Complex.analyticAt_sinh.meromorphicAt).mp
        (meromorphicOrderAt_sinh_ne_top z)
    have h_cosh_ne : ∀ᶠ x in nhdsWithin z {z}ᶜ, Complex.cosh x ≠ 0 :=
      (meromorphicOrderAt_ne_top_iff_eventually_ne_zero Complex.analyticAt_cosh.meromorphicAt).mp
        (meromorphicOrderAt_cosh_ne_top z)
    filter_upwards [h_sinh_ne, h_cosh_ne] with x hs hc
    rw [Complex.tanh_eq_sinh_div_cosh, div_ne_zero_iff]
    exact ⟨hs, hc⟩
  rw [h_coth_eq, meromorphicOrderAt_inv]
  have h_neg_lt : -meromorphicOrderAt Complex.tanh z < 0 ↔
      0 < meromorphicOrderAt Complex.tanh z := by
    lift meromorphicOrderAt Complex.tanh z to ℤ using hne_top_tanh with a
    norm_cast; omega
  rw [h_neg_lt]
  constructor
  · intro h
    by_cases hc : Complex.cosh z = 0
    · exfalso
      have hsinh_ne := Complex.sinh_ne_zero_of_cosh_zero hc
      have hsinh_ord : meromorphicOrderAt Complex.sinh z = 0 := by
        rw [← tendsto_ne_zero_iff_meromorphicOrderAt_eq_zero (by fun_prop)]
        exact ⟨_, hsinh_ne, Complex.analyticAt_sinh.continuousAt.continuousWithinAt⟩
      have hcosh_ord : 0 < meromorphicOrderAt Complex.cosh z := by
        rw [← tendsto_zero_iff_meromorphicOrderAt_pos (by fun_prop)]
        exact hc ▸ Complex.analyticAt_cosh.continuousAt.continuousWithinAt
      have hord_neg : meromorphicOrderAt Complex.tanh z < 0 := by
        rw [show Complex.tanh = fun x => Complex.sinh x / Complex.cosh x from
              funext Complex.tanh_eq_sinh_div_cosh]
        push (disch := fun_prop) meromorphicOrderAt
        rw [hsinh_ord]
        lift meromorphicOrderAt Complex.cosh z to ℤ using meromorphicOrderAt_cosh_ne_top z with m hm
        norm_cast at hcosh_ord ⊢; omega
      exact absurd hord_neg (not_lt.mpr h.le)
    · have hcts : ContinuousAt Complex.tanh z := by fun_prop (disch := exact hc)
      have h_tendsto := (tendsto_zero_iff_meromorphicOrderAt_pos h_mero_tanh).mpr h
      have hval : Complex.tanh z = 0 :=
        tendsto_nhds_unique (hcts.tendsto.mono_left nhdsWithin_le_nhds) h_tendsto
      rw [Complex.tanh_eq_sinh_div_cosh, div_eq_zero_iff] at hval
      exact hval.resolve_right hc
  · intro h
    have hc : Complex.cosh z ≠ 0 := Complex.cosh_ne_zero_of_sinh_zero h
    have hcts : ContinuousAt Complex.tanh z := by fun_prop (disch := exact hc)
    have hval : Complex.tanh z = 0 := by rw [Complex.tanh_eq_sinh_div_cosh, h, zero_div]
    rw [← tendsto_zero_iff_meromorphicOrderAt_pos h_mero_tanh]
    convert hcts.tendsto.mono_left nhdsWithin_le_nhds using 1; simp [hval]

@[blueprint
  "Phi-circ-poles"
  (title := "$\\Phi^{\\pm,\\circ}_\\nu$ poles")
  (statement := /--
  The poles of $$\Phi^{\pm,\circ}_\nu(z)$$ are of the form $n - i \nu/2\pi$ for $n \in \mathbb{Z}$.
  -/)
  (proof := /-- This follows from the definition of $\Phi^{\pm,\circ}_\nu$ and the properties of the $\coth$ function. -/)
  (latexEnv := "lemma")
  (discussion := 1069)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L1310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
