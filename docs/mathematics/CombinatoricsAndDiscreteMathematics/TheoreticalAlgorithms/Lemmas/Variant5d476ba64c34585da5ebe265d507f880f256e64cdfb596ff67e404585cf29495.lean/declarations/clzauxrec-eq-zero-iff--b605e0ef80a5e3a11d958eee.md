# clzAuxRec_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 6367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c27f552-f42f-f575-fcff-48afc1be9834",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08615259-9368-5478-a15b-aff142d4f0ba",
  "kind": "theorem",
  "lexical_name": "clzAuxRec_eq_zero_iff",
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
  "slug": "clzauxrec-eq-zero-iff--b605e0ef80a5e3a11d958eee",
  "source": {
    "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6403,
    "line": 6367,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b605e0ef80a5e3a11d958eeec14204cacada64f6fed2b578ca2e9b4145e4ae30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08615259-9368-5478-a15b-aff142d4f0ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6367–6403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clzAuxRec_eq_zero_iff {x : BitVec w} (h : ∀ i, n < i → x.getLsbD i = false) (hw : 0 < w) :
    (x.clzAuxRec n).toNat = 0 ↔ x[w - 1] = true := by
  have := Nat.lt_pow_self (a := 2) (n := w)
  induction n
  · case zero =>
    simp only [clzAuxRec_zero]
    by_cases hw1 : w - 1 = 0
    · by_cases hx0 : x.getLsbD 0
      · simp [hw1, hx0]
      · simp [hw1, show ¬ w = 0 by omega, hx0, ← getLsbD_eq_getElem]
    · by_cases hx0 : x.getLsbD 0
      · simp only [hx0, ↓reduceIte, toNat_ofNat,
          Nat.mod_eq_of_lt (a := w - 1) (b := 2 ^ w) (by omega), show ¬w - 1 = 0 by omega, false_iff,
          Bool.not_eq_true]
        specialize h (w - 1) (by omega)
        exact h
      · simp [hx0, show ¬ w = 0 by omega]
        specialize h (w - 1) (by omega)
        exact h
  · case succ n ihn =>
    by_cases hxn : x.getLsbD (n + 1)
    · simp only [clzAuxRec_succ, hxn, reduceIte, toNat_ofNat]
      rw [Nat.mod_eq_of_lt (by omega)]
      by_cases hwn : w - 1 - (n + 1) = 0
      · have := lt_of_getLsbD hxn
        simp only [show w - 1 = n + 1 by omega, Nat.sub_self, true_iff]
        exact hxn
      · simp only [hwn, false_iff, Bool.not_eq_true]
        specialize h (w - 1) (by omega)
        exact h
    · simp only [clzAuxRec_succ, hxn, Bool.false_eq_true, reduceIte]
      apply ihn
      intro i hi
      by_cases hi : i = n + 1
      · simp [hi, hxn]
      · apply h; omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean#L6367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05610358a70a3b8d66b81c396a7fc44a13f11d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
