# toInt_signExtend_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ebff9bf-92d1-e0c3-2ce2-699d44af943b",
  "kind": "theorem",
  "lexical_name": "toInt_signExtend_of_le",
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
  "slug": "toint-signextend-of-le--b0cfec26baa242677185e8a7",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2698,
    "line": 2673,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0cfec26baa242677185e8a7001df8eae77f29ecb19043dde978cd43b1ef3b43",
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

Occurrence: `result:7ebff9bf-92d1-e0c3-2ce2-699d44af943b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2673–2698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_signExtend_of_le {x : BitVec w} (h : w ≤ v) :
    (x.signExtend v).toInt = x.toInt := by
  by_cases hlt : w < v
  · rw [toInt_signExtend_of_lt hlt]
  · obtain rfl : w = v := by omega
    simp
where
  toInt_signExtend_of_lt {x : BitVec w} (hv : w < v):
      (x.signExtend v).toInt = x.toInt := by
    simp only [toInt_eq_msb_cond, toNat_signExtend]
    have : (x.signExtend v).msb = x.msb := by
      rw [msb_eq_getLsbD_last, getLsbD_eq_getElem (Nat.sub_one_lt_of_lt hv)]
      simp [getElem_signExtend]
      omega
    have H : 2^w ≤ 2^v := Nat.pow_le_pow_right (by omega) (by omega)
    simp only [this, toNat_setWidth, Int.natCast_add, Int.natCast_emod]
    by_cases h : x.msb
    <;> norm_cast
    <;> simp [h, Nat.mod_eq_of_lt (Nat.lt_of_lt_of_le x.isLt H), -Int.natCast_pow]
    omega

/--
If the current width `w` is larger than the extended width `v`,
then the value when interpreted as an integer is truncated,
and we compute a modulo by `2^v`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L2673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
