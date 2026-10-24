# Verification target: GRWTSK.Algebra.LinearAlgebra.Span.Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2081daeb5777b12f4b0858ac940345d6205a2c72",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2081daeb5777b12f4b0858ac940345d6205a2c72`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/ker-lsingle--8aee5e45eac345bd760ade89.md) | 29 | `result-track:8aee5e45eac345bd760ade895c458f667ef0bf6ed9424aa09de99a6334f5cddd` |
| 2 | `theorem` | [lsingle_range_le_ker_lapply](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/lsingle-range-le-ker-lapply--2e62b5bf159c5527c2e810e7.md) | 32 | `result-track:2e62b5bf159c5527c2e810e75d928a122fee0ae294904a9ff1873eafefc2abd3` |
| 3 | `theorem` | [iInf_ker_lapply_le_bot](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/iinf-ker-lapply-le-bot--292f8896b906685fa60e4027.md) | 41 | `result-track:292f8896b906685fa60e40277046ac96aea51b9cb8d1b473f320ad671ef4ccfa` |
| 4 | `theorem` | [iSup_lsingle_range](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/isup-lsingle-range--12f16c312a5011a0d70d819d.md) | 45 | `result-track:12f16c312a5011a0d70d819d63306f4f2ccbd979e706f06bc30106b038650910` |
| 5 | `theorem` | [disjoint_lsingle_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/disjoint-lsingle-lsingle--3100141c3d83d60b65b3a619.md) | 50 | `result-track:3100141c3d83d60b65b3a6197db251d6cc42c7321e9e51cb611ca8e37d905dac` |
| 6 | `theorem` | [span_single_image](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/span-single-image--34b7a1dce32509e6cd3fc497.md) | 67 | `result-track:34b7a1dce32509e6cd3fc4970254dfe1d116e244ec466b4722cdcabb05123ad5` |
| 7 | `theorem` | [Submodule.exists_finset_of_mem_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/submodule-exists-finset-of-mem-isup--8bae774e02f7bc8f65c69dd0.md) | 78 | `result-track:8bae774e02f7bc8f65c69dd0aa9186e0d9bdb1f3608741046fbbe97f37b60a22` |
| 8 | `theorem` | [Submodule.mem_iSup_iff_exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/submodule-mem-isup-iff-exists-finset--db8c0ecb97010778e7806e8f.md) | 87 | `result-track:db8c0ecb97010778e7806e8f0cb02ac165b60260189ad9738f5390482ffa5902` |
| 9 | `theorem` | [Submodule.mem_sSup_iff_exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Span/Variant985d4cbd3e7ee4236f9b1f118f9ba15456d1dbacfb4cc1e391c7bd8d3c4ba8a7.lean/declarations/submodule-mem-ssup-iff-exists-finset--0880e126eac6c924130c79b0.md) | 92 | `result-track:0880e126eac6c924130c79b0b55b02d3d9549c5439cfb2d88c57215df5826bf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
