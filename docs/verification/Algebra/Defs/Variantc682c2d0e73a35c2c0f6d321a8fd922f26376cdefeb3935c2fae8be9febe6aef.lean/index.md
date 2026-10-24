# Verification target: GRWTSK.Algebra.Defs.Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7f0761e99f75706fd1df0b8b4832bfb9e52761f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7f0761e99f75706fd1df0b8b4832bfb9e52761f`.

Source path: `GRWTSK/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Domain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NonZeroDivisors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RatFunc](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/ratfunc--a30b02f64efead203384a08a.md) | 64 | `declaration-track:a30b02f64efead203384a08aa868633cbd2daf06158095b8434cfda478724b79` |
| 2 | `theorem` | [ofFractionRing_injective](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/offractionring-injective--25b2ff69f6b53f8665257ba5.md) | 79 | `result-track:25b2ff69f6b53f8665257ba581b9da3e2ba9a7f41eb3e0462c0fbb7ac55f97c9` |
| 3 | `theorem` | [toFractionRing_injective](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/tofractionring-injective--bd913776e92a7accb3bc37f7.md) | 82 | `result-track:bd913776e92a7accb3bc37f7dedca7f46235ba34eae261cfad7418904977b24c` |
| 4 | `lemma` | [toFractionRing_inj](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/tofractionring-inj--db04c7619d6d34f6ad8cdc6b.md) | 85 | `result-track:db04c7619d6d34f6ad8cdc6b0a1ce49c83486b2c755fb2cd3df11fc209c6bd93` |
| 5 | `theorem` | [liftOn_ofFractionRing_mk](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/lifton-offractionring-mk--48de7fd3fc8a63964f3745c1.md) | 111 | `result-track:48de7fd3fc8a63964f3745c149f5c84ee2ff56f301d714de5417ae2c425e0fa6` |
| 6 | `theorem` | [liftOn_condition_of_liftOn'_condition](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/lifton-condition-of-lifton-condition--8337d30562b8c3cfc3abea6f.md) | 117 | `result-track:8337d30562b8c3cfc3abea6f7b32a6975f6bf958026aefa6f7a0d86e4be14cb0` |
| 7 | `theorem` | [mk_eq_div'](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-eq-div--fe601428d2ceaf70fed06204.md) | 139 | `result-track:fe601428d2ceaf70fed06204e66ea2b9cacf53df03966e3620758e774436b6fd` |
| 8 | `theorem` | [mk_zero](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-zero--77d813b93a5a74d07f9f50c6.md) | 142 | `result-track:77d813b93a5a74d07f9f50c6007803ce9ccadb4ebe76fbe6f41151c53b434a48` |
| 9 | `theorem` | [mk_coe_def](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-coe-def--dec0f992f938ab3ece46e116.md) | 145 | `result-track:dec0f992f938ab3ece46e116f0d457b0f13960f82fe9f64b8d4e1c6888d6d0e7` |
| 10 | `theorem` | [mk_def_of_mem](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-def-of-mem--cdb1da80cd870cc9f4f67a4c.md) | 149 | `result-track:cdb1da80cd870cc9f4f67a4cbbf45aafa1466f8ba41213ba44ba5dad5171eafa` |
| 11 | `theorem` | [mk_def_of_ne](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-def-of-ne--d136331380f768feb6c188d5.md) | 153 | `result-track:d136331380f768feb6c188d5660580e9187d7fc86d84dcbb9f7a71ad71c6153b` |
| 12 | `theorem` | [mk_eq_localization_mk](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-eq-localization-mk--342b3b1d048ed52839cddb53.md) | 159 | `result-track:342b3b1d048ed52839cddb5311b00ab5d6efc312f84b8ccf67680ea1565ee28c` |
| 13 | `theorem` | [mk_one'](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-one--7d4deac198b1bc03d4197427.md) | 164 | `result-track:7d4deac198b1bc03d4197427d0f5c854262963eb0ef88b70cd3440ccc004f86d` |
| 14 | `theorem` | [mk_eq_mk](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/mk-eq-mk--7148248c451cc0dbec8831b6.md) | 168 | `result-track:7148248c451cc0dbec8831b68a3eb6f6cd1a3f3cc18e3214ae5096aad117e951` |
| 15 | `theorem` | [liftOn_mk](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/lifton-mk--e22c47072e2ab4df3ee39a1d.md) | 174 | `result-track:e22c47072e2ab4df3ee39a1d1de82fd0e4f966ecea0336cf2e4e369e9344e120` |
| 16 | `theorem` | [liftOn'_mk](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/lifton-mk--b4b9aba1f42551b7eed1a3b3.md) | 198 | `result-track:b4b9aba1f42551b7eed1a3b3e96cf462a4d81a28035a65d7f17cb9c105c0b048` |
| 17 | `theorem` | [induction_on'](../../../../mathematics/Algebra/Defs/Variantc682c2d0e73a35c2c0f6d321a8fd922f26376cdefeb3935c2fae8be9febe6aef.lean/declarations/induction-on--be452c6b87f1d8e3bd3360ba.md) | 210 | `result-track:be452c6b87f1d8e3bd3360ba55e4ff5035ce06e09e67bc016379f7dc517a8a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
