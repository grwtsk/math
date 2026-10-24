# Verification target: GRWTSK.InformationTheory.Huffman.CheckedArithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8050af3a53e0eedf8d65b9527c50e8608d576ff7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/CheckedArithmetic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8050af3a53e0eedf8d65b9527c50e8608d576ff7`.

Source path: `GRWTSK/InformationTheory/Huffman/CheckedArithmetic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/CheckedArithmetic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxU64](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/maxu64--5aac83382d986f77992f3f95.md) | 19 | `declaration-track:5aac83382d986f77992f3f95932ed546fc566f0811fe9906dad120fe020fc13f` |
| 2 | `def` | [checkedAdd](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedadd--9dec4b563ea262e9188d6438.md) | 21 | `declaration-track:9dec4b563ea262e9188d64381d663252e849a33142361363ff2825ba1506a9f3` |
| 3 | `def` | [checkedMul](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedmul--493865b4a172727edfd27111.md) | 24 | `declaration-track:493865b4a172727edfd271116174b520c9f186c77d37839080ecc4e70926bd39` |
| 4 | `def` | [checkedSucc](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedsucc--f144b5c5db6f9436e8d68257.md) | 27 | `declaration-track:f144b5c5db6f9436e8d682576d48034dfb4e9336d6d0acb629ed32d364469be6` |
| 5 | `theorem` | [checkedAdd_eq_some_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedadd-eq-some-iff--3d162b064441f1869ab13418.md) | 29 | `result-track:3d162b064441f1869ab1341808f6b6c0b3abb3d01064d8472d85f0f27d416eb0` |
| 6 | `theorem` | [checkedAdd_eq_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedadd-eq-none-iff--4b95dcc2201b8b78320ba226.md) | 34 | `result-track:4b95dcc2201b8b78320ba2266dcb45d88f24ad17dc31020ad261ae0ef01e8cde` |
| 7 | `theorem` | [checkedMul_eq_some_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedmul-eq-some-iff--419607766f16f52925ce33f9.md) | 38 | `result-track:419607766f16f52925ce33f956d5d091b0599a7fae861d3a94f2328400d9c717` |
| 8 | `theorem` | [checkedMul_eq_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedmul-eq-none-iff--c01dfbfa8da68ee320684aba.md) | 43 | `result-track:c01dfbfa8da68ee320684aba35d1cb7ab59d2839c140627e74d71c388c8bcc6c` |
| 9 | `theorem` | [checkedSucc_eq_some_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedsucc-eq-some-iff--0618d516b26ab21b719a5c57.md) | 47 | `result-track:0618d516b26ab21b719a5c57bd07fc9e51110181457e16d4db6106ce4c83601b` |
| 10 | `theorem` | [checkedSucc_eq_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedsucc-eq-none-iff--af9d660218e26666431a4fc3.md) | 52 | `result-track:af9d660218e26666431a4fc31803b6d83dc1ab1c1daa464d2ee6f4b49aaf7a3d` |
| 11 | `theorem` | [checkedAdd_at_boundary](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedadd-at-boundary--805fbfb0d84b9360fdf48465.md) | 57 | `result-track:805fbfb0d84b9360fdf48465a23c05cead27ddfb558f38893957923584e562c0` |
| 12 | `theorem` | [checkedSucc_max](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedsucc-max--001c022b30d0b3b0609e60d3.md) | 61 | `result-track:001c022b30d0b3b0609e60d3b2e8f8069d9289e1d808f50d4408c1ef944d336c` |
| 13 | `theorem` | [checkedMul_at_boundary](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedmul-at-boundary--9e98b94e98eaa707f21305b1.md) | 64 | `result-track:9e98b94e98eaa707f21305b1b83e221af22e9ffc1c861fcd4ac3933e049ca31f` |
| 14 | `def` | [checkedWordAdd](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedwordadd--aa2945de96cfc8b508022176.md) | 69 | `declaration-track:aa2945de96cfc8b5080221769e072d8b9fc0d16cf122c8c626379ab87891aa00` |
| 15 | `def` | [checkedWordMul](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedwordmul--22928d77e3b17eb678b37132.md) | 72 | `declaration-track:22928d77e3b17eb678b37132c526783bf130b4eeaa76ff5a46ef7a160c44765a` |
| 16 | `theorem` | [wordAdd_no_wrap](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/wordadd-no-wrap--e5b1e05fbc92ab29082baea6.md) | 75 | `result-track:e5b1e05fbc92ab29082baea649d59abebbf44e0d42691b73cbb8d824090a49ca` |
| 17 | `theorem` | [wordMul_no_wrap](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/wordmul-no-wrap--3e2330476c6c7e4b4d80b1dc.md) | 82 | `result-track:3e2330476c6c7e4b4d80b1dcbbbdc638b577e8fa20281b8f542a3708da535214` |
| 18 | `theorem` | [checkedWordAdd_refines](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedwordadd-refines--ec943e99a8700a1772e8d580.md) | 91 | `result-track:ec943e99a8700a1772e8d580850712587015252bd88cd686dab5fb5fe45ec628` |
| 19 | `theorem` | [checkedWordMul_refines](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/checkedwordmul-refines--e40893c5f7206a6047a91b6a.md) | 97 | `result-track:e40893c5f7206a6047a91b6a3263f5fa3ccb6135a6208536eec19dd53d43738d` |
| 20 | `def` | [sumFrom](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/sumfrom--8a9f14e87e7bb6393c195e99.md) | 103 | `declaration-track:8a9f14e87e7bb6393c195e995cfdbdecfde105c2a957cf2d910cbc634736abf4` |
| 21 | `theorem` | [sumFrom_spec](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/sumfrom-spec--8ebe05c2a081dcfbdae47cc0.md) | 110 | `result-track:8ebe05c2a081dcfbdae47cc0fb683b026b274f74ac0bb38799ddd716189ca38f` |
| 22 | `theorem` | [sumFrom_eq_some_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/sumfrom-eq-some-iff--a7a277ceb5b9afc0d578d8f3.md) | 126 | `result-track:a7a277ceb5b9afc0d578d8f3fa18dc4948fca16c977b835d3981bd9be5f9d401` |
| 23 | `theorem` | [sumFrom_eq_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/sumfrom-eq-none-iff--a044a5cefae10a5803a5f2ba.md) | 133 | `result-track:a044a5cefae10a5803a5f2ba34d0e728cbab6b69493cc3e4d8780271d80086d4` |
| 24 | `def` | [products](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/products--8d74b7f1507663fb0ff2ca2a.md) | 139 | `declaration-track:8d74b7f1507663fb0ff2ca2a5071ab6286644cbd1a4929a694a3862b8d033ea8` |
| 25 | `def` | [dotFrom](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/dotfrom--47e1e1029a0500e0d3e76434.md) | 143 | `declaration-track:47e1e1029a0500e0d3e7643467d4074688c90d7188984c0c9dcd20c34ebe87ed` |
| 26 | `theorem` | [dotFrom_spec](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/dotfrom-spec--e1533fe0e831c9c85e0ce69f.md) | 153 | `result-track:e1533fe0e831c9c85e0ce69f4107385691ca99745b16888443755054dff1d2ad` |
| 27 | `theorem` | [dotFrom_eq_some_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/dotfrom-eq-some-iff--870b633033327cd1390837dd.md) | 172 | `result-track:870b633033327cd1390837ddedd1cbb1ef219cbc54968a7819cb121c881abf31` |
| 28 | `theorem` | [dotFrom_eq_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/declarations/dotfrom-eq-none-iff--57a547d09855165c89fbb611.md) | 179 | `result-track:57a547d09855165c89fbb61128943e37246244c1e47e84676ecb74f0c912463f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
