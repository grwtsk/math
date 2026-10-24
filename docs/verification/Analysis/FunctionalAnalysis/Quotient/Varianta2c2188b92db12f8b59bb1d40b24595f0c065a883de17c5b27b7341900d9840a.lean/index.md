# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Quotient.Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5727659fde62e44c0f12da6d6424afc6c668aa7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5727659fde62e44c0f12da6d6424afc6c668aa7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Null` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_03c57ab193fd23a4` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_42f3036a02f45bbd` — import line 5; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_46787b9141870b26` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_b18b56e0567ffc9e` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_c7486fef26d69dfd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.A_deeabb9e7a5211c2` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rawInner_respects_quotient](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/rawinner-respects-quotient--92f0f744ca0bab58481cf667.md) | 33 | `result-track:92f0f744ca0bab58481cf6677a2b865b7917ed2f0dae1263e879efe8cafe8891` |
| 2 | `def` | [preKernelInner](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/prekernelinner--8ff397312db3590e525e3789.md) | 50 | `declaration-track:8ff397312db3590e525e3789dbe5a6ef7b937413ac35e5e06a8b06d070730119` |
| 3 | `theorem` | [preKernelInner_wellDefined](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/prekernelinner-welldefined--6da403a6719b2b2339049f0d.md) | 58 | `result-track:6da403a6719b2b2339049f0d9d18bbc12625e46b91f75c16631bf82b86f0a9c8` |
| 4 | `def` | [preKernelPreCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/prekernelprecore--63e0661b8e8edfe9c09b3eaa.md) | 66 | `declaration-track:63e0661b8e8edfe9c09b3eaadb21d674bbcb5400482263d17282851a9e484f97` |
| 5 | `def` | [preKernelCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/prekernelcore--6cfc3992e4c444db6c0f6401.md) | 114 | `declaration-track:6cfc3992e4c444db6c0f6401b1df0691db2dddda937b6b634db0e4df6c25e871` |
| 6 | `instance` | [instPreKernelNormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/instprekernelnormedaddcommgroup--c823cb1dfdea78b11fc486d7.md) | 126 | `declaration-track:c823cb1dfdea78b11fc486d75a36ad7e841b2d2dc0b866549bf5c437ac1b65ce` |
| 7 | `instance` | [instPreKernelInnerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/instprekernelinnerproductspace--61ddfb5b6f1fac59ddd71cbd.md) | 133 | `declaration-track:61ddfb5b6f1fac59ddd71cbde510eff7cf88824d4c295a87f17129df0f64350f` |
| 8 | `theorem` | [preKernel_inner_self_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/prekernel-inner-self-eq-zero-iff--552e0e6e3a7425801e784774.md) | 138 | `result-track:552e0e6e3a7425801e784774ae57410c1e0b8e894ab5769a2c8b8a82d5ba102f` |
| 9 | `theorem` | [preKernelMk_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/prekernelmk-eq-zero-iff--ef32746317cdceacae7745af.md) | 146 | `result-track:ef32746317cdceacae7745afa09bc87638d3a964969a3599c007eedf99bcc56e` |
| 10 | `theorem` | [preKernelInner_basisVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Quotient/Varianta2c2188b92db12f8b59bb1d40b24595f0c065a883de17c5b27b7341900d9840a.lean/declarations/prekernelinner-basisvector--f5e800917f1ee382f2631a97.md) | 155 | `result-track:f5e800917f1ee382f2631a97abf41c5020ba4fad29cf0c33d1361397a8443683` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
