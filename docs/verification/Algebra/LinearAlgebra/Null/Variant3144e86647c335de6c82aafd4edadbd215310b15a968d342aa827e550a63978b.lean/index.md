# Verification target: GRWTSK.Algebra.LinearAlgebra.Null.Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c0b5cf7c01440ce77f8c87c871d61bbc42640e6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c0b5cf7c01440ce77f8c87c871d61bbc42640e6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Raw` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rawEnergyZero_orthogonal_all](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/declarations/rawenergyzero-orthogonal-all--d7b876097eecf522a9a7282c.md) | 21 | `result-track:d7b876097eecf522a9a7282c4fd1ef0557c09de0652ec492f681004eea01fd9c` |
| 2 | `def` | [kernelNullSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/declarations/kernelnullsubmodule--1f17bc5df612bfef38534ae8.md) | 32 | `declaration-track:1f17bc5df612bfef38534ae84f29fcc8a604d0b81effcaf27415e324bd073c12` |
| 3 | `theorem` | [mem_kernelNullSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/declarations/mem-kernelnullsubmodule-iff--1eb5a485c5c7a16020aae0b2.md) | 48 | `result-track:1eb5a485c5c7a16020aae0b226ef337fe162de507ed5ee6e6d75866669a91c7a` |
| 4 | `theorem` | [null_orthogonal_all](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/declarations/null-orthogonal-all--080f54a7d75aabbd7ede6639.md) | 53 | `result-track:080f54a7d75aabbd7ede6639352f1822afde13306aa7f83b34b32922bfb67a3a` |
| 5 | `theorem` | [inner_self_eq_zero_iff_mem_kernelNullSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/declarations/inner-self-eq-zero-iff-mem-kernelnullsubmodule--f03609a1eaec2fe6a34bdc55.md) | 61 | `result-track:f03609a1eaec2fe6a34bdc551f1aee80cd16127b598a8904090cb07399058a75` |
| 6 | `theorem` | [rawInner_eq_of_sub_mem_left](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/declarations/rawinner-eq-of-sub-mem-left--9f5ced03d7ece8d5dc2255ac.md) | 68 | `result-track:9f5ced03d7ece8d5dc2255aca676592796eea001c78303d57825911c0b923f6f` |
| 7 | `theorem` | [rawInner_eq_of_sub_mem_right](../../../../../mathematics/Algebra/LinearAlgebra/Null/Variant3144e86647c335de6c82aafd4edadbd215310b15a968d342aa827e550a63978b.lean/declarations/rawinner-eq-of-sub-mem-right--0a8ee9fe8d5312053febb736.md) | 81 | `result-track:0a8ee9fe8d5312053febb736ae3e59cc99548e750631258c8b14e8bd5e77a8d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
