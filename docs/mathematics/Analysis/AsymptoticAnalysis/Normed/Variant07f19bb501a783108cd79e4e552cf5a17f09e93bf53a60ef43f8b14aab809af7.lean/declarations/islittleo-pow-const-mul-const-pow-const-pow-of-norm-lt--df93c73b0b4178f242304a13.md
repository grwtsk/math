# isLittleO_pow_const_mul_const_pow_const_pow_of_norm_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3defc37-2bda-9102-6c9e-a649c5736083",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51b26c6a-2746-6dde-72fe-539b210f6b49",
  "kind": "theorem",
  "lexical_name": "isLittleO_pow_const_mul_const_pow_const_pow_of_norm_lt",
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
  "slug": "islittleo-pow-const-mul-const-pow-const-pow-of-norm-lt--df93c73b0b4178f242304a13",
  "source": {
    "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 212,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df93c73b0b4178f242304a13b31ec7e55dfad0a688315ed7f421d7259f099484",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51b26c6a-2746-6dde-72fe-539b210f6b49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_pow_const_mul_const_pow_const_pow_of_norm_lt {R : Type*} [NormedRing R] (k : ℕ)
    {r₁ : R} {r₂ : ℝ} (h : ‖r₁‖ < r₂) :
    (fun n ↦ (n : R) ^ k * r₁ ^ n : ℕ → R) =o[atTop] fun n ↦ r₂ ^ n := by
  by_cases h0 : r₁ = 0
  · refine' (isLittleO_zero _ _).congr' (mem_atTop_sets.2 <| ⟨1, fun n hn ↦ _⟩) EventuallyEq.rfl
    simp [zero_pow (zero_lt_one.trans_le hn), h0]
  rw [← Ne.def, ← norm_pos_iff] at h0
  have A : (fun n ↦ (n : R) ^ k : ℕ → R) =o[atTop] fun n ↦ (r₂ / ‖r₁‖) ^ n :=
    isLittleO_pow_const_const_pow_of_one_lt k ((one_lt_div h0).2 h)
  suffices (fun n ↦ r₁ ^ n) =O[atTop] fun n ↦ ‖r₁‖ ^ n by
    simpa [div_mul_cancel _ (pow_pos h0 _).ne'] using A.mul_isBigO this
  exact IsBigO.of_bound 1 (by simpa using eventually_norm_pow_le r₁)
#align is_o_pow_const_mul_const_pow_const_pow_of_norm_lt isLittleO_pow_const_mul_const_pow_const_pow_of_norm_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a0509ea311c6da87d9732908c1153ca772dccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
