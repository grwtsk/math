# Verification target: GRWTSK.Algebra.LinearAlgebra.Rat.Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91c4ff6d3562e32b1fa8b08cec7158859ff64fe9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91c4ff6d3562e32b1fa8b08cec7158859ff64fe9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Rat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_nnratCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/map-nnratcast-smul--bbbd0a42dcb9f70e6989d4bd.md) | 26 | `result-track:bbbd0a42dcb9f70e6989d4bd9c89e293644a0e9929f7a36d04d7d64dfdca039c` |
| 2 | `theorem` | [map_ratCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/map-ratcast-smul--6342718ee8f2b8473ca5cf77.md) | 33 | `result-track:6342718ee8f2b8473ca5cf779dcc78695a2d7dcab3a39a5452bb4ad1cdc14e06` |
| 3 | `theorem` | [map_nnrat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/map-nnrat-smul--a1a09a9be9a6a4a12d1de3cc.md) | 40 | `result-track:a1a09a9be9a6a4a12d1de3cce5f267bad5e7a4c5c8d22a4f56449ae222281a15` |
| 4 | `theorem` | [map_rat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/map-rat-smul--e0b702ca82dbe6bb933e5fb9.md) | 46 | `result-track:e0b702ca82dbe6bb933e5fb971df1009a63c5649b330974e9cf99921b700332d` |
| 5 | `instance` | [subsingleton_nnrat_module](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/subsingleton-nnrat-module--f8a8bdb3e95f07a6a0c59141.md) | 53 | `declaration-track:f8a8bdb3e95f07a6a0c59141d3928b4bf753b4f454add2e924e48d426c9b9635` |
| 6 | `instance` | [subsingleton_rat_module](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/subsingleton-rat-module--832c59239100864e5036051d.md) | 58 | `declaration-track:832c59239100864e5036051d045c52c14480d8ef44a114575a1ee9c9bf7efc4f` |
| 7 | `theorem` | [nnratCast_smul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/nnratcast-smul-eq--42dd34f6444f14de8863dec7.md) | 64 | `result-track:42dd34f6444f14de8863dec7d48ad8b5aa97da0701cf63584e8c1e402378ab3c` |
| 8 | `theorem` | [ratCast_smul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/ratcast-smul-eq--5551c6b2aff103a9890689c5.md) | 70 | `result-track:5551c6b2aff103a9890689c541539402119647c9ed38244867763d456accdf70` |
| 9 | `instance` | [IsScalarTower.nnrat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/isscalartower-nnrat--e174e908ffc88fc601d445d9.md) | 74 | `declaration-track:e174e908ffc88fc601d445d99c3b7d6f05a4a8eb32700ffd50af992afbc1161f` |
| 10 | `instance` | [IsScalarTower.rat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/isscalartower-rat--4e4699b12927d64b312f25a6.md) | 78 | `declaration-track:4e4699b12927d64b312f25a6ddbc29d81e2a5874ca929011ad1ac1edf8538fd6` |
| 11 | `instance` | [SMulCommClass.nnrat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/smulcommclass-nnrat--eefeba9300f30c078dd01066.md) | 85 | `declaration-track:eefeba9300f30c078dd0106605e8ce95e3355bdfa9c5e28c7fac92b6699b4d78` |
| 12 | `instance` | [SMulCommClass.rat](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/smulcommclass-rat--025c5da412c01d3952de7b63.md) | 89 | `declaration-track:025c5da412c01d3952de7b63ad7108fab35e71c4ae1065ca0d73f656f0875440` |
| 13 | `instance` | [SMulCommClass.nnrat'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/smulcommclass-nnrat--f0c3b4a9ac5531938241fe75.md) | 93 | `declaration-track:f0c3b4a9ac5531938241fe758ffde89cfcb8b7beb1f312daa9fce5363a49731b` |
| 14 | `instance` | [SMulCommClass.rat'](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/smulcommclass-rat--bb800b24d032351036a45fd4.md) | 97 | `declaration-track:bb800b24d032351036a45fd46c1e9483fc0d27ea95d66a2a46539d574927b41f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/instance--a5f7f4096e5fcdceed70a36d.md) | 104 | `declaration-track:a5f7f4096e5fcdceed70a36d6f9632f1cc29fc176f253b87c0f0b67d6694c105` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/declarations/instance--62470c9a799c069204eb4746.md) | 109 | `declaration-track:62470c9a799c069204eb4746369d6dc4b9f10bc633f460a10fb25ae2d03dafa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
