# extractLsb_flattenList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f3f0e6-6f0e-7a89-4895-45a8179c3b8b",
  "kind": "theorem",
  "lexical_name": "extractLsb_flattenList",
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
  "slug": "extractlsb-flattenlist--5e0da7a2ba95afbc415d1244",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3071,
    "line": 3047,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e0da7a2ba95afbc415d12441a567d0a1e5a4239578e0f9778e3496f59c824c4",
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

Occurrence: `result:d5f3f0e6-6f0e-7a89-4895-45a8179c3b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3047–3071.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extractLsb_flattenList (hi lo : Nat) {w  : Nat} (vs : List (BitVec w))
    (w₁ : lo ≤ hi) (w₂ : hi < w * vs.length) (h : hi / w = lo / w) :
    extractLsb hi lo (BitVec.flattenList vs) =
      BitVec.cast (by simp [Nat.mod_eq_sub_mul_div, h]; have := Nat.mul_div_le lo w; omega)
        (extractLsb (hi % w) (lo % w) (vs[vs.length - 1 - hi / w]?.getD 0#w)) := by
  by_cases p : 0 < w
  · have t : w * (lo / w) ≤ lo := Nat.mul_div_le lo w
    have t' : hi < w * (lo / w) + w := by rw [← h]; apply Nat.lt_mul_div_self_add p
    apply eq_of_getLsbD_eq
    intro i hi_lt
    have q : i < hi - lo + 1 := hi_lt
    have q' : i < hi % w - lo % w + 1 := by simp [Nat.mod_eq_sub_mul_div, h]; omega
    have q'' : lo + i < w * vs.length := by omega
    have h₁ : (lo + i) / w = lo / w := by
      apply Nat.div_eq_of_lt_le <;> rw [Nat.mul_comm]
      · omega
      · simp only [Nat.mul_add]; omega
    have h₂ : (lo + i) % w = lo % w + i := by simp [Nat.mod_eq_sub_mul_div, h₁]; omega
    simp only [getLsbD_extractLsb, getLsbD_flattenList, q, q', q'', h₁, h₂, h, getLsbD_cast,
      decide_true, Bool.true_and]
  · simp at p
    subst p
    omega

/-! ### rev -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L3047).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
