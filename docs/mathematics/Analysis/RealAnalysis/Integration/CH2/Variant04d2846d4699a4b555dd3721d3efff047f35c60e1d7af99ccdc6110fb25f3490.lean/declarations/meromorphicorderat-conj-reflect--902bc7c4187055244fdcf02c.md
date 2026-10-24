# meromorphicOrderAt_conj_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a265649-f6a0-b914-f6f9-695893441462",
  "kind": "lemma",
  "lexical_name": "meromorphicOrderAt_conj_reflect",
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
  "slug": "meromorphicorderat-conj-reflect--902bc7c4187055244fdcf02c",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1982,
    "line": 1949,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:902bc7c4187055244fdcf02c62a75fa4b6af9720948572a967122a8bb1da4a05",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a265649-f6a0-b914-f6f9-695893441462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1949–1982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma meromorphicOrderAt_conj_reflect {G : ℂ → ℂ} {a : ℂ} :
    meromorphicOrderAt (conj_reflect G) (starRingEnd ℂ a) = meromorphicOrderAt G a := by
  by_cases hG_mero : MeromorphicAt G a
  · by_cases htop : meromorphicOrderAt G a = ⊤
    · have hzero : ∀ᶠ w in nhdsWithin a {a}ᶜ, G w = 0 := (meromorphicOrderAt_eq_top_iff).1 htop
      have hzero_ref : ∀ᶠ w in nhdsWithin (starRingEnd ℂ a) {(starRingEnd ℂ a)}ᶜ, conj_reflect G w = 0 := by
        have hzero' := (tendsto_starRingEnd_nhdsWithin_ne (a := a)).eventually hzero
        filter_upwards [hzero'] with w hw
        simp [conj_reflect, hw]
      have htop_ref : meromorphicOrderAt (conj_reflect G) (starRingEnd ℂ a) = ⊤ :=
        (meromorphicOrderAt_eq_top_iff).2 hzero_ref
      rw [htop_ref, htop]
    · have hGref_mero : MeromorphicAt (conj_reflect G) (starRingEnd ℂ a) :=
        meromorphicAt_conj_reflect (G := G) (a := a) hG_mero
      obtain ⟨n, hn : meromorphicOrderAt G a = n⟩ := Option.ne_none_iff_exists'.mp htop
      obtain ⟨g, hg_an, hg_ne, hg_eq⟩ := (meromorphicOrderAt_eq_int_iff hG_mero).1 hn
      have hn_ref : meromorphicOrderAt (conj_reflect G) (starRingEnd ℂ a) = n := by
        apply (meromorphicOrderAt_eq_int_iff hGref_mero).2
        refine ⟨conj_reflect g, analyticAt_conj_reflect hg_an, ?_, ?_⟩
        · dsimp [conj_reflect]
          intro h
          apply hg_ne
          simpa [starRingEnd_self_apply] using congrArg (starRingEnd ℂ) h
        · have hg_eq' := (tendsto_starRingEnd_nhdsWithin_ne (a := a)).eventually hg_eq
          filter_upwards [hg_eq'] with w hw
          simpa [conj_reflect, smul_eq_mul, map_mul, map_sub, starRingEnd_self_apply] using
            congrArg (starRingEnd ℂ) hw
      rw [hn_ref, hn]
  · have hGref_not : ¬ MeromorphicAt (conj_reflect G) (starRingEnd ℂ a) := by
      intro h
      exact hG_mero ((meromorphicAt_conj_reflect_iff (G := G) (a := a)).1 h)
    rw [meromorphicOrderAt_of_not_meromorphicAt hGref_not,
      meromorphicOrderAt_of_not_meromorphicAt hG_mero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L1949).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
