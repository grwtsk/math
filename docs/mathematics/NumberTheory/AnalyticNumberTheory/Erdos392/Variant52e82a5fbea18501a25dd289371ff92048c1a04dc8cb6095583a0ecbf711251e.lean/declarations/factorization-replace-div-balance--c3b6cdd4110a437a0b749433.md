# Factorization.replace_div_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19a93c97-32bf-957a-de66-1b3c00da4dd0",
  "kind": "lemma",
  "lexical_name": "Factorization.replace_div_balance",
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
  "slug": "factorization-replace-div-balance--c3b6cdd4110a437a0b749433",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 195,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3b6cdd4110a437a0b7494334a4b0f3f079b1a5c9f53d820300dd0bbcdbef7f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19a93c97-32bf-957a-de66-1b3c00da4dd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Factorization.replace_div_balance {n : ℕ} (f : Factorization n) (m p : ℕ)
    (hm : m ∈ f.a) (h_fac_pos : 0 < m.factorization p) (hp : p.Prime) (q : ℕ) :
    let m' := m / p
    have hm' : m' ≤ n := (div_le_self m p).trans (f.ha m hm)
    have hm'_pos : 0 < m' := div_pos (le_of_dvd (f.hpos m hm)
      (hp.dvd_iff_one_le_factorization (f.hpos m hm).ne' |>.mpr h_fac_pos)) hp.pos
    (f.replace m m' hm hm' hm'_pos).balance q = if q = p then f.balance q - 1 else f.balance q := by
  have hm_pos : 0 < m := f.hpos m hm
  have hm_ne : m ≠ 0 := hm_pos.ne'
  have hp_dvd : p ∣ m := hp.dvd_iff_one_le_factorization hm_ne |>.mpr h_fac_pos
  have hm'_pos : 0 < m / p := div_pos (le_of_dvd hm_pos hp_dvd) hp.pos
  simp only [replace_balance, factorization_div hp_dvd]
  split_ifs with hq
  · subst hq
    simp only [Prime.factorization_self hp, Finsupp.coe_tsub, Pi.sub_apply]
    grind
  · have : p.factorization q = 0 := by
      rw [Prime.factorization hp]
      grind
    simp only [this, Finsupp.coe_tsub, Pi.sub_apply, tsub_zero]
    grind

/-- Replacing `m` with `m/p` strictly decreases the total imbalance
when `p` has positive balance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
