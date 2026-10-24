# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcfa550bef879b80985f3c4becd0993666b4b30e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcfa550bef879b80985f3c4becd0993666b4b30e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.NeZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommSemigroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/instcommsemigroup--879b94733e2ee6631e9c3c52.md) | 46 | `declaration-track:879b94733e2ee6631e9c3c5299a317a3ae6dd98068ae10a4c1b169938eeb907b` |
| 2 | `theorem` | [left_distrib_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/left-distrib-aux--76e76a46ddf17d77f0700d33.md) | 57 | `result-track:76e76a46ddf17d77f0700d3355a7eb548537fdd79f50e8c089ad3ada9330dcef` |
| 3 | `instance` | [instDistrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/instdistrib--9e03056ac8b2713e7ee9b72c.md) | 66 | `declaration-track:9e03056ac8b2713e7ee9b72ce8306d68747100158f6e583d3a429666e810cd3c` |
| 4 | `instance` | [instCommRing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/instcommring--12be15b8a3f1e9e9ff838949.md) | 74 | `declaration-track:12be15b8a3f1e9e9ff83894998c0e7ac606783aa9cbe06284d17df2a269eb59d` |
| 5 | `instance` | [instHasDistribNeg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/insthasdistribneg--0f8e058683e4c7f73cb4f55f.md) | 85 | `declaration-track:0f8e058683e4c7f73cb4f55fb5ecf1787918a540ccba32fce2722988926e3c81` |
| 6 | `def` | [ZMod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/zmod--00b38dac6bc98679a70ab935.md) | 94 | `declaration-track:00b38dac6bc98679a70ab935e75c8d25538c837f34139c337b289f7a75ee6feb` |
| 7 | `instance` | [ZMod.decidableEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/zmod-decidableeq--833e09eac111ad9b18332be6.md) | 99 | `declaration-track:833e09eac111ad9b18332be6cd403538f4ec9f31a7d3b6ad4441403a92b09a99` |
| 8 | `instance` | [ZMod.repr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/zmod-repr--b80a868000628909f19322ef.md) | 104 | `declaration-track:b80a868000628909f19322ef457ccbffa5a1b6858bad5e6e640b1ac4d18faed0` |
| 9 | `instance` | [fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/fintype--ed3f43557d0b05c7db42e765.md) | 111 | `declaration-track:ed3f43557d0b05c7db42e7658dfdaeaa957ebcb0f8d2620ea7caa1e74dbf129e` |
| 10 | `instance` | [infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/infinite--f36e391d89726a36af20e45e.md) | 116 | `declaration-track:f36e391d89726a36af20e45e0026760d9d852f981db53b854e78815a9f3b877a` |
| 11 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/card--89f1ab192bdf0b21c1db3689.md) | 121 | `result-track:89f1ab192bdf0b21c1db3689acbb7cfc8a6c0a0a8ea82f53ce890d7634431575` |
| 12 | `instance` | [commRing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/commring--39e1c95954c344894702b517.md) | 130 | `declaration-track:39e1c95954c344894702b5174ca4be5c374ea7241ed0abc48b8e452a6700a037` |
| 13 | `instance` | [inhabited](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/declarations/inhabited--be9b939dbe06884150eea677.md) | 192 | `declaration-track:be9b939dbe06884150eea6772c20816d76860d46f4092ea6b7dbb52e504c6e75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
