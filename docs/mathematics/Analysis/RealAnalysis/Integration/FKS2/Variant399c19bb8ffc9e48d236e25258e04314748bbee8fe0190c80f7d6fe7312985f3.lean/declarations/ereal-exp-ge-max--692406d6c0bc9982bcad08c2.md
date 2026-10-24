# ereal_exp_ge_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3759,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65766c26-16e3-1d6f-a830-24c0955d74f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:866a1d59-83c8-3908-c761-3d59450b67a7",
  "kind": "lemma",
  "lexical_name": "ereal_exp_ge_max",
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
  "slug": "ereal-exp-ge-max--692406d6c0bc9982bcad08c2",
  "source": {
    "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3798,
    "line": 3759,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:692406d6c0bc9982bcad08c24787d9ef86d571a964210f5b772a250e4208ca09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:866a1d59-83c8-3908-c761-3d59450b67a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3759–3798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ereal_exp_ge_max {x₁ : ℝ} (hx₁ : x₁ ≥ 14) {M : ℕ}
    (b' : Fin (M + 1) → EReal) (hmono : Monotone b')
    (h_b_start : b' 0 = ↑(log x₁))
    (i : Fin M) (h_ne_top : b' ⟨i.val, by omega⟩ ≠ ⊤) :
    exp (b' ⟨i.val, by omega⟩).toReal ≥ max x₁ 14 := by
  -- Since $b'$ is monotone and $i.val \geq 0$, we have $b' ⟨i.val, by omega⟩ \geq b' 0 = ↑(log x₁)$.
  have h_ge_log_x₁ : b' ⟨i.val, by omega⟩ ≥ ↑(log x₁) := by
    exact h_b_start ▸ hmono ( Nat.zero_le _ );
  have h_toReal_ge_log_x₁ : (b' ⟨i.val, by omega⟩).toReal ≥ Real.log x₁ := by
    cases h : b' ⟨ i, by omega ⟩
    · aesop
    · aesop
    · contradiction
  exact le_trans ( by rw [ max_eq_left ( by linarith ) ] ; exact Real.le_exp_log x₁ |> le_trans <| Real.exp_le_exp.mpr h_toReal_ge_log_x₁ ) le_rfl;

/-
PROBLEM
Helper: for a given bin index i from find_ereal_bin, the bound from theorem_6 applies

PROVIDED SOLUTION
Apply theorem_6 with parameters:
- x₀ := x₁
- x₁ (theorem_6's) := exp(b'⟨i.val, _⟩.toReal)
- x₂ := if ⟨i.val+1, _⟩ = Fin.last M then ⊤ else ↑(exp(b'⟨i.val+1,_⟩.toReal))
- N := i.val
- b := fun j : Fin (i.val+1) ↦ (b' ⟨j.val, _⟩).toReal

Key facts for the hypotheses:
1. b'(i) ≠ ⊤: from h_finite, since i.val < M so ⟨i.val, _⟩ ≠ Fin.last M.
2. b' 0 ≠ ⊥: b' 0 = ↑(log x₁) which is a real cast, not ⊥.
3. exp(b'(i).toReal) ≥ max x₁ 14: use ereal_exp_ge_max with h_ne_top from (1).
4. Sub-partition is monotone: use ereal_toReal_sub_mono with v = log x (since b'(i) ≤ ↑(log x)) and h_bot (from (2)).
5. Sub-partition starts at log x₁: (b' ⟨0, _⟩).toReal = log x₁ by ereal_toReal_coe_log.
6. Sub-partition ends at b'(i).toReal = log(exp(b'(i).toReal)): by Real.log_exp.
7. h_εθ_num for sub-partition: for j, h_εθ_num ⟨j.val, _⟩.
8. exp(b'(i).toReal) ≤ x: use ereal_exp_toReal_le with v = log x, then exp(log x) = x by Real.exp_log (x > 0 since x ≥ 14).
9. x.toEReal ≤ x₂: split on if:
   - If ⟨i.val+1,_⟩ = Fin.last M: x₂ = ⊤, trivially x.toEReal ≤ ⊤.
   - Otherwise: b'(i+1) ≠ ⊤ (by h_finite, since ⟨i.val+1,_⟩ ≠ Fin.last M). Also b'(i+1) ≠ ⊥ (since b'(i+1) > ↑(log x) ≥ ↑(log 14) > ⊥). So b'(i+1) is finite and b'(i+1).toReal > log x (by EReal.toReal preserving strict inequality for finite values). Then exp(b'(i+1).toReal) > exp(log x) = x, so x ≤ exp(b'(i+1).toReal), giving x.toEReal ≤ ↑(exp(b'(i+1).toReal)).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean#L3759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88be1b47c741ee6510e22488953556110e8e6ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
