# Verification target: GRWTSK.Algebra.Perfection.Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9f86788f89f3faaff590ec0fb4a41110e75ac4f",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/index.md) · [Full source](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9f86788f89f3faaff590ec0fb4a41110e75ac4f`.

Source path: `GRWTSK/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Subring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Monoid.perfection](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/monoid-perfection--da43a86de3b52cc54d4803ec.md) | 46 | `declaration-track:da43a86de3b52cc54d4803ecb76fc98e561ef7bfbd55c0df66fa0955c56be46e` |
| 2 | `def` | [Ring.perfectionSubsemiring](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/ring-perfectionsubsemiring--7ecd6996c0ba13c14e1688b1.md) | 55 | `declaration-track:7ecd6996c0ba13c14e1688b1a7cdcef2736c8824ef01de435efc257cbe4cf844` |
| 3 | `def` | [Ring.perfectionSubring](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/ring-perfectionsubring--16097344b885daa2be5d12a0.md) | 65 | `declaration-track:16097344b885daa2be5d12a05a7b7099a28c0edc41be90f0241ba981557c8412` |
| 4 | `def` | [Ring.Perfection](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/ring-perfection--682293412b25661be69db387.md) | 74 | `declaration-track:682293412b25661be69db3879131fc9a15fa63afd59e42d4c1aa6241adc4d4ff` |
| 5 | `instance` | [commSemiring](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/commsemiring--480306730792cf7cd9941ab9.md) | 82 | `declaration-track:480306730792cf7cd9941ab935235e2c38cff1c9e5eb389836087ee5a6d97e6e` |
| 6 | `instance` | [charP](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/charp--b1d841da11af86068c8a5513.md) | 86 | `declaration-track:b1d841da11af86068c8a5513ca4150be88d0af3538445413b3aae3a6c044b4a0` |
| 7 | `instance` | [ring](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/ring--af9911f4c044aa72f28f2d02.md) | 90 | `declaration-track:af9911f4c044aa72f28f2d029e43c46c76f1de9b1cf99dccd1c874d9347567de` |
| 8 | `instance` | [commRing](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/commring--1959df7e2dfc9a48e069d960.md) | 94 | `declaration-track:1959df7e2dfc9a48e069d9606af0c8b5725b8f5caaa03cee8f36c2b181b58d6c` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/instance--22d485ffda4d7451e7c7936f.md) | 98 | `declaration-track:22d485ffda4d7451e7c7936fb8d5edf9fe2cccb6d2b7792d1bb48216eedb8e4d` |
| 10 | `def` | [coeff](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff--0ff182ca75a5ea7cce2a48ba.md) | 101 | `declaration-track:0ff182ca75a5ea7cce2a48ba5c3da892bf1fbab0f7be977eb3291b60227e8082` |
| 11 | `theorem` | [ext](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/ext--c8deab6a7b55bc657aacf767.md) | 112 | `result-track:c8deab6a7b55bc657aacf767db4238f5c37db2031f4e8d3aae9fabcaf205b5f8` |
| 12 | `def` | [pthRoot](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/pthroot--42fd44218e17b07c28c259d3.md) | 119 | `declaration-track:42fd44218e17b07c28c259d39e0e25543214ccedefa6e79f4cd28092a129664c` |
| 13 | `theorem` | [coeff_mk](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-mk--905977b33a3ade664c870ef9.md) | 130 | `result-track:905977b33a3ade664c870ef9f4483d6b68056b27c763d8b43916a4ecc6ebe452` |
| 14 | `theorem` | [coeff_pthRoot](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-pthroot--fca4b0167e8af556cddf5c05.md) | 133 | `result-track:fca4b0167e8af556cddf5c050bb95d73246ca781ed50195710378471ed3d7191` |
| 15 | `theorem` | [coeff_pow_p](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-pow-p--9c4d004dad8d9c07c6a5bbba.md) | 137 | `result-track:9c4d004dad8d9c07c6a5bbbafe8f3be2e3a2f33b43a709d98942166fa3d83139` |
| 16 | `theorem` | [coeff_pow_p'](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-pow-p--ed27bf701e7785c638db2f7a.md) | 141 | `result-track:ed27bf701e7785c638db2f7ae8041672d63d1cd89b040563016d546c1f0c05d2` |
| 17 | `theorem` | [coeff_frobenius](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-frobenius--7443213da9bf1a666473d13e.md) | 145 | `result-track:7443213da9bf1a666473d13e0798da984fe24c837f518dd89e5c316343fa36d5` |
| 18 | `theorem` | [coeff_iterate_frobenius](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-iterate-frobenius--ca27cde547585080d790ecaf.md) | 150 | `result-track:ca27cde547585080d790ecaf76b9ecdc69bc7f7cf76b09f0030b9571955fb9d8` |
| 19 | `theorem` | [coeff_iterate_frobenius'](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-iterate-frobenius--7af636adccae593567ff5186.md) | 155 | `result-track:7af636adccae593567ff51865e1543bd587d871fafe70184d67a597b24efabf4` |
| 20 | `theorem` | [pthRoot_frobenius](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/pthroot-frobenius--cfa409cb46caa63d0342c33d.md) | 160 | `result-track:cfa409cb46caa63d0342c33d811393ecb5d405cdf62ed72da53df6118fc324ff` |
| 21 | `theorem` | [frobenius_pthRoot](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/frobenius-pthroot--b4f863d204b67293968dc46f.md) | 165 | `result-track:b4f863d204b67293968dc46f5dfc083233f06c5bbee4d3ef403077ca135a24ab` |
| 22 | `theorem` | [coeff_add_ne_zero](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-add-ne-zero--72a3a7516aecfee91ed79b52.md) | 172 | `result-track:72a3a7516aecfee91ed79b524ba2efe8ec19dfb7e20c5c0d8fe67b2afc08ad48` |
| 23 | `theorem` | [coeff_ne_zero_of_le](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-ne-zero-of-le--0793f2d69851b99d5d9718f8.md) | 177 | `result-track:0793f2d69851b99d5d9718f80b2958fcaeab515166bc73fbc764c119698a3980` |
| 24 | `instance` | [perfectRing](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/perfectring--5c0a74f1cc33abbd653ed52f.md) | 185 | `declaration-track:5c0a74f1cc33abbd653ed52fbbe6da918b20b74a364c1362f5000a6f5d185aa0` |
| 25 | `def` | [lift](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/lift--df3a7ebbc628e010552f2dd0.md) | 195 | `declaration-track:df3a7ebbc628e010552f2dd0023abcf4166d230693bd2a85d66333b1988dc398` |
| 26 | `theorem` | [hom_ext](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/hom-ext--2dc323c588bc32de41235ea7.md) | 213 | `result-track:2dc323c588bc32de41235ea77ae6683007904e0ad331f0598689a490c153b0f8` |
| 27 | `def` | [map](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/map--adde49457aa7e3106af2dfe8.md) | 223 | `declaration-track:adde49457aa7e3106af2dfe89d490b768b2335c1cabf169c71f70a9e5f73e8cb` |
| 28 | `theorem` | [coeff_map](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-map--17a2feb8be3c1cb2e1368dbf.md) | 231 | `result-track:17a2feb8be3c1cb2e1368dbfc1c88b9510f3bfb16fca1bc5252b587c7a9f67e5` |
| 29 | `structure` | [PerfectionMap](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/perfectionmap--03b9e61487c34bfb290b6767.md) | 240 | `declaration-track:03b9e61487c34bfb290b676761818d3fc6a0b012d52d516446f0daba9c24b895` |
| 30 | `theorem` | [mk'](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/mk--4173fbcf8eca56e30db14a39.md) | 258 | `result-track:4173fbcf8eca56e30db14a39ca64ec26353dad09eabca67820d88ed20b918ff8` |
| 31 | `theorem` | [of](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/of--b00dfca1cdc2fad4b2a3e87f.md) | 274 | `result-track:b00dfca1cdc2fad4b2a3e87f982c3fa98de51db8c8e71261a263aec2acf2d5bd` |
| 32 | `theorem` | [id](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/id--675096473011397f8fdc3f4e.md) | 279 | `result-track:675096473011397f8fdc3f4e3f3181e8673699bd4f078c570d3479e02227f713` |
| 33 | `def` | [equiv](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/equiv--1746d030fceef52c2db15d6a.md) | 291 | `declaration-track:1746d030fceef52c2db15d6abb95c2722943cbf5b532cdd234ce3b5dab29bd3c` |
| 34 | `theorem` | [equiv_apply](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/equiv-apply--e71547329a0ddd5ad6cf5cd2.md) | 298 | `result-track:e71547329a0ddd5ad6cf5cd23072b0cf0c02e383191cc44e1779bff620572e15` |
| 35 | `theorem` | [comp_equiv](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/comp-equiv--5450d9858cc78eaf5679db19.md) | 302 | `result-track:5450d9858cc78eaf5679db194e4756b3574e64b5977f159a5c45d1c84fb766a7` |
| 36 | `theorem` | [comp_equiv'](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/comp-equiv--e23666075312f634a4aaaecb.md) | 306 | `result-track:e23666075312f634a4aaaecbede3c501c20cd273268075caed4313d08ad36b2d` |
| 37 | `theorem` | [comp_symm_equiv](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/comp-symm-equiv--96646625954888b800fb98b2.md) | 311 | `result-track:96646625954888b800fb98b2d787bc1bff906703cde071d24fac9340d6671bd8` |
| 38 | `theorem` | [comp_symm_equiv'](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/comp-symm-equiv--b0e38cece77e22871ac631e8.md) | 316 | `result-track:b0e38cece77e22871ac631e8d38a730540047506e03f4a01532b3ea7e7d39096` |
| 39 | `def` | [lift](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/lift--d7a149f2cc5f910b2f2049e3.md) | 327 | `declaration-track:d7a149f2cc5f910b2f2049e3962d81d74f4faf5575855e7006526e4c143fefee` |
| 40 | `theorem` | [hom_ext](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/hom-ext--b2df2b3c8044a97e1348a339.md) | 343 | `result-track:b2df2b3c8044a97e1348a33900fc5622a090310581030a94eeae639b4618efe7` |
| 41 | `def` | [map](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/map--278024ad129f2077348d0313.md) | 357 | `declaration-track:278024ad129f2077348d0313c41e722d8b87c47d35edba2f7b0b632b72026427` |
| 42 | `theorem` | [comp_map](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/comp-map--ec3c88f5fe3f040b61b777de.md) | 362 | `result-track:ec3c88f5fe3f040b61b777de280773a85eac2fc5542b086a37cd0d0399af8ce2` |
| 43 | `theorem` | [map_map](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/map-map--7c0364851ed04627e44f2d44.md) | 367 | `result-track:7c0364851ed04627e44f2d44e38368f074b501bfd90d38f38cd0ec39534c0f09` |
| 44 | `theorem` | [map_eq_map](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/map-eq-map--132a7a0d2cb0ee87993139c8.md) | 372 | `result-track:132a7a0d2cb0ee87993139c852344da7a66f3fa298e374af46084ec91d1a1635` |
| 45 | `def` | [ModP](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/modp--a86e69761ab42862dac056ff.md) | 389 | `declaration-track:a86e69761ab42862dac056ff032f157e868937735317d93e568fff6fe9fa01a6` |
| 46 | `instance` | [commRing](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/commring--c609029160d8e6804c139ad6.md) | 398 | `declaration-track:c609029160d8e6804c139ad6c100e2fb421815267b731dc703a4b0a08a2775bd` |
| 47 | `instance` | [charP](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/charp--6c1fe57e15caacffa2584435.md) | 401 | `declaration-track:6c1fe57e15caacffa2584435254cc929a5d450bd6230187e1dfdfeb93176f0e1` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/instance--ef5a4d23b178863f80c96579.md) | 404 | `declaration-track:ef5a4d23b178863f80c96579fa4f6bd91b5bf11f5b6b1bbaf03db9bd63d67693` |
| 49 | `def` | [preVal](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/preval--0c6e085dd03f7a2a9b097f47.md) | 413 | `declaration-track:0c6e085dd03f7a2a9b097f4770f8482da636f394bb5c46b3d4ba59744978bc2d` |
| 50 | `theorem` | [preVal_mk](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/preval-mk--0f065f8ee1d4adb2f1371ea8.md) | 419 | `result-track:0f065f8ee1d4adb2f1371ea8602141a8bc09e8a7d5a176f996cbd333737d14d7` |
| 51 | `theorem` | [preVal_zero](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/preval-zero--f83c3a9e1b6f5388addc5aef.md) | 429 | `result-track:f83c3a9e1b6f5388addc5aeff38688ef264f321855afb636297b9aa3d8af2c2a` |
| 52 | `theorem` | [preVal_mul](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/preval-mul--b8ab65b319e372011aaf35fb.md) | 433 | `result-track:b8ab65b319e372011aaf35fbb37abcb58bad7751180d04de408d753d22a252cf` |
| 53 | `theorem` | [preVal_add](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/preval-add--8b5eb5a0967e06d4e8bd0d26.md) | 443 | `result-track:8b5eb5a0967e06d4e8bd0d264bea2f72ab3d9a556069bd86b31759f430f4ff96` |
| 54 | `theorem` | [v_p_lt_preVal](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/v-p-lt-preval--f681ba7bd533e6ab66b5046b.md) | 457 | `result-track:f681ba7bd533e6ab66b5046b21f7cda69a09e446582bbbc0956f417fe8aa912b` |
| 55 | `theorem` | [preVal_eq_zero](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/preval-eq-zero--75d2b1da4b67a04cce8a3d9e.md) | 465 | `result-track:75d2b1da4b67a04cce8a3d9e8c08fc3038124038402cf1689197777403385034` |
| 56 | `theorem` | [v_p_lt_val](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/v-p-lt-val--a726aba7bd2b6cd494fcfd8a.md) | 475 | `result-track:a726aba7bd2b6cd494fcfd8ab67a5bca11c6cf57a84ebf6b5c3dd193a6fd7020` |
| 57 | `theorem` | [mul_ne_zero_of_pow_p_ne_zero](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/mul-ne-zero-of-pow-p-ne-zero--1bebb2eb1740320ea578d7ef.md) | 485 | `result-track:1bebb2eb1740320ea578d7ef95de01bc55d75356b291a977b7c13d47f31a69a6` |
| 58 | `def` | [PreTilt](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/pretilt--78c6a62adc9ea0df9bebb32d.md) | 510 | `declaration-track:78c6a62adc9ea0df9bebb32d769faa53b10863e4194cf56e0fa2aa574786eaf1` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/instance--fe8c1002a9eac19ecc18eb81.md) | 516 | `declaration-track:fe8c1002a9eac19ecc18eb8150c2cc6d7274c5ba58ec1c3e102042125f6515aa` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/instance--2e981addbc51a0095299a685.md) | 519 | `declaration-track:2e981addbc51a0095299a685499d954867380cfcc0133ad705886c754cfdd834` |
| 61 | `def` | [valAux](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/valaux--200403cc1e4b86ac6d3dfee2.md) | 531 | `declaration-track:200403cc1e4b86ac6d3dfee221fbb4cb76f3684ad48d77196665753b064bbe66` |
| 62 | `theorem` | [coeff_nat_find_add_ne_zero](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/coeff-nat-find-add-ne-zero--2560d889fa8c65e71d7b6a53.md) | 539 | `result-track:2560d889fa8c65e71d7b6a53d6f7bf3fa71663537f5152d839c80b094b191c3e` |
| 63 | `theorem` | [valAux_eq](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/valaux-eq--5fc8f13fc2446efb492f3fec.md) | 544 | `result-track:5fc8f13fc2446efb492f3fec975154111bd47dfe6c53e63a3ee3f05b247cf9ff` |
| 64 | `theorem` | [valAux_zero](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/valaux-zero--9ce7636456656bd7fe2b75f6.md) | 562 | `result-track:9ce7636456656bd7fe2b75f68445f009cd379c518b8f0c8743c3d1c529598ed7` |
| 65 | `theorem` | [valAux_one](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/valaux-one--968bb3ecf736cdd2c395a9fb.md) | 566 | `result-track:968bb3ecf736cdd2c395a9fbd01c52347a0401b3c167a54111687db07ead2a66` |
| 66 | `theorem` | [valAux_mul](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/valaux-mul--4f81ed6d65a543c8ee880e56.md) | 574 | `result-track:4f81ed6d65a543c8ee880e562cd0c39a52e5c90c11039f4a81194f7eb1316419` |
| 67 | `theorem` | [valAux_add](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/valaux-add--7273402cf88f9a154b099204.md) | 593 | `result-track:7273402cf88f9a154b099204906c6c12f9ff5d9765f51f080b15712bef819041` |
| 68 | `def` | [val](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/val--78208b9e4e37d690debc5db9.md) | 620 | `declaration-track:78208b9e4e37d690debc5db953fb5b48f469ab75ead34e3a704cf6ab1d1ff1eb` |
| 69 | `theorem` | [map_eq_zero](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/map-eq-zero--4fe4a25c45c5010e4d137fcd.md) | 630 | `result-track:4fe4a25c45c5010e4d137fcdf019a7eb99e6102cf829ad9f04f2e2060e7d8809` |
| 70 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/instance--caa83dbdd1faf855eeeaccbb.md) | 640 | `declaration-track:caa83dbdd1faf855eeeaccbbec8af6c7b3be758393f5d5b169f237f8eb342304` |
| 71 | `def` | [Tilt](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/tilt--60c79502e06cd213e42e0b88.md) | 654 | `declaration-track:60c79502e06cd213e42e0b881e27753958ee5db0489186101fe30ba8f4226610` |
| 72 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/declarations/instance--f3913b0e074ff56293a33822.md) | 660 | `declaration-track:f3913b0e074ff56293a33822a17188c45158ce6f891630436264768d00c7428d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
