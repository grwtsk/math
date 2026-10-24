# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PermutationFrequencyFactorizationExamples.Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4a635936e72196bcd22ce28f256c52932c5b9dd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4a635936e72196bcd22ce28f256c52932c5b9dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PermutationFrequencyFactorization` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bit0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/bit0--964b60328275960591d856d0.md) | 31 | `declaration-track:964b60328275960591d856d04a25d59e4eb05c4cd7ee5d6636fcfafb158f02e3` |
| 2 | `def` | [bit1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/bit1--3b66cb8dba306e4ef1734d9f.md) | 34 | `declaration-track:3b66cb8dba306e4ef1734d9f99962c95ff15ad78ebcf5ac7c9f185430bd12d29` |
| 3 | `def` | [parity2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/parity2--86ed29d763b5b9bfeae6996d.md) | 38 | `declaration-track:86ed29d763b5b9bfeae6996d6f5761801772384c8de7f0eed13f71d447c40ddf` |
| 4 | `def` | [swap2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/swap2--3ff75b72f6b630a65307026c.md) | 42 | `declaration-track:3ff75b72f6b630a65307026c37d1335f4351ee6d4c6271e0339b1fbcdb7fcc72` |
| 5 | `theorem` | [swap2_comp_swap2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/swap2-comp-swap2--227baca0071307350b3be7f6.md) | 59 | `result-track:227baca0071307350b3be7f605105d5291b58e16dc1c7e146fef5c5e490dd297` |
| 6 | `def` | [exampleGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/examplegroup--20802546cca09b84d5426db5.md) | 74 | `declaration-track:20802546cca09b84d5426db5a1e2ef871b9d8af524587af6de1a2094eb9d5156` |
| 7 | `theorem` | [parity2_swap2_invariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/parity2-swap2-invariant--2b1efd257ddce97a1ae2ca67.md) | 114 | `result-track:2b1efd257ddce97a1ae2ca673d8070f326a6deab8a38289808848399bdc78589` |
| 8 | `theorem` | [orbit_of_parity2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/orbit-of-parity2--971ecf47cc934672267a4dbb.md) | 130 | `result-track:971ecf47cc934672267a4dbb7529204c7f1aca0ac01c04138d0ad21140737cf9` |
| 9 | `def` | [exampleCanonicalCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/examplecanonicalcertificate--9b5f8fbfdf37f123c5bc1211.md) | 147 | `declaration-track:9b5f8fbfdf37f123c5bc1211ab8be3a8381f83143dfb487ba96d328f030a461d` |
| 10 | `def` | [exampleProfileRow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/exampleprofilerow--308fd33ca05a651ced615429.md) | 158 | `declaration-track:308fd33ca05a651ced61542998d81e271ab9c4d80296cecbd95b95a6f2364f6c` |
| 11 | `def` | [exampleProfile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/exampleprofile--55c4ea4620bb52bccaf8ae81.md) | 179 | `declaration-track:55c4ea4620bb52bccaf8ae81d590ad31d67981d7b6d17f9ea41248d97cdebc98` |
| 12 | `def` | [exampleInterpreter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/exampleinterpreter--92b89bf749f7c3c03164c4eb.md) | 193 | `declaration-track:92b89bf749f7c3c03164c4eb1cc372e75e22130a57031fcd86038c2a0e1951dc` |
| 13 | `def` | [exampleFactor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/examplefactor--813a4bcf64e20a4a4659443b.md) | 204 | `declaration-track:813a4bcf64e20a4a4659443b2e326095390ae097aaab8b508ebaf866fa52a64d` |
| 14 | `def` | [exampleOrderedFactorCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/exampleorderedfactorcertificate--46135e8afa89bbf5281c4dd4.md) | 210 | `declaration-track:46135e8afa89bbf5281c4dd4f0fd83c0a0e1887e99afce32e249506579492b2b` |
| 15 | `def` | [examplePFF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/examplepff--cb99a960be27999b75b50002.md) | 219 | `declaration-track:cb99a960be27999b75b500024103299f8c70de922b02be62e0f6954f1b6387fc` |
| 16 | `theorem` | [example_swap2_walsh_projection_equivariant](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/example-swap2-walsh-projection-equivariant--5d9938209a05ddc818f6fc84.md) | 241 | `result-track:5d9938209a05ddc818f6fc846be9e25ceba664a184e24e38d7cd4346dc7f427f` |
| 17 | `theorem` | [example_ordered_factor_realizes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/example-ordered-factor-realizes--e778675c98a4afadadf48843.md) | 252 | `result-track:e778675c98a4afadadf488435cfcf55af5301158a1e61aeecf10bd00b94b108d` |
| 18 | `theorem` | [example_pff_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/example-pff-sound--04b815cc060692d2be6b572f.md) | 258 | `result-track:04b815cc060692d2be6b572f3217cebe76b35e7f682d62e52a505cc26cadd3e1` |
| 19 | `theorem` | [example_factor_not_analytic_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/example-factor-not-analytic-authority--b6d95c6f4e27284018a0e585.md) | 273 | `result-track:b6d95c6f4e27284018a0e5853fc0bfee6af159499a6ffac1ce8217138b48b168` |
| 20 | `theorem` | [example_pff_not_analytic_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variantc0092667672ecf7fe594a1e53508eda35140ce73379584ad9be0ab731827791f.lean/declarations/example-pff-not-analytic-authority--811872972fa0f7f14ba99c8f.md) | 278 | `result-track:811872972fa0f7f14ba99c8f980ccced96e9f207077fee63c58463f4d6af7020` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
