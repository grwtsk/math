# Verification target: GRWTSK.Algebra.Basic.Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f83081f6c5e71e291407166fa794c4379788923",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f83081f6c5e71e291407166fa794c4379788923`.

Source path: `GRWTSK/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AdicCompletion` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DiscreteValuationRing](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/discretevaluationring--b95add26d0271588d4e15e47.md) | 62 | `declaration-track:b95add26d0271588d4e15e4755474d34f96eb057ab9fb0fc7bf3b4488b13d6a4` |
| 2 | `theorem` | [not_a_field](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/not-a-field--39db5f3959fc34ca74f5244c.md) | 71 | `result-track:39db5f3959fc34ca74f5244c70d78856116414715c53cae4311b99d4b30ce82a` |
| 3 | `theorem` | [not_isField](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/not-isfield--07d10c43f524f4ea6cc1440c.md) | 76 | `result-track:07d10c43f524f4ea6cc1440cac546adc5b2f08bd78ac1c69553106e1f936704b` |
| 4 | `theorem` | [irreducible_of_span_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/irreducible-of-span-eq-maximalideal--44827cac8a5a8df486bfe7d1.md) | 84 | `result-track:44827cac8a5a8df486bfe7d12811f0206836b991d8a132848314525a7e98d72f` |
| 5 | `theorem` | [irreducible_iff_uniformizer](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/irreducible-iff-uniformizer--1835476580032dc36a6fd122.md) | 102 | `result-track:1835476580032dc36a6fd1222fca8dc379de6e545289a8002ac13e15c73717d0` |
| 6 | `theorem` | [_root_.GRWTSK.Algebra.DiscreteValuationRing.Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.Irreducible.maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/root-grwtsk-algebra-discretevaluationring-variant7072aecca7131e64975408a--805435f0548e20e1d31bd63a.md) | 108 | `result-track:805435f0548e20e1d31bd63ac456363193e0932d3642488762b040bf763f8b3a` |
| 7 | `theorem` | [exists_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/exists-irreducible--cf0de2d85311de6b2cbdf5ce.md) | 116 | `result-track:cf0de2d85311de6b2cbdf5ce8291073feeb3517958ce61557d08d4eaef158f19` |
| 8 | `theorem` | [exists_prime](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/exists-prime--2e41235a0d517cc6745c7110.md) | 122 | `result-track:2e41235a0d517cc6745c7110e0235c3612494a8ccd7816e3e340136daefaa9fa` |
| 9 | `theorem` | [iff_pid_with_one_nonzero_prime](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/iff-pid-with-one-nonzero-prime--b74388fca0e5ca5d6df1add7.md) | 127 | `result-track:b74388fca0e5ca5d6df1add718090ab91a1f5756cad8d66f9fb40f1a4dce19a2` |
| 10 | `theorem` | [associated_of_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/associated-of-irreducible--5a04eeea74490e6c358719d8.md) | 157 | `result-track:5a04eeea74490e6c358719d8888c8e3f693ac0ad186b0eba5847ddc49add9d8b` |
| 11 | `def` | [HasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/hasunitmulpowirreduciblefactorization--38045c3eeeff2773dbdffd84.md) | 170 | `declaration-track:38045c3eeeff2773dbdffd843253c697b06afe8863e76cee9f9585b48771994b` |
| 12 | `theorem` | [unique_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/unique-irreducible--b902886334af2fae44ba2a76.md) | 178 | `result-track:b902886334af2fae44ba2a7652cd4e2f75ed2a4538f6cbc9ef914ffbd209971c` |
| 13 | `theorem` | [toUniqueFactorizationMonoid](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/touniquefactorizationmonoid--1424c220ccc478eac8d17065.md) | 207 | `result-track:1424c220ccc478eac8d17065f81c483c90341a82d282d0a26c97c38f21d0b741` |
| 14 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/of-ufd-of-unique-irreducible--9ea2ba91bc0fd592fdd4cada.md) | 236 | `result-track:9ea2ba91bc0fd592fdd4cada38c197da920e17fe886b9e5a1a50da24218ee7e5` |
| 15 | `theorem` | [aux_pid_of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/aux-pid-of-ufd-of-unique-irreducible--208209369e3966cacb925854.md) | 259 | `result-track:208209369e3966cacb9258545d9ac6796ea82e1f323eaafee93fdb7aecd5d4c7` |
| 16 | `theorem` | [of_ufd_of_unique_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/of-ufd-of-unique-irreducible--feed92c5aae3ba7a7c274b11.md) | 295 | `result-track:feed92c5aae3ba7a7c274b1142f01e640bae2a0eec73c78ce9083ff44ef22f3a` |
| 17 | `theorem` | [ofHasUnitMulPowIrreducibleFactorization](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/ofhasunitmulpowirreduciblefactorization--6186feb75591faf75880867e.md) | 319 | `result-track:6186feb75591faf75880867edb43b70b7892692cc3fcf33d7f3342ab76dbdfe7` |
| 18 | `theorem` | [associated_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/associated-pow-irreducible--f9e3299f56bcb73a6b340072.md) | 333 | `result-track:f9e3299f56bcb73a6b3400725503fb6f8e0ac88a448090e8a692aebfc0197c90` |
| 19 | `theorem` | [eq_unit_mul_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/eq-unit-mul-pow-irreducible--b61181f61b06838a0bafebc1.md) | 352 | `result-track:b61181f61b06838a0bafebc15a47433196cdbbf99e61f407a0a39ec2b8053e8c` |
| 20 | `theorem` | [ideal_eq_span_pow_irreducible](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/ideal-eq-span-pow-irreducible--30ae6c90d7fe18bd4bc8b802.md) | 362 | `result-track:30ae6c90d7fe18bd4bc8b802a0935eceb110bdfca8e1c475f0bae50cfeee73e5` |
| 21 | `theorem` | [unit_mul_pow_congr_pow](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/unit-mul-pow-congr-pow--3ba3f7dbc724b676b7d0ed5b.md) | 374 | `result-track:3ba3f7dbc724b676b7d0ed5b7feace2d08a7d9a9cff8f999f0d19fc7cad2b1e1` |
| 22 | `theorem` | [unit_mul_pow_congr_unit](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/unit-mul-pow-congr-unit--b1310eb72fc56d0aaab68300.md) | 390 | `result-track:b1310eb72fc56d0aaab6830002a6fb901c96b4776aa1324b6732f7724524d6a0` |
| 23 | `def` | [addVal](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval--f0455ab318a86bd48fe8988d.md) | 407 | `declaration-track:f0455ab318a86bd48fe8988dfcbe04c3ecf4d56f5bc48de8233a5c55de3a1b37` |
| 24 | `theorem` | [addVal_def](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-def--88822a20524fe72161a75a60.md) | 412 | `result-track:88822a20524fe72161a75a60ffd85f918c0b1a429539063180ded4465f069f69` |
| 25 | `theorem` | [addVal_def'](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-def--ee6e2fea41c20fd3f6afc6f7.md) | 420 | `result-track:ee6e2fea41c20fd3f6afc6f7ae093dc8e87993cd87c2bb22e8f6906355533fd0` |
| 26 | `theorem` | [addVal_zero](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-zero--11fc677e81f238738d361f7a.md) | 426 | `result-track:11fc677e81f238738d361f7a8780e51359e3d198208d1f6b5d678a873e81668a` |
| 27 | `theorem` | [addVal_one](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-one--04417ead1fa6ea2106779b58.md) | 431 | `result-track:04417ead1fa6ea2106779b583539391783e6e586a15088ca8b10ec9f76b13d52` |
| 28 | `theorem` | [addVal_uniformizer](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-uniformizer--bd914619eafdb9907f3905f8.md) | 436 | `result-track:bd914619eafdb9907f3905f8d205835e963ad801da551ae8fea902efe91b17c7` |
| 29 | `theorem` | [addVal_mul](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-mul--d38d4c3577877418daa798a6.md) | 442 | `result-track:d38d4c3577877418daa798a6a0e414681349df65a35fd9cdbb8b198e9917e23f` |
| 30 | `theorem` | [addVal_pow](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-pow--a2daae6af64fe0ad90b8030c.md) | 447 | `result-track:a2daae6af64fe0ad90b8030c4554cf3e1da6259e34d244d445e701b151152201` |
| 31 | `theorem` | [_root_.GRWTSK.Algebra.DiscreteValuationRing.Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.Irreducible.addVal_pow](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/root-grwtsk-algebra-discretevaluationring-variant7072aecca7131e64975408a--27f1cd76f191a00c0f28ca0c.md) | 451 | `result-track:27f1cd76f191a00c0f28ca0c63cb3582e8adc42d8d5172ff95e26cf258302fd8` |
| 32 | `theorem` | [addVal_eq_top_iff](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-eq-top-iff--0d78a30290ac6b7697b7eb89.md) | 456 | `result-track:0d78a30290ac6b7697b7eb898ec6968e5c0048d3bc093ddd9e0cb16275020192` |
| 33 | `theorem` | [addVal_le_iff_dvd](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-le-iff-dvd--92b374cbd4c34011d4c1b744.md) | 469 | `result-track:92b374cbd4c34011d4c1b74415c6489fab4ce4d4a330b0cfa0f8a8cc20d30d3a` |
| 34 | `theorem` | [addVal_add](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/addval-add--5ae2ae15b24c2ce92b4032fa.md) | 483 | `result-track:5ae2ae15b24c2ce92b4032fa8d22b8897c90e5bd967df79fdc5d294d187641ed` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant852949955e060d7991212625a4fc630b5934dd571b3077be59f3f2b0b708e719.lean/declarations/instance--f5d58e09c2467820b5c27129.md) | 489 | `declaration-track:f5d58e09c2467820b5c271294a2ca12183eea77a51feab61146145f19d36b7d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
