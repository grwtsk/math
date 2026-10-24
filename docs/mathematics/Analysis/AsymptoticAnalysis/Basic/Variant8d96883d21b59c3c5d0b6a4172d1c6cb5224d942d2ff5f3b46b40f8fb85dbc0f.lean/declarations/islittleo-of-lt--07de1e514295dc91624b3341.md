# isLittleO_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "272556eb3ae07bfdf78b85b84fb98e02043967c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1270113-f056-96df-f7d9-2d4fe4e47cdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f9af304-95dc-f18b-4b4b-55c186ee3f77",
  "kind": "lemma",
  "lexical_name": "isLittleO_of_lt",
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
  "slug": "islittleo-of-lt--07de1e514295dc91624b3341",
  "source": {
    "blob": "272556eb3ae07bfdf78b85b84fb98e02043967c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 338,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07de1e514295dc91624b3341c4916ee5a17040256e1a36b090069099e376d6b9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f9af304-95dc-f18b-4b4b-55c186ee3f77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLittleO_of_lt {basis : Basis} {m1 m2 : UnitMonomial}
    (h_basis : WellFormedBasis basis)
    (h1 : m1.length = basis.length)
    (h2 : m2.length = basis.length)
    (h_lt : m1 < m2) :
    m1.toFun basis =o[atTop] m2.toFun basis := by
  obtain _ | ⟨basis_hd, basis_tl⟩ := basis
  · simp only [List.length_nil, List.length_eq_zero_iff] at h1 h2
    simp [h1, h2] at h_lt
  obtain _ | ⟨exp1, m1⟩ := m1
  · simp at h1
  obtain _ | ⟨exp2, m2⟩ := m2
  · simp at h2
  cases h_lt with
  | cons h =>
    simp only [toFun_cons]
    apply IsBigO.mul_isLittleO (isBigO_refl _ _)
    exact isLittleO_of_lt h_basis.tail (by simpa using h1) (by simpa using h2) h
  | rel h =>
    simp only [List.length_cons, Nat.add_right_cancel_iff, toFun_cons] at h1 h2 ⊢
    apply IsLittleO.of_tendsto_div_atTop
    apply Filter.Tendsto.congr' (f₁ := UnitMonomial.toFun ((exp2 - exp1) ::
      UnitMonomial.mul m2 (UnitMonomial.inv m1)) (basis_hd :: basis_tl))
    · simp only [toFun_cons, Pi.mul_apply, Pi.pow_apply]
      grw [mul_toFun h_basis.tail (by grind [inv_length]), inv_toFun h_basis.tail]
      apply h_basis.head_eventually_pos.mono
      intro x hx
      simp only [Pi.mul_apply, Pi.pow_apply, Pi.inv_apply, Real.rpow_sub hx]
      field
    · apply toFun_tendsto_top_of_firstNonzeroIsPos h_basis
      · grind [inv_length, mul_length]
      · apply FirstNonzeroIsPos.of_head
        grind

end UnitMonomial

namespace Monomial

/-- Converts `t : Monomial` to real function represented by the corresponding monomial, i.e.
`t.coef * basis[0]^t.exps[0] * basis[1]^t.exps[1] * ...`. It is always assumed that
`t.exps.length = basis.length`, but some theorems below do not require this assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272556eb3ae07bfdf78b85b84fb98e02043967c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
