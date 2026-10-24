# Verification target: GRWTSK.Analysis.MeasureTheory.SMul.Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f90059885d703a6af73686094c76f50535d6f720",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f90059885d703a6af73686094c76f50535d6f720`.

Source path: `GRWTSK/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_const_smul_le](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnorm-const-smul-le--0a5e2b02c6851d4b3d0a6c58.md) | 44 | `result-track:0a5e2b02c6851d4b3d0a6c5899248064b897dd252dca1bf4145999c65dd35330` |
| 2 | `theorem` | [eLpNormEssSup_const_smul_le](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnormesssup-const-smul-le--c80bf64843f6635e40214a28.md) | 47 | `result-track:c80bf64843f6635e40214a28339ecd7d0c6dc0eef7b53e39ede3b40b6051c5e3` |
| 3 | `theorem` | [eLpNorm_const_smul_le](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnorm-const-smul-le--d68875eac54ad2ad99bb73b6.md) | 51 | `result-track:d68875eac54ad2ad99bb73b6654ae67bc1c240be34f1b4cbad9481bffea623e1` |
| 4 | `theorem` | [MemLp.const_smul](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/memlp-const-smul--8acf5cc257427390b7e1d87d.md) | 62 | `result-track:8acf5cc257427390b7e1d87d7c4c880d5a4f9316296e5d059b93954fff124b42` |
| 5 | `theorem` | [MemLp.const_mul](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/memlp-const-mul--431ff0bdd807fc9e4ae0eb8f.md) | 65 | `result-track:431ff0bdd807fc9e4ae0eb8f6c9ebe49570db0a1ed7f01fd4521098ecd84e50b` |
| 6 | `theorem` | [MemLp.mul_const](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/memlp-mul-const--16313e5233f93048845db7da.md) | 68 | `result-track:16313e5233f93048845db7da5baabe2c335288cada840f7369a8634c86cd3005` |
| 7 | `theorem` | [eLpNorm'_const_smul_le'](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnorm-const-smul-le--269847601abf5b8e8f56b5d1.md) | 80 | `result-track:269847601abf5b8e8f56b5d108733042a24a65ffab8bfc87cdfce331f6becc78` |
| 8 | `theorem` | [eLpNormEssSup_const_smul_le'](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnormesssup-const-smul-le--9f22a1a36e8240b84d257922.md) | 84 | `result-track:9f22a1a36e8240b84d257922ae515263ebd4b7cffbfd72d0c9a62f923f05453e` |
| 9 | `theorem` | [eLpNorm_const_smul_le'](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnorm-const-smul-le--829db0f7848f5bb9a084c14d.md) | 96 | `result-track:829db0f7848f5bb9a084c14dd8018130e85d7b707f3831c46450bad1eb27eee6` |
| 10 | `theorem` | [MemLp.const_smul'](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/memlp-const-smul--8912ecb74b523ffdce58b5cd.md) | 107 | `result-track:8912ecb74b523ffdce58b5cdabb0681b3676ffbe5af4171ffb8ab00f788ca7bd` |
| 11 | `theorem` | [MemLp.const_mul'](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/memlp-const-mul--ee880479ffd680a32d4b9a2d.md) | 112 | `result-track:ee880479ffd680a32d4b9a2d92002f3056a834a9f2a7a99fa2061b3918a0bf99` |
| 12 | `theorem` | [eLpNorm'_const_smul](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnorm-const-smul--0355f8147859d62b97ffbb48.md) | 128 | `result-track:0355f8147859d62b97ffbb487335d5060c6d7988d9ce2e00fbb7cb152653cbef` |
| 13 | `theorem` | [eLpNormEssSup_const_smul](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnormesssup-const-smul--b9e0eee95c39446018edfa8f.md) | 136 | `result-track:b9e0eee95c39446018edfa8f9c368febc5eb1183cce195220b2b0076dc2127ce` |
| 14 | `theorem` | [eLpNorm_const_smul](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnorm-const-smul--beef7f9c6195d4bf37e2ea4c.md) | 141 | `result-track:beef7f9c6195d4bf37e2ea4c21ac00fc6c8506ab51d4f9e688fd9c858632fb0f` |
| 15 | `lemma` | [eLpNorm_nsmul](../../../../../mathematics/Analysis/MeasureTheory/SMul/Variant982730b7ef091ca0a7d8d174b937e57de404e8f4149f7b6e2c47aa58837bc918.lean/declarations/elpnorm-nsmul--45402c6426566a43c8278cf4.md) | 149 | `result-track:45402c6426566a43c8278cf4446516d3736d65a4eb0d6665cbdc27cc460364a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
