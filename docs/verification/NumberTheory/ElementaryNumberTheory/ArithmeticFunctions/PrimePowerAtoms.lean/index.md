# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c535a9a0e64d1171b5b1e6fe142d65dcca5fbde7",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c535a9a0e64d1171b5b1e6fe142d65dcca5fbde7`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScaleTopology`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScaleTopology.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PositiveExponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/positiveexponent--0458734ada607704122a7ed2.md) | 34 | `declaration-track:0458734ada607704122a7ed2114bfc5186b1cd2f2ebf1499e69883af10516cdc` |
| 2 | `structure` | [PrimePowerAtom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/primepoweratom--027387f658d3842756470b92.md) | 37 | `declaration-track:027387f658d3842756470b928b81eecc05d4fed705046c654fee7946f1ce1855` |
| 3 | `abbrev` | [PrimePowerModule](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/primepowermodule--5b788c3a5ca89afe7da8d7fb.md) | 43 | `declaration-track:5b788c3a5ca89afe7da8d7fb3d0534d78a6d654e47608c8fc09617b3759ce89e` |
| 4 | `def` | [atom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/atom--ce945c736d36fc24afdc726c.md) | 46 | `declaration-track:ce945c736d36fc24afdc726c402b4d8f237f17ec230f62f83793345fa194d262` |
| 5 | `def` | [unitAtom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/unitatom--5f9efc703d8453021c273b38.md) | 50 | `declaration-track:5f9efc703d8453021c273b3898a31c1c7482462b231e8e211cc995e02d0be5e4` |
| 6 | `def` | [squareAtom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/squareatom--33aa8efac77f815b69a0e6d3.md) | 54 | `declaration-track:33aa8efac77f815b69a0e6d3e89b349b868d00ecc0b686233fbda9616f58e1f6` |
| 7 | `theorem` | [unitAtom_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/unitatom-prime--620e60b7cb21e7870ec68ba4.md) | 57 | `result-track:620e60b7cb21e7870ec68ba413a21aefcf6c9d307c99e5d3feef3c5ab23e41e5` |
| 8 | `theorem` | [squareAtom_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/squareatom-prime--781cc66eb0b412da3ca40b91.md) | 58 | `result-track:781cc66eb0b412da3ca40b910649486ba01fe6fd0fc43b54dc3d56db1a65071f` |
| 9 | `theorem` | [unitAtom_exponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/unitatom-exponent--2b1fbad00aec6ae2bc216c7d.md) | 59 | `result-track:2b1fbad00aec6ae2bc216c7ddce42ff748216d7621a4829849a9ddb21ed3cab3` |
| 10 | `theorem` | [squareAtom_exponent](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/squareatom-exponent--472edd3a68eb97445cabc60f.md) | 60 | `result-track:472edd3a68eb97445cabc60fd4cc8c1fd3e965e213a616a28a748153553824a3` |
| 11 | `def` | [logLocation](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/loglocation--d3d7e69820c754ad287c0476.md) | 63 | `declaration-track:d3d7e69820c754ad287c0476589b28b5e76ea3b22e01704b900536024439b924` |
| 12 | `def` | [atomCollapseHom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/atomcollapsehom--a374d3a1060ffe59c6d05737.md) | 67 | `declaration-track:a374d3a1060ffe59c6d0573766fc268c179ede193f8996853518a29ee01c3941` |
| 13 | `def` | [collapse](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapse--706720f36555690401890945.md) | 76 | `declaration-track:706720f365556904018909452cc9bfbff334f8e3a7626e780a286f2850250f92` |
| 14 | `theorem` | [collapse_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapse-single--2af3805b35c0c5c4ed107d2d.md) | 80 | `result-track:2af3805b35c0c5c4ed107d2d3c450040efabf10e475a93990c2cf318fe239dd4` |
| 15 | `def` | [unitAtomSection](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/unitatomsection--c3e1f1291cde84b0c1e1bf50.md) | 86 | `declaration-track:c3e1f1291cde84b0c1e1bf504c5a0759584017037608716234540e118eb81477` |
| 16 | `theorem` | [unitAtomSection_single](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/unitatomsection-single--fd15eb69329ec71c7f47b567.md) | 90 | `result-track:fd15eb69329ec71c7f47b56708ce1046cf704c117c5a6adc685b427c77f1beb7` |
| 17 | `theorem` | [collapse_unitAtomSection](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapse-unitatomsection--14cf7cd3a19d9a482e215651.md) | 96 | `result-track:14cf7cd3a19d9a482e2156519caa9e967b2c9aed7e2453d8d533bd14b66fc3b4` |
| 18 | `theorem` | [collapse_surjective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapse-surjective--ab7758d85a543c92de44b746.md) | 107 | `result-track:ab7758d85a543c92de44b746034e37a63171961b6de15808d1e013fec6e5ef3e` |
| 19 | `theorem` | [squareAtom_ne_unitAtom](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/squareatom-ne-unitatom--50c82fdcdad71897fbaf151e.md) | 111 | `result-track:50c82fdcdad71897fbaf151ee26bef57a0eb1da882ff164b07773f9140fd7395` |
| 20 | `def` | [collapseKernelWitness](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapsekernelwitness--b63cdf29eae30201fec5aa4d.md) | 119 | `declaration-track:b63cdf29eae30201fec5aa4db7181f2f65f8f01717c42ecc6cd1a1eb2cce50ca` |
| 21 | `theorem` | [collapseKernelWitness_apply_square](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapsekernelwitness-apply-square--493a54903af2b051b51cb30b.md) | 123 | `result-track:493a54903af2b051b51cb30b263a89b292b6de44b2895445e2a60afdbdcd2703` |
| 22 | `theorem` | [collapseKernelWitness_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapsekernelwitness-ne-zero--53d580c85f74576d66f46181.md) | 129 | `result-track:53d580c85f74576d66f46181d0ec0cbbd6ff43ea1499e8fc22ab3601a98cca04` |
| 23 | `theorem` | [collapseKernelWitness_mem_kernel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapsekernelwitness-mem-kernel--81ef0766becdf674169b74ff.md) | 136 | `result-track:81ef0766becdf674169b74ff535307613d6ee41bf69cfb3d8b67d559e6869e48` |
| 24 | `theorem` | [collapse_not_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/collapse-not-injective--144a51c2ed35800cc53533b1.md) | 144 | `result-track:144a51c2ed35800cc53533b1c95b5ef007d297aebdbb36392dc17fbbe0e097d7` |
| 25 | `def` | [FactorsThroughCollapse](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/factorsthroughcollapse--42511728f04d4ccb88aa1fb7.md) | 155 | `declaration-track:42511728f04d4ccb88aa1fb78d92f31d0e0929aaaa140400b10ab5aee7eac013` |
| 26 | `theorem` | [factorsThroughCollapse_exponent_linear](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/factorsthroughcollapse-exponent-linear--b110345aa662def35bda21dd.md) | 162 | `result-track:b110345aa662def35bda21dd0e481c2768c03e467da89bf4ae83aabcb524f112` |
| 27 | `def` | [squaredExponentReadout](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/squaredexponentreadout--0d44d5c10c3d6a21785c46b7.md) | 182 | `declaration-track:0d44d5c10c3d6a21785c46b7b170450a32786cc851424beabf94c6f572cdac02` |
| 28 | `theorem` | [squaredExponentReadout_not_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/squaredexponentreadout-not-factors--c11e652015213a98fa5f40f6.md) | 186 | `result-track:c11e652015213a98fa5f40f6b2511d684baea467b9fb28a39617a732d1357549` |
| 29 | `def` | [logTestReadout](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/logtestreadout--dfac603db1ebff974ecad8d6.md) | 196 | `declaration-track:dfac603db1ebff974ecad8d6248c1e67a04d9ee67e5ef52129d229482c417a53` |
| 30 | `theorem` | [logTest_factorization_requires_prime_ray_linearity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/logtest-factorization-requires-prime-ray-linearity--f42e9d759f4edb604e8c050f.md) | 202 | `result-track:f42e9d759f4edb604e8c050fccfd3a10cff55426bb052ec210e9ea4091e12270` |
| 31 | `structure` | [PrimePowerWitnessStage](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/primepowerwitnessstage--fd9d4344ed55b0dc381ce189.md) | 213 | `declaration-track:fd9d4344ed55b0dc381ce1894590acf8563347018f4c0aac6fccb789104d6799` |
| 32 | `def` | [PrimePowerWitnessStage.WitnessIndex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/primepowerwitnessstage-witnessindex--21a6116d6923e575be7ab6b6.md) | 217 | `declaration-track:21a6116d6923e575be7ab6b6f9679fafcda8a8cd0b8f87505a0275017c0293c7` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/instance--49bb12e51914722b2abcbc25.md) | 221 | `declaration-track:49bb12e51914722b2abcbc25212f948535a899418296cac3c45f05825dbcce51` |
| 34 | `def` | [primePowerDynamicWitnessChannel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/declarations/primepowerdynamicwitnesschannel--d196fea3181166fe65111fe8.md) | 227 | `declaration-track:d196fea3181166fe65111fe8c7c4e65d39aeee301827a5b15abd5fe65ecf5812` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
