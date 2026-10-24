# Verification target: GRWTSK.Algebra.Defs.Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeaf1c60ce0c5ce83b8d08a9919c56af1179a97f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeaf1c60ce0c5ce83b8d08a9919c56af1179a97f`.

Source path: `GRWTSK/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Domain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NonZeroDivisors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RatFunc](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/ratfunc--eb2aaea2cf6dec8ab8981e02.md) | 72 | `declaration-track:eb2aaea2cf6dec8ab8981e02a146fe338c77dc77e62c861b5002f6a18f754c44` |
| 2 | `theorem` | [ofFractionRing_injective](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/offractionring-injective--a4bbb1b2269d4b1e2712b664.md) | 87 | `result-track:a4bbb1b2269d4b1e2712b664028396c6488518e6543f128581973d6481fb9738` |
| 3 | `theorem` | [toFractionRing_injective](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/tofractionring-injective--835a8390215c6475330f7161.md) | 90 | `result-track:835a8390215c6475330f7161a665b64864ef26cd8df7ba6f23ff07f22e872166` |
| 4 | `lemma` | [toFractionRing_inj](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/tofractionring-inj--6df8543332370c2481adea59.md) | 93 | `result-track:6df8543332370c2481adea59d2cafc50dac9a0b85f2630ad4daae661b5f60d0d` |
| 5 | `theorem` | [liftOn_ofFractionRing_mk](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/lifton-offractionring-mk--e64dcade755b9df025cdbc46.md) | 119 | `result-track:e64dcade755b9df025cdbc4603528391df26779f9289d45b8bc9d09a409ff9c3` |
| 6 | `theorem` | [liftOn_condition_of_liftOn'_condition](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/lifton-condition-of-lifton-condition--6cff67c1dc458fb0461e7c6e.md) | 125 | `result-track:6cff67c1dc458fb0461e7c6e3b2a3057786857c4e9d93eff6e31513ebb6e0c04` |
| 7 | `theorem` | [mk_eq_div'](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-eq-div--36232b134a865ce05bc28d09.md) | 147 | `result-track:36232b134a865ce05bc28d0960dda96dd4d355c899802aad014aa8151863af3c` |
| 8 | `theorem` | [mk_zero](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-zero--4ee8f94a11291f1245055818.md) | 150 | `result-track:4ee8f94a11291f1245055818dde39d95fe58cd4da9c3c7bffbc9e3cbe2cc0f58` |
| 9 | `theorem` | [mk_coe_def](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-coe-def--eacc0efc08f69df2e98464bc.md) | 153 | `result-track:eacc0efc08f69df2e98464bc7c018dbd7cbd471144e77e5b2cf8014c2780b675` |
| 10 | `theorem` | [mk_def_of_mem](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-def-of-mem--f564192e56ac08a674f70ce3.md) | 157 | `result-track:f564192e56ac08a674f70ce39c6a30ab7c6a9a725601007ef349739cc0ac0e8b` |
| 11 | `theorem` | [mk_def_of_ne](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-def-of-ne--9457f9818f869438d73b671a.md) | 161 | `result-track:9457f9818f869438d73b671a59a37a91030a8d72eb343a6f43b688a6d7ceb55c` |
| 12 | `theorem` | [mk_eq_localization_mk](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-eq-localization-mk--4af337cd15713d4b0634577b.md) | 167 | `result-track:4af337cd15713d4b0634577b2c3458194e4f5a4be1e90a693864ce7dc3c22697` |
| 13 | `theorem` | [mk_one'](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-one--4d1023c66b6a014b4586bfbc.md) | 172 | `result-track:4d1023c66b6a014b4586bfbc214be820f4d0077333e9a3e9fcbc769320eceea1` |
| 14 | `theorem` | [mk_eq_mk](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/mk-eq-mk--eec0524b2010d7fc08ed469e.md) | 176 | `result-track:eec0524b2010d7fc08ed469ee1575acd34821b606a90931e3e2307973d59d7dc` |
| 15 | `theorem` | [liftOn_mk](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/lifton-mk--b19d9799e1a3d944101f8cba.md) | 182 | `result-track:b19d9799e1a3d944101f8cba5f974d7faf84eee484633c2b8cc2628681228a5d` |
| 16 | `theorem` | [liftOn'_mk](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/lifton-mk--9ff73054fb8c477ae3fb5d04.md) | 206 | `result-track:9ff73054fb8c477ae3fb5d045af7f13a70a080b0575a3ea13cd3c2ec622afd2f` |
| 17 | `theorem` | [induction_on'](../../../../mathematics/Algebra/Defs/Variant07a6fc036b1513aecc5b720fda31c97e04f8e2caf8fba1442c4f678839da3937.lean/declarations/induction-on--23fcbeceb2a0797ea0c2fc0b.md) | 218 | `result-track:23fcbeceb2a0797ea0c2fc0b847a4c90b21ebf48d440c38ee3690e6a65ea0bae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
