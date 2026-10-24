# Verification target: GRWTSK.Topology.GeneralTopology.Ordered.Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7677b1c20ea56554af807fc1041bd26ff8fe49bc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7677b1c20ea56554af807fc1041bd26ff8fe49bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ProjIcc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [partialOrder](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/partialorder--4263335754874965f361dd45.md) | 25 | `declaration-track:4263335754874965f361dd458406992ba43d44c003984323f9baa14099dbcfc9` |
| 2 | `theorem` | [le_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/le-def--cef845cc13b1614ca9ff9483.md) | 28 | `result-track:cef845cc13b1614ca9ff94835bc9d7be0b29400c5e418ad4ce55f67c7de421b9` |
| 3 | `theorem` | [lt_def](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/lt-def--4b29fe37920e65a9105749f1.md) | 31 | `result-track:4b29fe37920e65a9105749f1e34074eed37c411d30ccb2fb22c1a8746ef83415` |
| 4 | `instance` | [sup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/sup--d2bb718ee88801125ae55823.md) | 37 | `declaration-track:d2bb718ee88801125ae55823ea930339d29fd7b37caee20a3e98ad46fc3d004e` |
| 5 | `lemma` | [coe_sup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/coe-sup--f54b4a7ff9ed587ea1fdab0b.md) | 39 | `result-track:f54b4a7ff9ed587ea1fdab0b70b1652bb8ca4fcab9c55bfb84f3059cf2e506b5` |
| 6 | `lemma` | [sup_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/sup-apply--2ce3aec05c39c442fb238c2f.md) | 41 | `result-track:2ce3aec05c39c442fb238c2f5b53cf1d05288fa8a98c182536c98331a16cb3fe` |
| 7 | `instance` | [semilatticeSup](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/semilatticesup--8be830b92bc32a8fd811dbc4.md) | 43 | `declaration-track:8be830b92bc32a8fd811dbc4dc537dc49ff29d199a00dab08002208126c5fd36` |
| 8 | `lemma` | [sup'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/sup-apply--2d1f0caf8326d9c0830bab3d.md) | 46 | `result-track:2d1f0caf8326d9c0830bab3d1d77803bf19ee912b9910700030d6410d53dd903` |
| 9 | `lemma` | [coe_sup'](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/coe-sup--f3ef6ac61acdfaa6f3db66ef.md) | 51 | `result-track:f3ef6ac61acdfaa6f3db66efbc6b60c21db39ff9271283b1cbbd53f4bf03f175` |
| 10 | `instance` | [inf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/inf--e758a725223702d1fa5d58d3.md) | 59 | `declaration-track:e758a725223702d1fa5d58d3405b7b8c27c36ae4ad903e7e8dc9c95fb7d6b42a` |
| 11 | `lemma` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/coe-inf--97ba6af214e90695919599da.md) | 61 | `result-track:97ba6af214e90695919599da594ec01a6a8951ec763cae6b0d7bcab78cde7d66` |
| 12 | `lemma` | [inf_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/inf-apply--8d3b5df5546e28f40f2faa29.md) | 63 | `result-track:8d3b5df5546e28f40f2faa29f2ab11aeec7f2cba3b19d176a7dbb6694ed67d32` |
| 13 | `instance` | [semilatticeInf](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/semilatticeinf--98d885f1a5d6160831313c71.md) | 65 | `declaration-track:98d885f1a5d6160831313c713ded6c6b08044bce0dbb2c968af2e385918de4da` |
| 14 | `lemma` | [inf'_apply](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/inf-apply--4fd8f8dadeac83ec863a5710.md) | 68 | `result-track:4fd8f8dadeac83ec863a57109c0654edf85a282ff8b68644f7c23f2d2de5adae` |
| 15 | `lemma` | [coe_inf'](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/coe-inf--bc80104f5869db8e1641df43.md) | 73 | `result-track:bc80104f5869db8e1641df43c64c588a0289f82fe7d17f1fa47f16bfceb39688` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/instance--46c70aa9e379b8e21fbcb053.md) | 78 | `declaration-track:46c70aa9e379b8e21fbcb0535ee6be0804ce743b9fc703bac197300446ffa03f` |
| 17 | `def` | [IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/iccextend--8dbeef5c37bdc4e4f07d6b2f.md) | 88 | `declaration-track:8dbeef5c37bdc4e4f07d6b2fe8e5daec33003b08ad639b7035533f947bd3e8f6` |
| 18 | `theorem` | [coe_IccExtend](../../../../../mathematics/Topology/GeneralTopology/Ordered/Variantb2f4d3075e606624fd15cdf2779c8b2e870d6b3ddbeb1e8b3cee03a57b8a2107.lean/declarations/coe-iccextend--170d9a455e16f686b472799a.md) | 92 | `result-track:170d9a455e16f686b472799a531b2e5776f4f35cb130f7cf8bc229ef8fad0352` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
