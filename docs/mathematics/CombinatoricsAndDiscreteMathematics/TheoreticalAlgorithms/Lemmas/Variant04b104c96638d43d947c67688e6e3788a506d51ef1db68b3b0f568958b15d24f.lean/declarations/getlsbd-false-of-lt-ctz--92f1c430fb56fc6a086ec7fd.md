# getLsbD_false_of_lt_ctz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7f6b637-e454-54cf-dedc-457242a846db",
  "kind": "theorem",
  "lexical_name": "getLsbD_false_of_lt_ctz",
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
  "slug": "getlsbd-false-of-lt-ctz--92f1c430fb56fc6a086ec7fd",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6585,
    "line": 6558,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92f1c430fb56fc6a086ec7fd0df17ac52a4b153c0d846b2752b0b773249b23cf",
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

Occurrence: `result:d7f6b637-e454-54cf-dedc-457242a846db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6558–6585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getLsbD_false_of_lt_ctz {x : BitVec w} (hi : i < x.ctz.toNat) :
    x.getLsbD i = false := by
  rw [getLsbD_eq_getMsbD, ← getLsbD_reverse]
  have hiff := ctz_lt_iff_ne_zero (x := x)
  by_cases hzero : x = 0#w
  · simp [hzero, getLsbD_reverse]
  · simp only [ctz_eq_reverse_clz, natCast_eq_ofNat, ne_eq, hzero, not_false_eq_true,
      iff_true] at hiff
    simp only [ctz] at hi
    have hi' : i < w := by simp [BitVec.lt_def] at hiff; omega
    simp only [hi', decide_true, Bool.true_and]
    have : (x.reverse.clzAuxRec (w - 1)).toNat ≤ w := by
      rw [show ((x.reverse.clzAuxRec (w - 1)).toNat ≤ w) =
            ((x.reverse.clzAuxRec (w - 1)).toNat ≤ (BitVec.ofNat w w).toNat) by simp, ← le_def]
      apply clzAuxRec_le (x := x.reverse) (n := w - 1)
    let j := (x.reverse.clzAuxRec (w - 1)).toNat - 1 - i
    rw [show w - 1 - i = w - (x.reverse.clzAuxRec (w - 1)).toNat + j by
      subst j
      rw [Nat.sub_sub (n := (x.reverse.clzAuxRec (w - 1)).toNat),
        ← Nat.add_sub_assoc (by exact Nat.one_add_le_iff.mpr hi)]
      omega]
    have hfalse : ∀ (i : Nat), w - 1 < i → x.reverse.getLsbD i = false := by
      intros i hj
      simp [show w ≤ i by omega]
    exact getLsbD_false_of_clzAuxRec (x := x.reverse) (n := w - 1) hfalse (j := j)

/-- If a bitvec is different than zero, the bit at index `ctz x`, i.e., the first bit after the
  trailing zeros, is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L6558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
