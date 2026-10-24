# extractLsb_flattenList

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
      "line": 3039,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94e837fd-6256-021b-5ef9-35a17c59183b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:979d8f36-7008-8fdb-71ab-bd6e8adf1ad5",
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
  "slug": "extractlsb-flattenlist--19b0f100e5bd30b06829d988",
  "source": {
    "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3063,
    "line": 3039,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19b0f100e5bd30b06829d98827c33c203b8004539615ef214409ab3310bad61d",
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

Occurrence: `result:979d8f36-7008-8fdb-71ab-bd6e8adf1ad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3039–3063.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean#L3039).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05610358a70a3b8d66b81c396a7fc44a13f11d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
