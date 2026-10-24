# vonMangoldt_le_log_sub_of_not_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668f6e396659b6f207692e888320091a765ab18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:709fa1ff-a7b1-7b1f-b5f3-a0bb43aec107",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a49fb7f0-9c99-38d4-f995-61b731391a93",
  "kind": "lemma",
  "lexical_name": "vonMangoldt_le_log_sub_of_not_prime",
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
  "slug": "vonmangoldt-le-log-sub-of-not-prime--156ac1add45b58acd82d555c",
  "source": {
    "blob": "668f6e396659b6f207692e888320091a765ab18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:156ac1add45b58acd82d555c938753e7751ebd66b9fa92e17eb0d644e4dae750",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49fb7f0-9c99-38d4-f995-61b731391a93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vonMangoldt_le_log_sub_of_not_prime {n : ℕ} (h : Λ n ≠ 0) (hn : ¬ n.Prime) :
    Λ n ≤ Real.log n - Λ n ∧ Real.log 2 ≤ Λ n := by
  obtain ⟨p, k, hp, hk, hpk, hΛ, hlog⟩ := exists_prime_pow_of_vonMangoldt_ne_zero h
  have hk2 : 2 ≤ k := by
    by_contra hlt
    have : k = 1 := by omega
    subst this; rw [pow_one] at hpk; exact hn (hpk ▸ hp)
  have hlogp : Real.log 2 ≤ Real.log p :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hp.two_le)
  have hlogp0 : 0 ≤ Real.log p := le_trans (Real.log_nonneg (by norm_num)) hlogp
  refine ⟨?_, hΛ ▸ hlogp⟩
  rw [hΛ, hlog]
  have hk' : (2:ℝ) ≤ k := by exact_mod_cast hk2
  nlinarith

/-- a non-squarefree n with Λ n ≠ 0 is not prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668f6e396659b6f207692e888320091a765ab18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
