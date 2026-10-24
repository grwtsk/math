# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Submatrix.Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6e62e4d4e9a0ecfb56919c7dddf12f57e18e2c3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6e62e4d4e9a0ecfb56919c7dddf12f57e18e2c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/extractsubmatrix--162691624186f8e0762389e3.md) | 29 | `declaration-track:162691624186f8e0762389e3b4cbaf5e42a7d29d55cd44d769892f1bcb80a73e` |
| 2 | `theorem` | [extractSubmatrix_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/extractsubmatrix-apply--6059ad1f3881ab76f5bea647.md) | 34 | `result-track:6059ad1f3881ab76f5bea6472c69d2b66fda9ccb077787e680d7612de0f6e5f0` |
| 3 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implantsubmatrix--ff66ebe8cbfa77f3a8c3c453.md) | 41 | `declaration-track:ff66ebe8cbfa77f3a8c3c453189ee8db1e98467aa7c6109371640b8afca0dd8f` |
| 4 | `theorem` | [implantSubmatrix_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implantsubmatrix-inside--88235d66fc16c8a14b77de39.md) | 50 | `result-track:88235d66fc16c8a14b77de3907423745f9cd78810f745509d4f959cfb8513307` |
| 5 | `theorem` | [extractSubmatrix_implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/extractsubmatrix-implantsubmatrix--d31d0b11cde80c550e8fa792.md) | 60 | `result-track:d31d0b11cde80c550e8fa792eeffbf6956edcc0421bc05dbc095282246230842` |
| 6 | `theorem` | [implantSubmatrix_extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implantsubmatrix-extractsubmatrix--c284091302199bcac6444791.md) | 70 | `result-track:c284091302199bcac6444791d35f90fa4b0f34f5d07aab78fba85cd49999ede9` |
| 7 | `theorem` | [implantSubmatrix_outside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implantsubmatrix-outside--a8476202e5370fe86a766467.md) | 90 | `result-track:a8476202e5370fe86a766467ead9e061883d5fde9d79c016d9636e2f4975fc1d` |
| 8 | `theorem` | [implantSubmatrix_overwrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implantsubmatrix-overwrite--7015b193f948dbb3f0662fbd.md) | 106 | `result-track:7015b193f948dbb3f0662fbd211c466761e62e1547f1757260810ba112c4917a` |
| 9 | `def` | [differenceSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/differencesupport--082672f668d506f7111c0af8.md) | 117 | `declaration-track:082672f668d506f7111c0af81b8d00eacda0d0210054e9cc8d1b5f52deb942cd` |
| 10 | `theorem` | [mem_differenceSupport_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/mem-differencesupport-iff--de1b1b06a69203a58ad1a9f3.md) | 120 | `result-track:de1b1b06a69203a58ad1a9f35b8401952157755ca337052fdf8763df4c31550e` |
| 11 | `theorem` | [implant_differenceSupport_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implant-differencesupport-inside--8352dcd54767cf0e79d8f5ef.md) | 125 | `result-track:8352dcd54767cf0e79d8f5ef0232928311cdaa9e7c5a9dd242fb8902827293fd` |
| 12 | `def` | [RowUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/rowunique--a5e3b6603f72a813385c61b7.md) | 139 | `declaration-track:a5e3b6603f72a813385c61b74c8e3f7d23ce2488c45a0059f6c5a5cd77a69533` |
| 13 | `def` | [ColumnUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/columnunique--a6d0f69294267d7b0c67363d.md) | 143 | `declaration-track:a6d0f69294267d7b0c67363dc353097855258ba79794441eb9396ae1e67c9afe` |
| 14 | `structure` | [SubmatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/submatrixsurgery--7052a190cea47e7c618eb3fb.md) | 153 | `declaration-track:7052a190cea47e7c618eb3fb8aa575cf380aa2b094664c34c4a3830804c8845c` |
| 15 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/replace--dae282e7b0d9c9c2101b1a15.md) | 167 | `declaration-track:dae282e7b0d9c9c2101b1a1597012db7d7ee2f132ddb2b62db64e0fd2d9c8d37` |
| 16 | `theorem` | [replace_result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/replace-result--c2d39b8fb984eac5a7ea1f5a.md) | 177 | `result-track:c2d39b8fb984eac5a7ea1f5a5132828b0b8989db22a08abcd968749a2d2410bf` |
| 17 | `theorem` | [difference_support_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/difference-support-inside--c868db80a07ad0a4f0c50932.md) | 183 | `result-track:c868db80a07ad0a4f0c50932c94a4dfbb556bad5dbb344e35cde55117d01795e` |
| 18 | `structure` | [CertifiedActionMatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/certifiedactionmatrixsurgery--ed8c10f0a0e10711ee03f727.md) | 194 | `declaration-track:ed8c10f0a0e10711ee03f72758a76fea45eef9ecd58caa1a2f7ef76e600fd150` |
| 19 | `def` | [ofMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/ofmatrix--dd8c93e61f634c74439e9765.md) | 215 | `declaration-track:dd8c93e61f634c74439e976582bc0be9cd1be0e2b70df6c33dcd89989601859e` |
| 20 | `theorem` | [toMatrix_ofMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/tomatrix-ofmatrix--5b316e34a7396a9463badf90.md) | 219 | `result-track:5b316e34a7396a9463badf90755de8c01606075c969a4b681e8a6437c05ebe08` |
| 21 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implantsubmatrix--966e9e853a2d2d6472c348ca.md) | 230 | `declaration-track:966e9e853a2d2d6472c348ca129eba1fccc6c9736342c9c41ea01b1b6e1c393a` |
| 22 | `theorem` | [implantSubmatrix_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/implantsubmatrix-spec--10438f636440be7a3055744e.md) | 237 | `result-track:10438f636440be7a3055744e52cca1834ed4f244365b40743b01fa3129fdf687` |
| 23 | `structure` | [BitMatrix.Surgery.ArrayBackedRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/bitmatrix-surgery-arraybackedrefinement--01ece9d391ebedad00b2d14b.md) | 252 | `declaration-track:01ece9d391ebedad00b2d14bd6ccd55ffb97fa4d394702c39eccfd8b044a8aaf` |
| 24 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/replace--309c5e1d3d5b3dba8d443e00.md) | 267 | `declaration-track:309c5e1d3d5b3dba8d443e00b56fb5a5b06267f9229067cad8613a5b6c050a60` |
| 25 | `theorem` | [replace_result_refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Submatrix/Variantaf60279fb2b4e131aee0b9a0ef8fe65ce7ba9c03938f113f57ce706b027fb7bb.lean/declarations/replace-result-refines--fb922947772f7654925c3cb8.md) | 280 | `result-track:fb922947772f7654925c3cb8011d3fffe2218276c1fc1af411cb0beaf39724ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
