# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLattice.Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fca16ad3bbcd1595a594edecb26d4d1aa584fcd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fca16ad3bbcd1595a594edecb26d4d1aa584fcd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Tendsto` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subsingleton.atTop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/subsingleton-attop-eq--cba55b1c4808e7f90a81030c.md) | 22 | `result-track:cba55b1c4808e7f90a81030cd92d9905cc2c35f34b1ea7ecf2a4a59616d0c3b3` |
| 2 | `theorem` | [Subsingleton.atBot_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/subsingleton-atbot-eq--2df4dee95c456bb0f56fe987.md) | 28 | `result-track:2df4dee95c456bb0f56fe987a2c781ac6708002a2031721b4eec30449eba1330` |
| 3 | `theorem` | [_root_.Monotone.ciSup_comp_tendsto_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-cisup-comp-tendsto-attop--cb596ca8e4d7f72d77d6e889.md) | 38 | `result-track:cb596ca8e4d7f72d77d6e889e18f8c6f65cdfaf9891a72ec7e035bce40b84e7a` |
| 4 | `theorem` | [_root_.Monotone.ciInf_comp_tendsto_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-ciinf-comp-tendsto-atbot--a26b7cb2eacfd5e33e3683ce.md) | 54 | `result-track:a26b7cb2eacfd5e33e3683cebc9441986e63f09b68c5268f053b91a8ad3a03b4` |
| 5 | `theorem` | [_root_.Antitone.ciSup_comp_tendsto_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-cisup-comp-tendsto-atbot--298835018b06a247389463f4.md) | 66 | `result-track:298835018b06a247389463f4c4e66de96796942a61475c650c6a59f002b7b976` |
| 6 | `theorem` | [_root_.Antitone.ciInf_comp_tendsto_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-ciinf-comp-tendsto-attop--ba22b8b86647b9a90bb69e40.md) | 78 | `result-track:ba22b8b86647b9a90bb69e40c0ec1c51c8a9b075c9e946a5a96d44215cac26f1` |
| 7 | `theorem` | [_root_.Monotone.ciSup_comp_tendsto_atTop_of_linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-cisup-comp-tendsto-attop-of-linearorder--b3e51647f4a3e085fce1a1b8.md) | 86 | `result-track:b3e51647f4a3e085fce1a1b86f9fdbe4c4a4ce9f7383fe04bf760fa0bc4362ed` |
| 8 | `theorem` | [_root_.Monotone.ciInf_comp_tendsto_atBot_of_linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-ciinf-comp-tendsto-atbot-of-linearorder--abd69f40ff91bfe5c2ffbc64.md) | 98 | `result-track:abd69f40ff91bfe5c2ffbc64b7d4cc3d85fcfc4570597e559aec796cf3fce373` |
| 9 | `theorem` | [_root_.Antitone.ciInf_comp_tendsto_atTop_of_linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-ciinf-comp-tendsto-attop-of-linearorder--90af97dc8b0f6ef55287253d.md) | 106 | `result-track:90af97dc8b0f6ef55287253db2141c8cfbf31bd0a0e86943f12c7a667f3d886f` |
| 10 | `theorem` | [_root_.Antitone.ciSup_comp_tendsto_atBot_of_linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-cisup-comp-tendsto-atbot-of-linearorder--666b0ca02229ebfcf513d01f.md) | 114 | `result-track:666b0ca02229ebfcf513d01f1b9965220d9b7a644bb716a3ffa505c599e432f8` |
| 11 | `theorem` | [_root_.Monotone.iSup_comp_tendsto_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-isup-comp-tendsto-attop--5c01bca6982d39db8d5568f9.md) | 122 | `result-track:5c01bca6982d39db8d5568f9947c021123c15a9bfcb7d980c56ed7dd80b4bf4b` |
| 12 | `theorem` | [_root_.Monotone.iInf_comp_tendsto_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-iinf-comp-tendsto-atbot--33a29f6f642fdc1c9bb28284.md) | 131 | `result-track:33a29f6f642fdc1c9bb282845619081353e0b8822bc37edab4683539995bed13` |
| 13 | `theorem` | [_root_.Antitone.iSup_comp_tendsto_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-isup-comp-tendsto-atbot--4dbf9b6ada7cc79c1555b7b1.md) | 140 | `result-track:4dbf9b6ada7cc79c1555b7b14d2bd08abe2d357086023c37523f17b609015b23` |
| 14 | `theorem` | [_root_.Antitone.iInf_comp_tendsto_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-iinf-comp-tendsto-attop--1517650d16cfa02b1d3a5f29.md) | 149 | `result-track:1517650d16cfa02b1d3a5f297401818c0fe3d58086fdf56ebe76a7464d1ca671` |
| 15 | `theorem` | [_root_.Monotone.iUnion_comp_tendsto_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-iunion-comp-tendsto-attop--2ee38223e366fcc7d1afa810.md) | 157 | `result-track:2ee38223e366fcc7d1afa810bf41f043c6b6572f73cdecf5990bb6219f4f5935` |
| 16 | `theorem` | [_root_.Monotone.iInter_comp_tendsto_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-monotone-iinter-comp-tendsto-atbot--96f41101027ca2871fcd01fb.md) | 164 | `result-track:96f41101027ca2871fcd01fb432aaa29dc5c610c6f70290be77633fede8912b2` |
| 17 | `theorem` | [_root_.Antitone.iInter_comp_tendsto_atTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-iinter-comp-tendsto-attop--38d83b179a674648d84f8522.md) | 171 | `result-track:38d83b179a674648d84f85228c38b78f85186af1f2f6d232e561de27f04f60e3` |
| 18 | `theorem` | [_root_.Antitone.iUnion_comp_tendsto_atBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant2a33a337935f2cba577b7a8b44b0e564c115a3a73b25479f9ad9fd902fefa02b.lean/declarations/root-antitone-iunion-comp-tendsto-atbot--9307a48dac7909bd389bde04.md) | 178 | `result-track:9307a48dac7909bd389bde04c58c96b4d87175ffa6d5cdeecc91001d882765a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
