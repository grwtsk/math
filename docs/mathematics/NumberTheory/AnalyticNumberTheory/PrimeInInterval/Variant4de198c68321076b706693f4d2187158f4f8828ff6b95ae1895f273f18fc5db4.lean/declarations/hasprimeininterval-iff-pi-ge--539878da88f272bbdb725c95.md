# HasPrimeInInterval.iff_pi_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abfe063c-5e4d-48c9-f10f-92e4dca49b52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2e7f4fb-042d-91f1-8dcf-281384a13d00",
  "kind": "lemma",
  "lexical_name": "HasPrimeInInterval.iff_pi_ge",
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
  "slug": "hasprimeininterval-iff-pi-ge--539878da88f272bbdb725c95",
  "source": {
    "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:539878da88f272bbdb725c9526852a3d3bd09a97d2b706b467323800abe470a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2e7f4fb-042d-91f1-8dcf-281384a13d00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasPrimeInInterval.iff_pi_ge (x h : ℝ) : HasPrimeInInterval x h ↔ pi (x + h) > pi x := by
  constructor
  · rintro ⟨p, hpprime, hxp, hpxh⟩
    have hfloorxh : p ≤ ⌊x + h⌋₊ := Nat.le_floor hpxh
    have hfloorx_lt : ⌊x⌋₊ < p := by
      by_cases hx0 : 0 ≤ x
      · exact (Nat.floor_lt hx0).2 hxp
      · have hp0 : 0 < p := hpprime.pos
        rw [Nat.floor_of_nonpos (le_of_not_ge hx0)]
        exact hp0
    have hfloorx_pred : ⌊x⌋₊ ≤ p - 1 := Nat.le_pred_of_lt hfloorx_lt
    have hpstep' : Nat.primeCounting' p < Nat.primeCounting' (p + 1) := by
      simpa [Nat.primeCounting'] using
        (Nat.count_lt_count_succ_iff (p := Nat.Prime) (n := p)).2 hpprime
    have hpstep : Nat.primeCounting (p - 1) < Nat.primeCounting p := by
      simpa [Nat.primeCounting_sub_one] using hpstep'
    have hnat : Nat.primeCounting ⌊x⌋₊ < Nat.primeCounting ⌊x + h⌋₊ := by
      exact lt_of_le_of_lt (Nat.monotone_primeCounting hfloorx_pred)
        (lt_of_lt_of_le hpstep (Nat.monotone_primeCounting hfloorxh))
    change (Nat.primeCounting ⌊x + h⌋₊ : ℝ) > (Nat.primeCounting ⌊x⌋₊ : ℝ)
    exact_mod_cast hnat
  · intro hpi
    change (Nat.primeCounting ⌊x + h⌋₊ : ℝ) > (Nat.primeCounting ⌊x⌋₊ : ℝ) at hpi
    have hnat : Nat.primeCounting ⌊x⌋₊ < Nat.primeCounting ⌊x + h⌋₊ := by
      exact_mod_cast hpi
    obtain ⟨p, hpprime, hp1, hp2⟩ := prime_in_gap' ⌊x⌋₊ ⌊x + h⌋₊ hnat
    refine ⟨p, hpprime, ?_, ?_⟩
    · exact lt_of_floor_lt <| lt_of_lt_of_le (Nat.lt_succ_self ⌊x⌋₊) hp1
    · have hp_floor : p ≤ ⌊x + h⌋₊ := Nat.lt_succ_iff.mp hp2
      have hfloor_pos : 0 < ⌊x + h⌋₊ := lt_of_lt_of_le hpprime.pos hp_floor
      have hxh_pos : 0 < x + h := Nat.pos_of_floor_pos hfloor_pos
      exact (Nat.cast_le.2 hp_floor).trans (Nat.floor_le hxh_pos.le)

-- this is a legacy piece of code that could be incorporated somehow into the proof of
-- `HasPrimeInInterval.iff_theta_ge` below.

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e97a91adcba4fe274cbb67c931e9bb414eb650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
