# Verification target: GRWTSK.Algebra.ReduceModChar.Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "069ecae606bea5cefcd387aff9a1be100f1f8393",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `069ecae606bea5cefcd387aff9a1be100f1f8393`.

Source path: `GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.DivMod` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CharP.isInt_of_mod](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/charp-isint-of-mod--5d6493db209ff0cae45ed7b3.md) | 62 | `result-track:5d6493db209ff0cae45ed7b3f9a37a2d4674db609c014ff807ffac1fb5eade18` |
| 2 | `lemma` | [CharP.isNat_pow](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/charp-isnat-pow--c249a23ed2257658332bb9cf.md) | 66 | `result-track:c249a23ed2257658332bb9cfe9761e70dfea51c9711ea268a4f3580638860372` |
| 3 | `def` | [normBareNumeral](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/normbarenumeral--2bdbaf29f40fcf68b4b2d65b.md) | 75 | `declaration-track:2bdbaf29f40fcf68b4b2d65b3b73661def6b93d9c3d0ccf245d0d1511645d324` |
| 4 | `def` | [normPow](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/normpow--e8419c0d5da103426fdeaccd.md) | 87 | `declaration-track:e8419c0d5da103426fdeaccdc642f1c5082ed4ceb6c360da8689cd96bc6a02c3` |
| 5 | `def` | [normIntNumeral'](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/normintnumeral--747181eb9e84c16986c405b5.md) | 101 | `declaration-track:747181eb9e84c16986c405b5975a155c88e196abc4c5b0a9068b6c9841c656f7` |
| 6 | `lemma` | [CharP.intCast_eq_mod](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/charp-intcast-eq-mod--fa48ccc3a822fd27590a36af.md) | 107 | `result-track:fa48ccc3a822fd27590a36afba7c7a6555df137f0b0532993f8058f1229c1589` |
| 7 | `def` | [normIntNumeral](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/normintnumeral--ca07739acbb5f760cb6cfec6.md) | 113 | `declaration-track:ca07739acbb5f760cb6cfec60a12a021eda5494d787adebe6ac51b2c7d305348` |
| 8 | `lemma` | [CharP.neg_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/charp-neg-eq-sub-one-mul--f6180138e4f0a33aee5f5d0d.md) | 118 | `result-track:f6180138e4f0a33aee5f5d0d5f15a6453ab1a92413f949ea3e150153312e31e1` |
| 9 | `def` | [normNeg](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/normneg--652f5044185f045f442b1f4d.md) | 131 | `declaration-track:652f5044185f045f442b1f4de58b5e2498162579233915859afc9329db58ff45` |
| 10 | `lemma` | [CharP.neg_mul_eq_sub_one_mul](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/charp-neg-mul-eq-sub-one-mul--b232c59453a71a7f8fb245dd.md) | 147 | `result-track:b232c59453a71a7f8fb245dd9e63e1ee1b11f7f862de00ad01a9d13fbc4e733a` |
| 11 | `def` | [normNegCoeffMul](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/normnegcoeffmul--1b97ddb7056180cdf414a030.md) | 156 | `declaration-track:1b97ddb7056180cdf414a0307f8158a4967a123a9dc299092e1c5470522a82f9` |
| 12 | `inductive` | [TypeToCharPResult](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/typetocharpresult--151ac5555b0dccc2983bfcce.md) | 176 | `declaration-track:151ac5555b0dccc2983bfcce69d7e3e8e9be6be120e5312436402ac2a9493829` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/instance--bdf46c3b0d4c3212f7808d6f.md) | 180 | `declaration-track:bdf46c3b0d4c3212f7808d6f6016ebe90b32073ffdac9a65d92739979beac3dd` |
| 14 | `def` | [typeToCharP](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/typetocharp--8023196e10ecbc17b5db27b6.md) | 187 | `declaration-track:8023196e10ecbc17b5db27b6d0b74ee9fa8d6ded675988da1c8a0a7cd4c01485` |
| 15 | `def` | [matchAndNorm](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/matchandnorm--d4d4be36e78ff98a3ede94e2.md) | 220 | `declaration-track:d4d4be36e78ff98a3ede94e2589323a8c8fac95d218bd44cead329763479c872` |
| 16 | `def` | [derive](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/derive--bcbb2235cddb38899c0757dd.md) | 250 | `declaration-track:bcbb2235cddb38899c0757ddb6dad4a32aec13d932cbd7bb5b684bf776289b56` |
| 17 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/syntax--d4b83a0bee1f804e5a83916e.md) | 300 | `declaration-track:d4b83a0bee1f804e5a83916e85f5cf806d43fa73efa4738f37a6b60f93e590b5` |
| 18 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/syntax--9afb789da69ccdbe54c9610a.md) | 302 | `declaration-track:9afb789da69ccdbe54c9610a532deba1b3134773a4ee67118915c480cf27d35c` |
| 19 | `elab_rules` | [(anonymous)](../../../../mathematics/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/declarations/elab-rules--a63f066127cdf899b735d11d.md) | 305 | `declaration-track:a63f066127cdf899b735d11da9c972cde3f36c3557d1f2a41daf80040258b5d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
