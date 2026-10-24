# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FixedProgramInterpreter.Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1031ef61768556191b4d9ab0462df7b8d339b28b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1031ef61768556191b4d9ab0462df7b8d339b28b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/state--0e7a1496fe78838cb7081b9b.md) | 23 | `declaration-track:0e7a1496fe78838cb7081b9b8b6ccf8543d950bc1553b40d57443dd38bac556e` |
| 2 | `def` | [zeroState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/zerostate--dcdb2c73982d84c6afeb67d9.md) | 26 | `declaration-track:dcdb2c73982d84c6afeb67d9b3414e6d2a4cc39b9230a7fba5bc2dc21dc555b5` |
| 3 | `def` | [programLengthBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/programlengthbits--9c184371b7339275c32693d0.md) | 29 | `declaration-track:9c184371b7339275c32693d0965aaca912000503dce3d08c456d1b18134c8953` |
| 4 | `def` | [maxProgramBytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/maxprogrambytes--87e2afd805c86460544db7cc.md) | 32 | `declaration-track:87e2afd805c86460544db7cceb96602020e520bc3ee6277aa68ab31735c4c1ea` |
| 5 | `def` | [maxStackDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/maxstackdepth--7b8a14120caf23ac22a4a2c9.md) | 35 | `declaration-track:7b8a14120caf23ac22a4a2c973155abbf08a5e2313b318a55ebf27689f50f388` |
| 6 | `abbrev` | [IndexBitPosition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/indexbitposition--d60e81aa03ffb5856f682a23.md) | 38 | `declaration-track:d60e81aa03ffb5856f682a2320162e80593130e0c49c3fb191ac356dd656ba76` |
| 7 | `inductive` | [Operation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/operation--df03b6b07d5234b00f1ee495.md) | 44 | `declaration-track:df03b6b07d5234b00f1ee495d4016f5cd9663c34c222a641d6704612b27da026` |
| 8 | `def` | [nextStackDepth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/nextstackdepth--ea6c10aa712841f46e9dbbe1.md) | 62 | `declaration-track:ea6c10aa712841f46e9dbbe19fd3085f2ec3b520cd88ce3deec3f60bdd7b3401` |
| 9 | `def` | [executeOperation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/executeoperation--b663d3002308c1ae1768f178.md) | 91 | `declaration-track:b663d3002308c1ae1768f17882c8ab95fdf93ad0873a0f8fbdae5816b75fc507` |
| 10 | `def` | [evaluateOperations](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/evaluateoperations--7ad1719e7a4f36b66781eb64.md) | 117 | `declaration-track:7ad1719e7a4f36b66781eb647bccdf33b0376d235fcf5873571e5d68158e5a3f` |
| 11 | `def` | [validateOperationsFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/validateoperationsfrom--376fd43724fb9f7f4de2ce8f.md) | 136 | `declaration-track:376fd43724fb9f7f4de2ce8f9568e9736ed9a9687aeaf0332f11d993fa0636b6` |
| 12 | `def` | [validateOperations](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/validateoperations--016a703bc3f584a3c5496e77.md) | 148 | `declaration-track:016a703bc3f584a3c5496e77d39f11e424efdd9d76b98bc5e2545653f589654d` |
| 13 | `structure` | [DecodedProgram](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/decodedprogram--51ebd3ee9aba9b87b3c73a7a.md) | 155 | `declaration-track:51ebd3ee9aba9b87b3c73a7a7ed723e688b19e796cd9f5d81b6ef3a436cd9e20` |
| 14 | `structure` | [CheckedDecoder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/checkeddecoder--71cb9d8f848f5fc9658f0342.md) | 169 | `declaration-track:71cb9d8f848f5fc9658f0342dc3519eb27071e71aa7d38a7697009740c91f062` |
| 15 | `def` | [DecodedProgram.evaluate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/decodedprogram-evaluate--7ebe510337611259c78a5eb1.md) | 173 | `declaration-track:7ebe510337611259c78a5eb1e6b0392d83cd3157c7e8e6744d170f87686505e8` |
| 16 | `theorem` | [DecodedProgram.evaluateOperations_eq_some_evaluate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/decodedprogram-evaluateoperations-eq-some-evaluate--4954efc34d3731867e83dfe7.md) | 180 | `result-track:4954efc34d3731867e83dfe73f9cd4f79f063948974249904d556ceee2bd7078` |
| 17 | `def` | [interpretChecked](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/interpretchecked--09b6a9f53907db70cee41fbe.md) | 190 | `declaration-track:09b6a9f53907db70cee41fbe27e1a3244529f1c3d390d934287b0cfaa7401bcd` |
| 18 | `def` | [interpretTotal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/interprettotal--f0c12bc57890167e83b14169.md) | 200 | `declaration-track:f0c12bc57890167e83b14169a6163e94a806cd5d12447779c9e1368709cf9fd2` |
| 19 | `theorem` | [interpretTotal_eq_checked_getD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/interprettotal-eq-checked-getd--96b0b2ba64786eb4fc0465aa.md) | 206 | `result-track:96b0b2ba64786eb4fc0465aa1fe1a2f261e11da7f3723dbfbc56a070be6c367b` |
| 20 | `theorem` | [interpretTotal_of_decode_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/interprettotal-of-decode-some--56e47fe65c9af5184ccaa7f3.md) | 214 | `result-track:56e47fe65c9af5184ccaa7f321c2716ecc10cf74679463d5333e3f8b99cf58be` |
| 21 | `theorem` | [interpretChecked_of_decode_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/interpretchecked-of-decode-none--0165462b537725c2adec11a1.md) | 223 | `result-track:0165462b537725c2adec11a1c0b2fdcdaaf6248226e23e393e927182e024135a` |
| 22 | `theorem` | [interpretTotal_of_decode_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/interprettotal-of-decode-none--b7f020b2dd83ecacca48b371.md) | 231 | `result-track:b7f020b2dd83ecacca48b37150ac5ccca24c62f1a972b80c4e720d2a0b8840d0` |
| 23 | `theorem` | [interpretTotal_apply_of_decode_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variant2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753.lean/declarations/interprettotal-apply-of-decode-none--05f518db4c25ce47151d9551.md) | 239 | `result-track:05f518db4c25ce47151d9551ee586ccbede7da0bc9638a300eee6632b9b6c621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
