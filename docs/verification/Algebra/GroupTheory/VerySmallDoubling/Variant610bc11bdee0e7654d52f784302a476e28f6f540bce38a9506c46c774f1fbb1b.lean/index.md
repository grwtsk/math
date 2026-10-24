# Verification target: GRWTSK.Algebra.GroupTheory.VerySmallDoubling.Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adec808b853dd7c901a9c8ad0f965d0a5e9f2cfa",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adec808b853dd7c901a9c8ad0f965d0a5e9f2cfa`.

Source path: `GRWTSK/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_stabilizer_of_no_doubling_aux](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/smul-stabilizer-of-no-doubling-aux--be8f3b3be6bb549cbb91f671.md) | 56 | `result-track:be8f3b3be6bb549cbb91f671e6c8e589f3192ca48411773998af6b8cb276591f` |
| 2 | `lemma` | [smul_stabilizer_of_no_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/smul-stabilizer-of-no-doubling--ff2c82279818b2930d8ac389.md) | 82 | `result-track:ff2c82279818b2930d8ac389225870dfcac100ab61460c410a5f6da0964782f7` |
| 3 | `lemma` | [op_smul_stabilizer_of_no_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/op-smul-stabilizer-of-no-doubling--5e8ddbe3fd1040d7879271f4.md) | 87 | `result-track:5e8ddbe3fd1040d7879271f4e0cf5ab121a3e93082a8aabcc36d1ce5c8092218` |
| 4 | `lemma` | [big_intersection](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/big-intersection--e0c7c32568acc4371ae7f304.md) | 92 | `result-track:e0c7c32568acc4371ae7f304713c84c177a1538cdb0b754f7f042b28e7325c09` |
| 5 | `lemma` | [mul_inv_eq_inv_mul_of_doubling_lt_two_aux](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/mul-inv-eq-inv-mul-of-doubling-lt-two-aux--e3a4e9e855435ed31d81c11e.md) | 102 | `result-track:e3a4e9e855435ed31d81c11eb4e0425b9e9b7f8c97f4902bddb3df105a435898` |
| 6 | `lemma` | [mul_inv_eq_inv_mul_of_doubling_lt_two](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/mul-inv-eq-inv-mul-of-doubling-lt-two--eb8259e3521320e77aaf553a.md) | 125 | `result-track:eb8259e3521320e77aaf553a458e3e38fe0863af536417e27ced40ea0ab699ba` |
| 7 | `lemma` | [weaken_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/weaken-doubling--b98c4ca6f00677123887baa9.md) | 130 | `result-track:b98c4ca6f00677123887baa9505aba286231a405798232632a5ac5ed25eaedb5` |
| 8 | `lemma` | [nonempty_of_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/nonempty-of-doubling--75b46b2a358c10ac74c69bf9.md) | 134 | `result-track:75b46b2a358c10ac74c69bf9866e99cc31481451fbd1fd74ed509e2f9fcd56c0` |
| 9 | `def` | [invMulSubgroup](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/invmulsubgroup--e30f113eb393d100dd5b704a.md) | 142 | `declaration-track:e30f113eb393d100dd5b704a9dbcbb7de5d7f56e9e765ff3fd82f12e2a4a3644` |
| 10 | `lemma` | [invMulSubgroup_eq_inv_mul](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/invmulsubgroup-eq-inv-mul--4a32139eea657dd055f67ae2.md) | 185 | `result-track:4a32139eea657dd055f67ae2ac075b0ac8c541a8bb8b1aa3e92a526e59bc6c41` |
| 11 | `lemma` | [invMulSubgroup_eq_mul_inv](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/invmulsubgroup-eq-mul-inv--ebc3aa57fe1b9b90058e49ac.md) | 187 | `result-track:ebc3aa57fe1b9b90058e49ac97648dff3ffe7ef9f402af07fd1fb45c5b373cbf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/instance--e293f8b03ab6ee9ea31447ea.md) | 192 | `declaration-track:e293f8b03ab6ee9ea31447eaa1b99e3dd6af70d339eb6b2aea3dc9943c10d24e` |
| 13 | `lemma` | [weak_invMulSubgroup_bound](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/weak-invmulsubgroup-bound--e58d052a21dc00ff41931559.md) | 195 | `result-track:e58d052a21dc00ff41931559615f752d0a0111b7ce198dbb555f75566997d6f5` |
| 14 | `lemma` | [A_subset_aH](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/a-subset-ah--f415b543648a179358d0c751.md) | 230 | `result-track:f415b543648a179358d0c751c9757d96136568732238c5d307509a16cd297fb2` |
| 15 | `lemma` | [subgroup_strong_bound_left](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/subgroup-strong-bound-left--9229f0e6ebc771bc0ffdb5bb.md) | 234 | `result-track:9229f0e6ebc771bc0ffdb5bb19ab8f6fad8b454a2b575c520d2bc97003880082` |
| 16 | `lemma` | [subgroup_strong_bound_right](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/subgroup-strong-bound-right--d0808272bb9ea95cd336b877.md) | 245 | `result-track:d0808272bb9ea95cd336b877a84b311eede330761ac3304b2b75b3647c0bcd00` |
| 17 | `lemma` | [smul_inv_mul_opSMul_eq_mul_of_doubling_lt_three_halves](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/smul-inv-mul-opsmul-eq-mul-of-doubling-lt-three-halves--6dfbf7a81a61623228a8650f.md) | 286 | `result-track:6dfbf7a81a61623228a8650fb3068b665ebc10da9841305cd4876d05c901f5f0` |
| 18 | `lemma` | [card_inv_mul_of_doubling_lt_three_halves](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/card-inv-mul-of-doubling-lt-three-halves--efedeeb3eb7941575e66691a.md) | 290 | `result-track:efedeeb3eb7941575e66691ab9e7b461711cf75fc43b2c0e12e505e5b1c644ca` |
| 19 | `lemma` | [smul_inv_mul_eq_inv_mul_opSMul](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/smul-inv-mul-eq-inv-mul-opsmul--c0c94e5f8b32ab2e44779c3d.md) | 295 | `result-track:c0c94e5f8b32ab2e44779c3d6f4de0ce914d1ca8d77913206da582618c720f71` |
| 20 | `theorem` | [doubling_lt_three_halves](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant610bc11bdee0e7654d52f784302a476e28f6f540bce38a9506c46c774f1fbb1b.lean/declarations/doubling-lt-three-halves--93ab28056b4fdedc28ca7e5f.md) | 325 | `result-track:93ab28056b4fdedc28ca7e5f366b4b886797314b9e096be72d577352d2d7dacf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
