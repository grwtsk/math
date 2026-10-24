# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierL1L2Forward.Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b3cf73f380430cb5cb0064f607526d4e12118c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b3cf73f380430cb5cb0064f607526d4e12118c`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourier_mul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/declarations/integral-fourier-mul-eq--c793c842676c3f059257e28b.md) | 12 | `result-track:c793c842676c3f059257e28b20d961e6eb1e3caa9a92d32d24102aec596ccf10` |
| 2 | `theorem` | [fourier_sub](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/declarations/fourier-sub--efc482724e4b6cae8d9467ef.md) | 25 | `result-track:efc482724e4b6cae8d9467ef9c5f97b90a8f16d9fa9c2a8d4f4902c6b2ded363` |
| 3 | `theorem` | [continuous_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/declarations/continuous-fourier--2631661bd9e5829f047ce8aa.md) | 41 | `result-track:2631661bd9e5829f047ce8aa0a4d427e1d0b92854ce4cf426adc21c2f07c899a` |
| 4 | `theorem` | [fourier_toLp_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/declarations/fourier-tolp-ae--36ffb53a24c8bd76721aa61f.md) | 48 | `result-track:36ffb53a24c8bd76721aa61f7869b4431d41cdef9a47bb154563f559fc892522` |
| 5 | `theorem` | [fourier_memLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/declarations/fourier-memlp--b4cf689fdb180777d462ff9d.md) | 79 | `result-track:b4cf689fdb180777d462ff9d90ad0fc6f8fc1c983f9aec1d6ae41345f850b5fb` |
| 6 | `theorem` | [fourier_toLp_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/declarations/fourier-tolp-eq--60e3ccf175d71b07f22acec8.md) | 84 | `result-track:60e3ccf175d71b07f22acec8bb282c8df6dd00cdcea44acaec5c9b8a09a85bc3` |
| 7 | `theorem` | [norm_fourier_toLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierL1L2Forward/Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.lean/declarations/norm-fourier-tolp--f8b486fbbbc8795ea1042707.md) | 90 | `result-track:f8b486fbbbc8795ea10427075df3e224791e92fce1bd6c0d74f085de7d03b0ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
