# LogDerivZetaBndAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb5e3de00c7f11ee75f40ce99179b3ab1b8e1105",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c61dd1f4-4c5c-d5c9-39fe-6d1c8a1a763a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c18a999-7671-c802-e0bc-666e8c58725c",
  "kind": "lemma",
  "lexical_name": "LogDerivZetaBndAlt",
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
  "slug": "logderivzetabndalt--4e9d2fe90c5927c3394fb978",
  "source": {
    "blob": "fb5e3de00c7f11ee75f40ce99179b3ab1b8e1105",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/ZetaBoundsUnused/Varianta7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e9d2fe90c5927c3394fb9781b7d020b82258c4dbd12db0ed802d6488224c59d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZetaBoundsUnused/Varianta7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c18a999-7671-c802-e0bc-666e8c58725c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LogDerivZetaBndAlt :
    ∃ A > 0, ∀ (σ) (_ : σ ∈ Ico ((1 : ℝ) / 2) (1 : ℝ)),
    (fun (t : ℝ) ↦ ζ' (σ + t * I) / ζ (σ + t * I)) =O[cocompact ℝ ⊓
      Filter.principal {t | 1 - A / Real.log |t| ^ 9 < σ}]
        fun t ↦ Real.log |t| ^ 9 := by
  obtain ⟨A, hA, C, _, h⟩ := LogDerivZetaBnd
  refine ⟨A, hA.1, fun σ ⟨σ_ge, σ_lt⟩ ↦ ?_⟩
  -- This could all be done much cleaner; TODO: refactor
  rw [Asymptotics.isBigO_iff]
  use C
  rw [eventually_inf, cocompact_eq_atBot_atTop]
  refine ⟨{t : ℝ | 4 ≤ |t|}, ?_, {t | 1 - A / Real.log |t| ^ 9 < σ},
    fun ⦃a⦄ a ↦ a, fun t ⟨t_ge, ht⟩ ↦ ?_⟩
  · rw [mem_sup]
    refine ⟨?_, ?_⟩
    · simp only [mem_atBot_sets, mem_setOf_eq]
      refine ⟨-4, fun b hb ↦ ?_⟩
      rw [_root_.abs_of_nonpos (by linarith)]
      linarith
    · simp only [mem_atTop_sets, ge_iff_le, mem_setOf_eq]
      refine ⟨4, fun b hb ↦ ?_⟩
      rwa [_root_.abs_of_nonneg (by linarith)]
  simp only [mem_setOf_eq] at ht
  convert h σ t (by linarith [mem_Ici.mp t_ge]) ⟨ht.le, (by bound)⟩
  simp only [mem_setOf_eq] at t_ge
  have := Real.log_nonneg (by linarith : 1 ≤ |t|)
  simp only [Real.norm_eq_abs, norm_pow, abs_eq_self.mpr, this]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZetaBoundsUnused/Varianta7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZetaBoundsUnused/Varianta7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb5e3de00c7f11ee75f40ce99179b3ab1b8e1105` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
