# Verification target: GRWTSK.Algebra.Symmetrized.Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a775018c8ff79daa9b9fb25e7da9aa077d20f54",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a775018c8ff79daa9b9fb25e7da9aa077d20f54`.

Source path: `GRWTSK/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Jordan.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SymAlg](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/symalg--2089f3cf12fba368c427808b.md) | 39 | `declaration-track:2089f3cf12fba368c427808bd2601f07ee16b0c419f5e99cbdf73399bc580223` |
| 2 | `def` | [sym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym--7925df924cfd5f238d9d3a58.md) | 50 | `declaration-track:7925df924cfd5f238d9d3a585e44f77884e303616d6991c9a6186657e9e29d02` |
| 3 | `def` | [unsym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym--118af6f2d98b844b1860176c.md) | 57 | `declaration-track:118af6f2d98b844b1860176c87b12c94d6e44d388c06b73a51f62191b37f928a` |
| 4 | `theorem` | [unsym_sym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-sym--998f50c407a834176726983f.md) | 61 | `result-track:998f50c407a834176726983f5bd4668c3c5d67bfef0f1ee9bd4f1e8a4802828e` |
| 5 | `theorem` | [sym_unsym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-unsym--2c3e905315e86def87d9f66b.md) | 65 | `result-track:2c3e905315e86def87d9f66ba3e992a82c2b326efad787536930324bc3723889` |
| 6 | `theorem` | [sym_comp_unsym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-comp-unsym--929dd03526b020ccc854ad41.md) | 69 | `result-track:929dd03526b020ccc854ad4145530872c435428081ba8557b492163986bccc9e` |
| 7 | `theorem` | [unsym_comp_sym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-comp-sym--c6982e45b31d049a936322b0.md) | 73 | `result-track:c6982e45b31d049a936322b0e0e50a34fec636206510114ebe6a792256110a81` |
| 8 | `theorem` | [sym_symm](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-symm--77429220a7b6f82e3fe765e0.md) | 77 | `result-track:77429220a7b6f82e3fe765e0d3abb65c291548e5e69b48158aae00a8044dace6` |
| 9 | `theorem` | [unsym_symm](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-symm--bbd23153f1908187e9f41347.md) | 81 | `result-track:bbd23153f1908187e9f413476f42a34cd61bc99441b2c512ea96cfba4ebc337c` |
| 10 | `theorem` | [sym_bijective](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-bijective--0df35935862779c62fabc940.md) | 84 | `result-track:0df35935862779c62fabc94073c8f5e4ab9e931a989e8ed56efb2c41b29b9f7f` |
| 11 | `theorem` | [unsym_bijective](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-bijective--692e2209698c0868c5c70c1e.md) | 87 | `result-track:692e2209698c0868c5c70c1ed456113e9aa8995f10701acb4bd412b3e278b950` |
| 12 | `theorem` | [sym_injective](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-injective--81f0053c885076a8d9fb923d.md) | 90 | `result-track:81f0053c885076a8d9fb923dd306d5637b57ef1849263d64359099865239f457` |
| 13 | `theorem` | [sym_surjective](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-surjective--3d3e76ff71365cc56fe922fd.md) | 93 | `result-track:3d3e76ff71365cc56fe922fdea2a83a3a7cc1ed1b283bfbadb40511d3f868484` |
| 14 | `theorem` | [unsym_injective](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-injective--df2c48cdbc79026a67d3bc5d.md) | 96 | `result-track:df2c48cdbc79026a67d3bc5d83eb3637d4c6a872b8e7914d4bf7ccab6b8c932f` |
| 15 | `theorem` | [unsym_surjective](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-surjective--df432337c1934fc32e104ce1.md) | 99 | `result-track:df432337c1934fc32e104ce14050b7f6c739f482e64706e5e4932d37eef66b50` |
| 16 | `theorem` | [sym_inj](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-inj--5238ef69e3603fb6c347dd20.md) | 102 | `result-track:5238ef69e3603fb6c347dd201a6b3da741ba8859b75d6765ac9d0258541b61b9` |
| 17 | `theorem` | [unsym_inj](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-inj--392cd179b7c96b3e40a7ee30.md) | 105 | `result-track:392cd179b7c96b3e40a7ee300c6faae677a0c6f8d449abfc6bf70a0e623490dd` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--1580b56ddd36649c5b3f7d3a.md) | 108 | `declaration-track:1580b56ddd36649c5b3f7d3ae04bc27f3674928cebbf54fef64424c44fe312f5` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--e3be336ae0dbcce0227db0ef.md) | 111 | `declaration-track:e3be336ae0dbcce0227db0ef5c20020068a15166f55277379fe74832bef70a22` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--774c2bbcaa8aab14a1db2ec7.md) | 114 | `declaration-track:774c2bbcaa8aab14a1db2ec78f4f700f0327489d00fbed1f16207ecc92e1afe2` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--f2edadb40b1aba2eeff0e2bd.md) | 117 | `declaration-track:f2edadb40b1aba2eeff0e2bdf33c44637cd875661be91ea96686ca2f35437571` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--e8b792b3e97de292351c42b9.md) | 120 | `declaration-track:e8b792b3e97de292351c42b91f8d304e11e0633bef2fd5fcd4e476ac4d4cf0ab` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--86870910daefb529ff0e1f7b.md) | 124 | `declaration-track:86870910daefb529ff0e1f7b799842efc0ee63f8d0f9a6af1fe636feb12156c8` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--25fe7cb53d1387191d2b364b.md) | 126 | `declaration-track:25fe7cb53d1387191d2b364bb2ca1ad73dff9d4d0edef4806048441a71393bfa` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--bf9a247fe177aadc4a633980.md) | 128 | `declaration-track:bf9a247fe177aadc4a633980f3be6afad83e4a8a87559b5aae0bc837d084d693` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--cc6ec93265ba92d08416acbf.md) | 130 | `declaration-track:cc6ec93265ba92d08416acbf3f3d17fa3445912d06a539b9fe0fd9dce4940d44` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--5e67896637e358110b3361dc.md) | 133 | `declaration-track:5e67896637e358110b3361dcefb612d92dfad61f53a71ab428819a65f688c0a9` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--51fbdfc9caeaacd8d996088e.md) | 137 | `declaration-track:51fbdfc9caeaacd8d996088e0b1edba291e5df85f8ea7f59e979053088d6e09b` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--8bc0ef9289b6a64e30b6a94c.md) | 139 | `declaration-track:8bc0ef9289b6a64e30b6a94c49430b3f2c785bf04fb76c338bd63d884bffdd6b` |
| 30 | `theorem` | [sym_one](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-one--4136ab4306e144ef2a58019e.md) | 142 | `result-track:4136ab4306e144ef2a58019e5b4488a0867a6dfdc18d072f749b2b51c87aa2a7` |
| 31 | `theorem` | [unsym_one](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-one--da61cf92bd79b9abeb044461.md) | 146 | `result-track:da61cf92bd79b9abeb044461be5d595183e3f7f3b273481ed299f46bb137bb3d` |
| 32 | `theorem` | [sym_add](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-add--23a219cdde090fec973fd02f.md) | 150 | `result-track:23a219cdde090fec973fd02fb68409f745253520b7b7e8072d516a70d7b65493` |
| 33 | `theorem` | [unsym_add](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-add--2ed200f9be93d07829c5b115.md) | 154 | `result-track:2ed200f9be93d07829c5b11545818e3b53600ddb173a215d765e22ec5797b927` |
| 34 | `theorem` | [sym_sub](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-sub--fc8537393669285aad6cdb2f.md) | 158 | `result-track:fc8537393669285aad6cdb2fefe5bc2ee9e9a25ea6faa4f40dea4590ff8d1e05` |
| 35 | `theorem` | [unsym_sub](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-sub--7d35e79915578fe55cf916d9.md) | 162 | `result-track:7d35e79915578fe55cf916d98750377911eb04a7eec495eb196ad7234af37115` |
| 36 | `theorem` | [sym_neg](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-neg--d130f825c6e71eb53f33299f.md) | 166 | `result-track:d130f825c6e71eb53f33299f1864019f86162edd08dc76bef1858fdfde8ad9b3` |
| 37 | `theorem` | [unsym_neg](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-neg--455822ff010072211582d886.md) | 170 | `result-track:455822ff010072211582d886379b71d6a7f0c7808023de897f264f4a6786dcdf` |
| 38 | `theorem` | [mul_def](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/mul-def--92b7294fd47fcf46d78fcd0f.md) | 173 | `result-track:92b7294fd47fcf46d78fcd0f8870930d9c3ec999107d2b69c985851d065e326a` |
| 39 | `theorem` | [unsym_mul](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-mul--e034ed0665a9611fa07246e9.md) | 176 | `result-track:e034ed0665a9611fa07246e97a7bf2afe8a983b09a9ae05a4c90f0df66bf9712` |
| 40 | `theorem` | [sym_mul_sym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-mul-sym--55a73d677a99ec02dad75438.md) | 179 | `result-track:55a73d677a99ec02dad7543877df01beaca4ee34f1ce3e7c48e611decf585e10` |
| 41 | `theorem` | [sym_inv](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-inv--d1d6f894e3606467f7a5aef1.md) | 185 | `result-track:d1d6f894e3606467f7a5aef141581539231c994c4f879ba32c3a4417bacf22a7` |
| 42 | `theorem` | [unsym_inv](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-inv--165180acaf12f7b7a06555dc.md) | 190 | `result-track:165180acaf12f7b7a06555dc5ebb11e93159eb81f49b309fc49bcc7b9a39c427` |
| 43 | `theorem` | [sym_smul](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-smul--dac2b2d0eb56046d139b3277.md) | 194 | `result-track:dac2b2d0eb56046d139b3277efadd9d9bd656cd009ce962a8e7af8d4e8cb5396` |
| 44 | `theorem` | [unsym_smul](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-smul--284c15d78de0b4b57ed44fe3.md) | 198 | `result-track:284c15d78de0b4b57ed44fe3ae53c256dfedd816ccca8053fd26966d9691f35b` |
| 45 | `theorem` | [unsym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-eq-one-iff--90b9e8f6d6fc1717864ddd82.md) | 202 | `result-track:90b9e8f6d6fc1717864ddd82bfcfb90c452dde7532bfec5b90a16df6130a40e7` |
| 46 | `theorem` | [sym_eq_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-eq-one-iff--32bce9d19290c084de63f732.md) | 206 | `result-track:32bce9d19290c084de63f732df0ccf1075e8325278a04695f11141ffb019b3f0` |
| 47 | `theorem` | [unsym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-ne-one-iff--def6b284873d69a5eab29956.md) | 210 | `result-track:def6b284873d69a5eab29956d320c3a912e12ea5ca7ddec390883bcddf0d2f36` |
| 48 | `theorem` | [sym_ne_one_iff](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-ne-one-iff--754a51b4f1a7197e14ce0c9e.md) | 214 | `result-track:754a51b4f1a7197e14ce0c9e4a2e62ca80c44ce00acccfc1b4ba591347404a59` |
| 49 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/addcommsemigroup--25f889a61f4374d9455df2e9.md) | 217 | `declaration-track:25f889a61f4374d9455df2e9d8aa55f41360e9539659a193e21011b621ebb6c2` |
| 50 | `instance` | [addMonoid](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/addmonoid--e015179b09b544a540105a7e.md) | 220 | `declaration-track:e015179b09b544a540105a7e44f6ec49932144e696966cd77fc130ddee04f201` |
| 51 | `instance` | [addGroup](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/addgroup--3a4a0cdf93887e52c8ec6137.md) | 223 | `declaration-track:3a4a0cdf93887e52c8ec61372afc80b827511676e5057f4742f3b5742d652f6e` |
| 52 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/addcommmonoid--5ec2cea95512ebf41219ed34.md) | 227 | `declaration-track:5ec2cea95512ebf41219ed344dd12164e6616cfc6dd7748926a611109a62f287` |
| 53 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/addcommgroup--facbbcf17844ff7e24a16ab4.md) | 230 | `declaration-track:facbbcf17844ff7e24a16ab4bf3fe001e8a2abd36eddc8e8f1f23ba872a07513` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--bf47859803f738bcce739031.md) | 233 | `declaration-track:bf47859803f738bcce739031c6e03a2b1607f418a468d63275d115bfdf06864c` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--b6bcf0a8f35f972053376771.md) | 236 | `declaration-track:b6bcf0a8f35f972053376771fa8378a1c6589ef07badf9c329ac97f639ee95a0` |
| 56 | `theorem` | [invOf_sym](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/invof-sym--2b20bea76237a7792c0fdf65.md) | 245 | `result-track:2b20bea76237a7792c0fdf6574d0ade7d5c0bb2b47371968c66d1845f3402fa0` |
| 57 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/nonassocsemiring--a89886bb2fc98cefbd490134.md) | 249 | `declaration-track:a89886bb2fc98cefbd49013486c615f3f9ca3b47ae0ce0953a62de053b399caa` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--a4e7a93aafd43ddd77467113.md) | 275 | `declaration-track:a4e7a93aafd43ddd7746711319afd8cada862faa1a7106333d6070b2bdef3fc4` |
| 59 | `theorem` | [unsym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/unsym-mul-self--4ecea6252bdc24cc9692c9ba.md) | 281 | `result-track:4ecea6252bdc24cc9692c9bab95de112282dd92c337f19e0df623c0fc814f823` |
| 60 | `theorem` | [sym_mul_self](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/sym-mul-self--90d40237e1e22fea8dfac54d.md) | 285 | `result-track:90d40237e1e22fea8dfac54d777700d7973ca64b6563bac26fc2c4f7365003ce` |
| 61 | `theorem` | [mul_comm](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/mul-comm--c5f3e421138a8f821b1f7bfd.md) | 288 | `result-track:c5f3e421138a8f821b1f7bfdb1bed005ecbff3e91a1af96e5dee5c2154586d94` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--d9253b41e210391bfd269fcd.md) | 292 | `declaration-track:d9253b41e210391bfd269fcddb361cef0fe81d1d9533b452064c5c6282ddfc66` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetrized/Variant313ab7d67694c0671b02ebcde64b953006bca7ff864c4960dc78b15f396805f5.lean/declarations/instance--64cab5e03e6ba411da28ba99.md) | 295 | `declaration-track:64cab5e03e6ba411da28ba9949fa191cfa4004336e9fceb91a219cae767f98c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
