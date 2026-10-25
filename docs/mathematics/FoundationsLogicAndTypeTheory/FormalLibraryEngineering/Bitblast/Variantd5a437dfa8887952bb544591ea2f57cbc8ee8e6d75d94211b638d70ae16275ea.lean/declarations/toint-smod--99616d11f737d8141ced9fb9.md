# toInt_smod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1975,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:474cdc72-b83a-8930-b3a8-14fcba52ede1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32495bd4-eb39-a9f1-4e53-a611e3247aa9",
  "kind": "theorem",
  "lexical_name": "toInt_smod",
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
  "slug": "toint-smod--99616d11f737d8141ced9fb9",
  "source": {
    "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2006,
    "line": 1975,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99616d11f737d8141ced9fb94c9533d49a33a1d94faa2fb0cb1668cdc421096e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32495bd4-eb39-a9f1-4e53-a611e3247aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1975–2006.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_smod {x y : BitVec w} :
    (x.smod y).toInt = x.toInt.fmod y.toInt := by
  rcases w with _|w
  · decide +revert
  · by_cases hyzero : y = 0#(w + 1)
    · simp [hyzero]
    · rw [smod_eq]
      cases hxmsb : x.msb <;> cases hymsb : y.msb
      <;> simp only [umod_eq]
      · have : 0 < y.toNat := by simp [toNat_eq] at hyzero; omega
        have : y.toNat < 2 ^ w := toNat_lt_of_msb_false hymsb
        have : x.toNat % y.toNat < y.toNat := Nat.mod_lt x.toNat (by omega)
        rw [toInt_umod, Int.fmod_eq_emod_of_nonneg x.toInt (toInt_nonneg_of_msb_false hymsb),
          toInt_eq_toNat_of_msb hxmsb, toInt_eq_toNat_of_msb hymsb,
          Int.bmod_eq_of_le_mul_two (by omega) (by omega)]
      · have := toInt_dvd_toInt_iff_of_msb_false_msb_true hxmsb hymsb
        by_cases hx_dvd_y : y.toInt ∣ x.toInt
        · simp [show x % -y = 0#(w + 1) by simp_all, hx_dvd_y, Int.fmod_eq_zero_of_dvd]
        · have hynonpos := toInt_neg_of_msb_true hymsb
          simp only [show ¬x % -y = 0#(w + 1) by simp_all, ↓reduceIte,
            toInt_umod_neg_add hymsb hxmsb hx_dvd_y, Int.fmod_eq_emod, show ¬0 ≤ y.toInt by omega,
            hx_dvd_y, _root_.or_self]
      · have hynonneg := toInt_nonneg_of_msb_false hymsb
        rw [Int.fmod_eq_emod_of_nonneg x.toInt (b := y.toInt) (by omega)]
        have hdvd := toInt_dvd_toInt_iff_of_msb_true_msb_false hxmsb hymsb
        by_cases hx_dvd_y : y.toInt ∣ x.toInt
        · simp [show -x % y = 0#(w + 1) by simp_all, hx_dvd_y, Int.emod_eq_zero_of_dvd]
        · simp [show ¬-x % y = 0#(w + 1) by simp_all, toInt_sub_neg_umod hxmsb hymsb hx_dvd_y]
      · rw [←Int.neg_inj, neg_toInt_neg_umod_eq_of_msb_true_msb_true hxmsb hymsb]
        simp [BitVec.toInt_eq_neg_toNat_neg_of_msb_true, hxmsb, hymsb,
          Int.fmod_eq_emod_of_nonneg _]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean#L1975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b69a68eefa1987f13d13b2f6ef1b1314e79981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
