# clzAuxRec_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23db48cc-5e8c-44eb-5269-06e92393cf38",
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
  "slug": "clzauxrec-eq-zero-iff--eedeb669e6b06633c991efd7",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6411,
    "line": 6375,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eedeb669e6b06633c991efd75e85711b43ce809ea515f643a8886b6bb88d7d05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23db48cc-5e8c-44eb-5269-06e92393cf38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6375–6411.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L6375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
