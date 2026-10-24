# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Phase.Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "891c9e6cac2ebc2ea9d2c7d4505ef269b3592632",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `891c9e6cac2ebc2ea9d2c7d4505ef269b3592632`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Residue` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Phase3](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3--fbe8653374c2ddb843828aff.md) | 9 | `declaration-track:fbe8653374c2ddb843828affe1bd3f50ad87f23ce5c7cb11d272b4ca6b752a01` |
| 2 | `def` | [Phase3.mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-mul--48e249ed1aed874e27c62167.md) | 14 | `declaration-track:48e249ed1aed874e27c62167a45ef38b4344b4cdf7236864e43e6d7d1dbcfc8b` |
| 3 | `def` | [Phase3.act](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-act--39c9b1f42086bc59437cbe50.md) | 20 | `declaration-track:39c9b1f42086bc59437cbe501f28e3c756f5859b42da14ae967fcd33d82a3dbc` |
| 4 | `theorem` | [phase3_mul_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-mul-assoc--46d2fa38b3a7210dc6db922a.md) | 25 | `result-track:46d2fa38b3a7210dc6db922aa7851f19600713438f48b707afc54eaa4ac8040c` |
| 5 | `theorem` | [phase3_identity_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-identity-left--a857ce37e71e2e50a16e431b.md) | 36 | `result-track:a857ce37e71e2e50a16e431bbbb94e8f58273e000d77a62e7f789d386a1ca096` |
| 6 | `theorem` | [phase3_identity_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-identity-right--ced8ad839cb97db1a2078c22.md) | 42 | `result-track:ced8ad839cb97db1a2078c22d4263d8d0b98f68d23ee382253227d042807ef34` |
| 7 | `theorem` | [phase3_reflect_square](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-reflect-square--a12975f4b24d1b883d508388.md) | 48 | `result-track:a12975f4b24d1b883d508388078c32e5e0a3f426cb5dcc35f257f61be9c4dfd6` |
| 8 | `theorem` | [phase3_action_preserves_safe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-action-preserves-safe--1fbafdb8fb4b207f917271da.md) | 53 | `result-track:1fbafdb8fb4b207f917271dac651ba6c4e5a15b420cffc9d294cb70758e7220a` |
| 9 | `theorem` | [phase3_mul_act](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-mul-act--1ca43286f7116e9943d70fa2.md) | 65 | `result-track:1ca43286f7116e9943d70fa2145fa0dd99896ffd7c5cd7c7919424369da30f5c` |
| 10 | `theorem` | [phase3_reflect_act](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-reflect-act--a963f97579c2081091e8c7dc.md) | 75 | `result-track:a963f97579c2081091e8c7dc20121600b2633bf0000092fcac7ad967f545d94e` |
| 11 | `theorem` | [phase3_act_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-act-zero--ee433304403f4984bca4c7df.md) | 82 | `result-track:ee433304403f4984bca4c7dffd742683fdd3880afb6482d59311175f1d02e9a2` |
| 12 | `theorem` | [phase3_safe_action_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Phase/Variant7cfb88aa4d3c35a00b0d629f7c779ec45fe9c0541ac085d6aa35c28d9e52822a.lean/declarations/phase3-safe-action-ne-zero--37cd432681135f5304ba18a6.md) | 87 | `result-track:37cd432681135f5304ba18a616c9c63208a4831afdb184261a60f37f827a224c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
