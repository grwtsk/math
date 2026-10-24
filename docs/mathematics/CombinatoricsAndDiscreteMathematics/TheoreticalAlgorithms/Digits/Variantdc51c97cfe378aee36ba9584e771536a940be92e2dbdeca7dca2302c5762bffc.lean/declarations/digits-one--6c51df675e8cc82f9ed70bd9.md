# digits_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7be8bf0c13c8bdf0c790bb2a1eab4bf051a58de9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 737,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36ec3f59-634a-e4c9-4df0-f09037d1e627",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61eaf9a3-69fa-2fb9-8280-879b4869ee44",
  "kind": "theorem",
  "lexical_name": "digits_one",
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
  "slug": "digits-one--6c51df675e8cc82f9ed70bd9",
  "source": {
    "blob": "7be8bf0c13c8bdf0c790bb2a1eab4bf051a58de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 829,
    "line": 737,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c51df675e8cc82f9ed70bd9d015c3f0d7ae3b0a68e13c7a1c6d291d3eadfc50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61eaf9a3-69fa-2fb9-8280-879b4869ee44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–829.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem digits_one (b n) (n0 : 0 < n) (nb : n < b) : Nat.digits b n = [n] ∧ 1 < b ∧ 0 < n := by
  have b2 : 1 < b :=
    lt_iff_add_one_le.mpr (le_trans (add_le_add_right (lt_iff_add_one_le.mp n0) 1) nb)
  refine' ⟨_, b2, n0⟩
  rw [Nat.digits_def' b2 n0, Nat.mod_eq_of_lt nb,
    (Nat.div_eq_zero_iff ((zero_le n).trans_lt nb)).2 nb, Nat.digits_zero]
#align nat.norm_digits.digits_one Nat.NormDigits.digits_one

/-
Porting note: this part of the file is tactic related.

open Tactic
-- failed to format: unknown constant 'term.pseudo.antiquot'
/-- Helper function for the `norm_digits` tactic. -/ unsafe
  def
    eval_aux
    ( eb : expr ) ( b : ℕ ) : expr → ℕ → instance_cache → tactic ( instance_cache × expr × expr )
    |
      en , n , ic
      =>
      do
        let m := n / b
          let r := n % b
          let ( ic , er ) ← ic . ofNat r
          let ( ic , pr ) ← norm_num.prove_lt_nat ic er eb
          if
            m = 0
            then
            do
              let ( _ , pn0 ) ← norm_num.prove_pos ic en
                return
                  (
                    ic
                      ,
                      q( ( [ $ ( en ) ] : List Nat ) )
                        ,
                        q( digits_one $ ( eb ) $ ( en ) $ ( pn0 ) $ ( pr ) )
                    )
            else
            do
              let em ← expr.of_nat q( ℕ ) m
                let ( _ , pe ) ← norm_num.derive q( ( $ ( er ) + $ ( eb ) * $ ( em ) : ℕ ) )
                let ( ic , el , p ) ← eval_aux em m ic
                return
                  (
                    ic
                      ,
                      q( @ List.cons ℕ $ ( er ) $ ( el ) )
                        ,
                        q(
                          digits_succ
                            $ ( eb ) $ ( en ) $ ( em ) $ ( er ) $ ( el ) $ ( pe ) $ ( pr ) $ ( p )
                          )
                    )
#align nat.norm_digits.eval_aux Nat.NormDigits.eval_aux

/-- A tactic for normalizing expressions of the form `Nat.digits a b = l` where
`a` and `b` are numerals.

```
example : Nat.digits 10 123 = [3,2,1] := by norm_num
```
-/
@[norm_num]
unsafe def eval : expr → tactic (expr × expr)
  | q(Nat.digits $(eb) $(en)) => do
    let b ← expr.to_nat eb
    let n ← expr.to_nat en
    if n = 0 then return (q(([] : List ℕ)), q(Nat.digits_zero $(eb)))
      else
        if b = 0 then do
          let ic ← mk_instance_cache q(ℕ)
          let (_, pn0) ← norm_num.prove_ne_zero' ic en
          return (q(([$(en)] : List ℕ)), q(@Nat.digits_zero_succ' $(en) $(pn0)))
        else
          if b = 1 then do
            let ic ← mk_instance_cache q(ℕ)
            let s ← simp_lemmas.add_simp simp_lemmas.mk `list.replicate
            let (rhs, p2, _) ← simplify s [] q(List.replicate $(en) 1)
            let p ← mk_eq_trans q(Nat.digits_one $(en)) p2
            return (rhs, p)
          else do
            let ic ← mk_instance_cache q(ℕ)
            let (_, l, p) ← eval_aux eb b en n ic
            let p ← mk_app `` And.left [p]
            return (l, p)
  | _ => failed
#align nat.norm_digits.eval Nat.NormDigits.eval
-/

end NormDigits

end Nat
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7be8bf0c13c8bdf0c790bb2a1eab4bf051a58de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
