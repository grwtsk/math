# Verification target: GRWTSK.Algebra.LinearAlgebra.Circulant.Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f32374972d048378733b649f627a6934bedafaa0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f32374972d048378733b649f627a6934bedafaa0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant--0bd69c0bb0fbe2dba4df40c8.md) | 54 | `declaration-track:0bd69c0bb0fbe2dba4df40c805b387abf23e38a3bbbd404c78f1f15a612a2cd7` |
| 2 | `theorem` | [circulant_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-apply--cd7dbcb2b2c6914b54f5c249.md) | 59 | `result-track:cd7dbcb2b2c6914b54f5c24983f8d9bf5802648104fc3e4fe6e7970a2e103835` |
| 3 | `theorem` | [circulant_col_zero_eq](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-col-zero-eq--6b8e34a1f76ea299cad3ba36.md) | 61 | `result-track:6b8e34a1f76ea299cad3ba367f9091fc1421335a0f16ac56f85158f57132dd4b` |
| 4 | `theorem` | [circulant_injective](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-injective--87fff4fb3b33bfaf6a17245f.md) | 64 | `result-track:87fff4fb3b33bfaf6a17245f03d7ea3583d0e89a76499ae6aeca4fb81c4c97cc` |
| 5 | `theorem` | [Fin.circulant_injective](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-circulant-injective--de76140713fe9a3580159443.md) | 70 | `result-track:de76140713fe9a3580159443b639c514badb1c2ff7e49e1c8895fb7b8e18fdc1` |
| 6 | `theorem` | [circulant_inj](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-inj--311b84c56bb535b913058137.md) | 75 | `result-track:311b84c56bb535b913058137f4654288656332b393924a3ff84890c6bf6df05d` |
| 7 | `theorem` | [Fin.circulant_inj](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-circulant-inj--4cac510a437d26206eef6e1a.md) | 79 | `result-track:4cac510a437d26206eef6e1a1b818acf256ebf590b5b4ccb9853a5dd385d5128` |
| 8 | `theorem` | [transpose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/transpose-circulant--03bbd672e97fd5d694d6f180.md) | 82 | `result-track:03bbd672e97fd5d694d6f1801927ad4f030af82bf52e70030307dfe3b9b2208e` |
| 9 | `theorem` | [conjTranspose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/conjtranspose-circulant--fe5253c99b5e699613592637.md) | 85 | `result-track:fe5253c99b5e699613592637a03ac945bc20acf77340008ea49a2c5b77b087a9` |
| 10 | `theorem` | [Fin.transpose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-transpose-circulant--c54cdf9585f1d3eed1752ca6.md) | 88 | `result-track:c54cdf9585f1d3eed1752ca60105fdefe1edd1e231483232e4db5218b5e6055e` |
| 11 | `theorem` | [Fin.conjTranspose_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-conjtranspose-circulant--c7c110a93dc151a3edeb98c4.md) | 92 | `result-track:c7c110a93dc151a3edeb98c4b08f55efe977b36428b243fe93177366847e4616` |
| 12 | `theorem` | [map_circulant](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/map-circulant--ab41de895a63678be2da165d.md) | 97 | `result-track:ab41de895a63678be2da165d6fca4c092600359decea644c34134be51d12e32e` |
| 13 | `theorem` | [circulant_neg](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-neg--cfa1ee3fdd8e3e411972c73e.md) | 101 | `result-track:cfa1ee3fdd8e3e411972c73ecb8277ecb6f8439827e0fa26b391ca1c8032b4de` |
| 14 | `theorem` | [circulant_zero](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-zero--ae49cb530d179c1ad1b7c03a.md) | 105 | `result-track:ae49cb530d179c1ad1b7c03a5f397fc768b540550b1b468754e94720c4ab7e06` |
| 15 | `theorem` | [circulant_add](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-add--8d602dd5591b6fb7ff179eba.md) | 108 | `result-track:8d602dd5591b6fb7ff179eba9a296f8542bea152b4c5afe2e33c8c73375debdc` |
| 16 | `theorem` | [circulant_sub](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-sub--2b5d3a51ea409cb1ccfa6773.md) | 112 | `result-track:2b5d3a51ea409cb1ccfa67738644ccb0fa7ec2492302fec51af1b426b23a62df` |
| 17 | `theorem` | [circulant_mul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-mul--2186cb32703aa0f8bd282b6a.md) | 118 | `result-track:2186cb32703aa0f8bd282b6a6de79c464e9c6e391368e7268ec473e0f3810b51` |
| 18 | `theorem` | [Fin.circulant_mul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-circulant-mul--ff4bbabfd6c6c0bb59935510.md) | 126 | `result-track:ff4bbabfd6c6c0bb59935510a604290996953364373e74fc6193d736605c099a` |
| 19 | `theorem` | [circulant_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-mul-comm--5c88700d64e5b31d8d6633a4.md) | 132 | `result-track:5c88700d64e5b31d8d6633a4718d41f0bb2c2ad7423e3b4d4b6d3667662a09e5` |
| 20 | `theorem` | [Fin.circulant_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-circulant-mul-comm--a536d2815caeb8f1c724a92a.md) | 143 | `result-track:a536d2815caeb8f1c724a92a363fc342bac243d3da62da58261862a90b018415` |
| 21 | `theorem` | [circulant_smul](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-smul--f37faa1c0022e23c950e1c1c.md) | 149 | `result-track:f37faa1c0022e23c950e1c1c492f4b97f15111ad70e9abbfcfcd15a30af69b19` |
| 22 | `theorem` | [circulant_single_one](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-single-one--b69546b7df3ea49d0196c733.md) | 153 | `result-track:b69546b7df3ea49d0196c733bd5da6f9272981c0861916ae35b6e1b71d7d74f8` |
| 23 | `theorem` | [circulant_single](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-single--6f81721ea9814c0d450bb484.md) | 159 | `result-track:6f81721ea9814c0d450bb484eee396be680d159b364ad6046dd2f4d7c60b86df` |
| 24 | `theorem` | [Fin.circulant_ite](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-circulant-ite--a2c95762f9ac071b5b2cadb6.md) | 166 | `result-track:a2c95762f9ac071b5b2cadb6152c5ca54e4b387a94a3bae1a6893a44aee2dba4` |
| 25 | `theorem` | [circulant_isSymm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-issymm-iff--39a148fb2947f983736595de.md) | 175 | `result-track:39a148fb2947f983736595de242ed90a2b26905c987aadafbad3a8450038b1bd` |
| 26 | `theorem` | [Fin.circulant_isSymm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-circulant-issymm-iff--12db1d8e49d1b3c9ab4e3dfa.md) | 179 | `result-track:12db1d8e49d1b3c9ab4e3dfaf8e9b59599a6ed7481a0b5f1318e73b8671bbbb4` |
| 27 | `theorem` | [circulant_isSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/circulant-issymm-apply--fbb4493e225b521d49defe57.md) | 184 | `result-track:fbb4493e225b521d49defe57b28c4c288ece9b39683e83dd524700dbd0e8b841` |
| 28 | `theorem` | [Fin.circulant_isSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/declarations/fin-circulant-issymm-apply--a853560809383046dfd67851.md) | 188 | `result-track:a853560809383046dfd678519c447e458c38222bda9c4399b4f661830876c4d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
