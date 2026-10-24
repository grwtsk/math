# Verification target: GRWTSK.InformationTheory.Huffman.FrequencyRefinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a49b05f6ae675f709fac087ee6a5d6609cfe1ddd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/FrequencyRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a49b05f6ae675f709fac087ee6a5d6609cfe1ddd`.

Source path: `GRWTSK/InformationTheory/Huffman/FrequencyRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/FrequencyRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.Builder`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.InformationTheory.Huffman.CheckedArithmetic`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [increment](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/increment--606e20440755702d16980dd0.md) | 20 | `declaration-track:606e20440755702d16980dd02e327a6fba248a757d1a86df44faf4a115789d8c` |
| 2 | `def` | [countLoop](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/countloop--7dfbbffc37da2429bc86f460.md) | 23 | `declaration-track:7dfbbffc37da2429bc86f46061ce4d66f0ab763d625628388eb232a12cc61394` |
| 3 | `theorem` | [countLoop_eq](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/countloop-eq--c0667e42b8325cc8b6f16c0b.md) | 27 | `result-track:c0667e42b8325cc8b6f16c0bb3c86efed4b2fd02fc4e54015e11edf36aff3227` |
| 4 | `theorem` | [countLoop_zero](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/countloop-zero--4ba5a02fc57049c67cf97647.md) | 41 | `result-track:4ba5a02fc57049c67cf976477a922736293dc53f864545a9096c222e2f3d4f6d` |
| 5 | `theorem` | [countLoop_le](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/countloop-le--e117d06f955a515ddc0fd00a.md) | 48 | `result-track:e117d06f955a515ddc0fd00a4383e2442aebe4f1084365834155ebd288bafbc4` |
| 6 | `def` | [checkedIncrement](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedincrement--c5f34a9460026bcdd3d4117d.md) | 54 | `declaration-track:c5f34a9460026bcdd3d4117da378d5ac32af759f63d081feddd47559cca4ced4` |
| 7 | `theorem` | [checkedIncrement_succeeds_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedincrement-succeeds-iff--97fb418619fdc21749903167.md) | 57 | `result-track:97fb418619fdc21749903167e85fef8231a4636b5c6d3f49c759a83c6ac1a9d4` |
| 8 | `def` | [checkedCountLoop](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedcountloop--28ad52b6316300d0380cf751.md) | 62 | `declaration-track:28ad52b6316300d0380cf7511b2b6e986eea4c3bbc4c885f4b66d9929cb67b08` |
| 9 | `theorem` | [increment_count](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/increment-count--424ae8424e087429c37aae91.md) | 69 | `result-track:424ae8424e087429c37aae913e3a2e9f1be54e4a52822bb67229220991b6da99` |
| 10 | `theorem` | [checkedCountLoop_agrees](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedcountloop-agrees--ef3e4e612068e91be131fe96.md) | 78 | `result-track:ef3e4e612068e91be131fe9636b4cd840c5d4fd503e36faf056471ea0780f4f1` |
| 11 | `theorem` | [checkedCountLoop_of_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedcountloop-of-bound--a69feae833f481e66e5288fe.md) | 91 | `result-track:a69feae833f481e66e5288fec3696cc74b3468fee61e1745a71489de6a612701` |
| 12 | `theorem` | [checkedCountLoop_result_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedcountloop-result-bound--ea6e56d014ab4cdb52e69f18.md) | 110 | `result-track:ea6e56d014ab4cdb52e69f185b941770cc13b04a38d3cf5fb7d53c23d98a170d` |
| 13 | `theorem` | [checkedCountLoop_zero_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedcountloop-zero-iff--4ac555a30f2f6489a1f18c89.md) | 129 | `result-track:4ac555a30f2f6489a1f18c89a251be0d76dafae0e82adfe307e689b41ddea6e5` |
| 14 | `theorem` | [checkedCountLoop_zero_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/FrequencyRefinement.lean/declarations/checkedcountloop-zero-none-iff--0453094ef00007ea796aaa3c.md) | 143 | `result-track:0453094ef00007ea796aaa3c1cb4e827f363e5627f6c3444c2866117b987cf94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
