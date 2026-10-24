# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b9b613e9674f6f3d660e565df263556435baa7c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b9b613e9674f6f3d660e565df263556435baa7c`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/mulaction--720bc8f469023227783f06ed.md) | 33 | `declaration-track:720bc8f469023227783f06ed9ca3a5a457d69b4e7b39ce74339e682ca4739437` |
| 2 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/distribmulaction--191565d0b5f28f557e752cd5.md) | 37 | `declaration-track:191565d0b5f28f557e752cd5f743282a7166eacae349abbb20cd2cbef7a717ef` |
| 3 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/muldistribmulaction--f59794ec146553e13b8cd1d6.md) | 42 | `declaration-track:f59794ec146553e13b8cd1d6202853da6e2ce02b080eb8f6011ec07fd7cdec6c` |
| 4 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/isscalartower--f860d98c6062e15833ece5b0.md) | 48 | `declaration-track:f860d98c6062e15833ece5b02610378806acb31e2be4bf5038bb910cede6da32` |
| 5 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/smulcommclass--d202da728cfeb0fe01e4c40a.md) | 53 | `declaration-track:d202da728cfeb0fe01e4c40a85057a4b0a25e740085f26101c87a5128daa588b` |
| 6 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/iscentralscalar--ec4ebb788d74db2da35b9a2b.md) | 57 | `declaration-track:ec4ebb788d74db2da35b9a2b3cb97bc5df2889e3e4ce4c39a036a8c420d03f8c` |
| 7 | `theorem` | [op_smul_eq_op_smul_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/op-smul-eq-op-smul-op--55fdf23e978ed65534a7495f.md) | 61 | `result-track:55fdf23e978ed65534a7495fdcdadeb4ca1704199c4c3c8f580a83f9d7c0529c` |
| 8 | `theorem` | [unop_smul_eq_unop_smul_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/unop-smul-eq-unop-smul-unop--1700dadf7b605db3977cd8d5.md) | 66 | `result-track:1700dadf7b605db3977cd8d50b9a32ef64ba318e381ac2eabdccc9f1ba1db6c9` |
| 9 | `instance` | [Mul.toHasOppositeSMul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/mul-tohasoppositesmul--346e39a6453c5641c2917b30.md) | 89 | `declaration-track:346e39a6453c5641c2917b30d84b130cd566988c04c01a9c5faa7d294929908c` |
| 10 | `theorem` | [op_smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/op-smul-eq-mul--aefed7ade38cbe64f7cb528b.md) | 95 | `result-track:aefed7ade38cbe64f7cb528b1abc1716ce8ea8a315869d8059449dcbc86c6e65` |
| 11 | `theorem` | [MulOpposite.smul_eq_mul_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/mulopposite-smul-eq-mul-unop--a5dad7a50d28d741dfb3d919.md) | 101 | `result-track:a5dad7a50d28d741dfb3d919a7409e3f480b7a5155d9854dc98a621eebae14a6` |
| 12 | `instance` | [MulAction.OppositeRegular.isPretransitive](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/mulaction-oppositeregular-ispretransitive--edde6038e2296e432e82140b.md) | 108 | `declaration-track:edde6038e2296e432e82140b312766b25d1a02983e801f140c144c8ea44967ba` |
| 13 | `instance` | [Semigroup.opposite_smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/semigroup-opposite-smulcommclass--20f9ce73de4cda7c92f11a88.md) | 115 | `declaration-track:20f9ce73de4cda7c92f11a882b9f2c5cb91ed5a8ed75212f924afe4593dcc433` |
| 14 | `instance` | [Semigroup.opposite_smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/semigroup-opposite-smulcommclass--cd82b72a600e826a837192e6.md) | 121 | `declaration-track:cd82b72a600e826a837192e63f815e1a11dfe6197261437111df2aecd380ba51` |
| 15 | `instance` | [CommSemigroup.isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/commsemigroup-iscentralscalar--a8568e336a422274a68f5849.md) | 127 | `declaration-track:a8568e336a422274a68f58493b19d4c34d84c0eddb9566eef741be2396f8d7f0` |
| 16 | `instance` | [Monoid.toOppositeMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/monoid-tooppositemulaction--eedfea97891d472368abf140.md) | 134 | `declaration-track:eedfea97891d472368abf1408d21f2c5a213a5b8f72a3c7f87f384e8410fc32f` |
| 17 | `instance` | [IsScalarTower.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/isscalartower-opposite-mid--acfa8aa8f2ede70406f17d5a.md) | 143 | `declaration-track:acfa8aa8f2ede70406f17d5a732335fb7b4fc479ce1f835d291ff9fe76c954f7` |
| 18 | `instance` | [SMulCommClass.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/smulcommclass-opposite-mid--6b7b598524d6accb7d8ecb7a.md) | 150 | `declaration-track:6b7b598524d6accb7d8ecb7a5ad08c74d91b0e75f17d22ad042f194d6c915c09` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/example--261b828cb6cded1d84248390.md) | 160 | `declaration-track:261b828cb6cded1d84248390666e7fb5a0ddb4db4ef8466e0e581d64fe2d91f3` |
| 20 | `instance` | [LeftCancelMonoid.toFaithfulSMul_opposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/leftcancelmonoid-tofaithfulsmul-opposite--48f4123d2be40edc3480da67.md) | 165 | `declaration-track:48f4123d2be40edc3480da672e10124d397406d20d3ae26e5950cecb06343453` |
| 21 | `instance` | [CancelMonoidWithZero.toFaithfulSMul_opposite](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variantc4d4474d4d16aea7b0d510e739d5f4cb7fb217513d8180775ca8b9ef2963e304.lean/declarations/cancelmonoidwithzero-tofaithfulsmul-opposite--c164b24c193fd1baf68cb799.md) | 172 | `declaration-track:c164b24c193fd1baf68cb7995d2e5a21a74574a3f9b8fed491c38ab3dbe6233b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
