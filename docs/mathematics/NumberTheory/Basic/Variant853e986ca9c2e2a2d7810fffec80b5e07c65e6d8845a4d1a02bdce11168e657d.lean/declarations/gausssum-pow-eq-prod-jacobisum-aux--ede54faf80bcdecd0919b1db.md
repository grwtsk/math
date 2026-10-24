# gaussSum_pow_eq_prod_jacobiSum_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a083d8d-770a-f2f3-d44d-95ef279219d7",
  "kind": "lemma",
  "lexical_name": "gaussSum_pow_eq_prod_jacobiSum_aux",
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
  "slug": "gausssum-pow-eq-prod-jacobisum-aux--ede54faf80bcdecd0919b1db",
  "source": {
    "blob": "6e1af8b061b9d202ffe79e2881e13e2e895548a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 332,
    "path": "GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede54faf80bcdecd0919b1db7bb3d0abbd3472ac99a2768ef419464cf056a90a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a083d8d-770a-f2f3-d44d-95ef279219d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussSum_pow_eq_prod_jacobiSum_aux (χ : MulChar F R) (ψ : AddChar F R) {n : ℕ}
    (hn₁ : 0 < n) (hn₂ : n < orderOf χ) :
    gaussSum χ ψ ^ n = gaussSum (χ ^ n) ψ * ∏ j ∈ Ico 1 n, jacobiSum χ (χ ^ j) := by
  induction n, hn₁ using Nat.le_induction with
  | base => simp only [pow_one, le_refl, Ico_eq_empty_of_le, prod_empty, mul_one]
  | succ n hn ih =>
      specialize ih <| lt_trans (Nat.lt_succ_self n) hn₂
      have gauss_rw : gaussSum (χ ^ n) ψ * gaussSum χ ψ =
            jacobiSum χ (χ ^ n) * gaussSum (χ ^ (n + 1)) ψ := by
        have hχn : χ * (χ ^ n) ≠ 1 :=
          pow_succ' χ n ▸ pow_ne_one_of_lt_orderOf n.add_one_ne_zero hn₂
        rw [mul_comm, ← jacobiSum_mul_nontrivial hχn, mul_comm, ← pow_succ']
      apply_fun (· * gaussSum χ ψ) at ih
      rw [mul_right_comm, ← pow_succ, gauss_rw] at ih
      rw [ih, Finset.prod_Ico_succ_top hn, mul_rotate, mul_assoc]

/-- If `χ` is a multiplicative character of order `n ≥ 2` on a finite field `F`,
then `g(χ)^n = χ(-1) * #F * J(χ,χ) * J(χ,χ²) * ... * J(χ,χⁿ⁻²)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1af8b061b9d202ffe79e2881e13e2e895548a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
