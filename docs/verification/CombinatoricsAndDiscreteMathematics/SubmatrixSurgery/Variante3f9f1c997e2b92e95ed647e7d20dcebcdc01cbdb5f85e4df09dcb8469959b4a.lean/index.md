# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SubmatrixSurgery.Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "095219941e83b80347dc4e7ac71896e698f2a0a8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `095219941e83b80347dc4e7ac71896e698f2a0a8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GlobalProjection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/extractsubmatrix--b7cebdb344271dd9480f621a.md) | 19 | `declaration-track:b7cebdb344271dd9480f621a30fe32252d3881468dbbbee89be934d446b77f7c` |
| 2 | `theorem` | [extractSubmatrix_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/extractsubmatrix-apply--af7e2e4fc955a0e572b3f51b.md) | 24 | `result-track:af7e2e4fc955a0e572b3f51b1f4c71666e715175f902dc62224c019204f55d1a` |
| 3 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implantsubmatrix--24ce69f54081e1d16780a1f5.md) | 31 | `declaration-track:24ce69f54081e1d16780a1f5830c64f3ee0314273046caf48fed70912820bff1` |
| 4 | `theorem` | [implantSubmatrix_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implantsubmatrix-inside--0f56f97cacb85ac530d05a6f.md) | 40 | `result-track:0f56f97cacb85ac530d05a6fec229aa54f022a17a7b9e848ca7addbe94c80a2a` |
| 5 | `theorem` | [extractSubmatrix_implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/extractsubmatrix-implantsubmatrix--6dca3fabdd49274ac01099bd.md) | 50 | `result-track:6dca3fabdd49274ac01099bd129e0679c5b6a6eaf49a391176ce04ba6df3d661` |
| 6 | `theorem` | [implantSubmatrix_extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implantsubmatrix-extractsubmatrix--db10a637461f4901a8397035.md) | 60 | `result-track:db10a637461f4901a8397035e2f10ac9863a7b1d1ffaf0e877913d72e1fc4264` |
| 7 | `theorem` | [implantSubmatrix_outside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implantsubmatrix-outside--40de6ff3a557398dfddf9faa.md) | 80 | `result-track:40de6ff3a557398dfddf9faa6c7839427514775ebba04172e3b24df11df935f7` |
| 8 | `theorem` | [implantSubmatrix_overwrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implantsubmatrix-overwrite--b91e0588dc2570325edf5a64.md) | 96 | `result-track:b91e0588dc2570325edf5a647ff53c5f2c868ac08254af58b8b2b2315c6cfdbb` |
| 9 | `def` | [differenceSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/differencesupport--4f90c4260cc9e7a19a749b28.md) | 107 | `declaration-track:4f90c4260cc9e7a19a749b288e3143e0f2f3e1ad880b6dc644fd67bfd0dcf137` |
| 10 | `theorem` | [mem_differenceSupport_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/mem-differencesupport-iff--ace9a3a2c22d25f3791f987d.md) | 110 | `result-track:ace9a3a2c22d25f3791f987d5bf69fac8034c657a176a6489ea75e4f88295478` |
| 11 | `theorem` | [implant_differenceSupport_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implant-differencesupport-inside--c9572596543f07d60d747813.md) | 115 | `result-track:c9572596543f07d60d7478132ab430e15ec0d8e2181801c43d10ca53ba121208` |
| 12 | `def` | [RowUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/rowunique--ef735f0fea3f3c0464b46d21.md) | 129 | `declaration-track:ef735f0fea3f3c0464b46d2174c2952cbc90ef03f1bbc646593656cc973953eb` |
| 13 | `def` | [ColumnUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/columnunique--fb7764c4c8f159ff8d50e54f.md) | 133 | `declaration-track:fb7764c4c8f159ff8d50e54f43b71dc18ad3a6a1236321f26679c2be108d25e6` |
| 14 | `structure` | [BinarySubmatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/binarysubmatrixsurgery--79c8f427619b4f965f4f1657.md) | 139 | `declaration-track:79c8f427619b4f965f4f1657a59c5848f8cfaee0c872eadeb730161259309505` |
| 15 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/replace--b9903fa5e020c202631bfa9a.md) | 153 | `declaration-track:b9903fa5e020c202631bfa9a5c8c969ec7c9bf8b1dd6960339ffe137a1a22076` |
| 16 | `theorem` | [replace_result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/replace-result--5c76621e607d22455a7986fe.md) | 163 | `result-track:5c76621e607d22455a7986fea30eabc66413c86b56ebc37795d29444d147de6d` |
| 17 | `theorem` | [difference_support_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/difference-support-inside--63b04fca799967e8e0088b01.md) | 169 | `result-track:63b04fca799967e8e0088b017c67954e0e36a91c6f49e7708303d7133a6ef1d5` |
| 18 | `structure` | [CertifiedActionMatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/certifiedactionmatrixsurgery--18723928a29a2cae2e50c904.md) | 180 | `declaration-track:18723928a29a2cae2e50c904dc19823aca51f7f8638e7bab7d61eb76baf3b8f8` |
| 19 | `def` | [ofDecl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/ofdecl--dfe7985dcf80d2ec99dee5cc.md) | 197 | `declaration-track:dfe7985dcf80d2ec99dee5cc1f9ca251262111e4c43a058ed0ffac72efebabae` |
| 20 | `theorem` | [toDecl_ofDecl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/todecl-ofdecl--e768f14189d04d30cb2dab9a.md) | 201 | `result-track:e768f14189d04d30cb2dab9a267ddd1df706421200a0848552003895da18a706` |
| 21 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implantsubmatrix--198df938ec72a70cbaf42c8e.md) | 212 | `declaration-track:198df938ec72a70cbaf42c8e6043f6b37e1d4820ca70ae3d3a19b48c160fcec7` |
| 22 | `theorem` | [implantSubmatrix_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/implantsubmatrix-spec--45e74f9bab5414bdf3259836.md) | 219 | `result-track:45e74f9bab5414bdf32598369ed3ea5021ca1476a28e581b5ad5c2ae48dda0f4` |
| 23 | `structure` | [BinMatMutSurgeryRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/binmatmutsurgeryrefinement--4420426e0c33e5f11b933c47.md) | 232 | `declaration-track:4420426e0c33e5f11b933c47c57f444cad29dd288368ddab63365ac9ba46ea75` |
| 24 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/replace--f7778a0f2e1844c3e4997d77.md) | 245 | `declaration-track:f7778a0f2e1844c3e4997d77001596d796b91f73ad32403429ff5a15d94e7bd9` |
| 25 | `theorem` | [replace_result_refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a.lean/declarations/replace-result-refines--4072c3affa7b8acde9548de8.md) | 257 | `result-track:4072c3affa7b8acde9548de88b4cadc83d2909a1135f61f7d60463b6f79c0171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
