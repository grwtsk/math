# GRWTSK.InformationTheory.Huffman.CheckedArithmetic

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/Huffman/CheckedArithmetic.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8050af3a53e0eedf8d65b9527c50e8608d576ff7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [maxU64](declarations/maxu64--5aac83382d986f77992f3f95.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [checkedAdd](declarations/checkedadd--9dec4b563ea262e9188d6438.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkedMul](declarations/checkedmul--493865b4a172727edfd27111.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkedSucc](declarations/checkedsucc--f144b5c5db6f9436e8d68257.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [checkedAdd_eq_some_iff](declarations/checkedadd-eq-some-iff--3d162b064441f1869ab13418.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [checkedAdd_eq_none_iff](declarations/checkedadd-eq-none-iff--4b95dcc2201b8b78320ba226.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [checkedMul_eq_some_iff](declarations/checkedmul-eq-some-iff--419607766f16f52925ce33f9.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [checkedMul_eq_none_iff](declarations/checkedmul-eq-none-iff--c01dfbfa8da68ee320684aba.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [checkedSucc_eq_some_iff](declarations/checkedsucc-eq-some-iff--0618d516b26ab21b719a5c57.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [checkedSucc_eq_none_iff](declarations/checkedsucc-eq-none-iff--af9d660218e26666431a4fc3.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [checkedAdd_at_boundary](declarations/checkedadd-at-boundary--805fbfb0d84b9360fdf48465.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [checkedSucc_max](declarations/checkedsucc-max--001c022b30d0b3b0609e60d3.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [checkedMul_at_boundary](declarations/checkedmul-at-boundary--9e98b94e98eaa707f21305b1.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkedWordAdd](declarations/checkedwordadd--aa2945de96cfc8b508022176.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [checkedWordMul](declarations/checkedwordmul--22928d77e3b17eb678b37132.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [wordAdd_no_wrap](declarations/wordadd-no-wrap--e5b1e05fbc92ab29082baea6.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [wordMul_no_wrap](declarations/wordmul-no-wrap--3e2330476c6c7e4b4d80b1dc.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [checkedWordAdd_refines](declarations/checkedwordadd-refines--ec943e99a8700a1772e8d580.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [checkedWordMul_refines](declarations/checkedwordmul-refines--e40893c5f7206a6047a91b6a.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sumFrom](declarations/sumfrom--8a9f14e87e7bb6393c195e99.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sumFrom_spec](declarations/sumfrom-spec--8ebe05c2a081dcfbdae47cc0.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sumFrom_eq_some_iff](declarations/sumfrom-eq-some-iff--a7a277ceb5b9afc0d578d8f3.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sumFrom_eq_none_iff](declarations/sumfrom-eq-none-iff--a044a5cefae10a5803a5f2ba.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [products](declarations/products--8d74b7f1507663fb0ff2ca2a.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [dotFrom](declarations/dotfrom--47e1e1029a0500e0d3e76434.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dotFrom_spec](declarations/dotfrom-spec--e1533fe0e831c9c85e0ce69f.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dotFrom_eq_some_iff](declarations/dotfrom-eq-some-iff--870b633033327cd1390837dd.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dotFrom_eq_none_iff](declarations/dotfrom-eq-none-iff--57a547d09855165c89fbb611.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
