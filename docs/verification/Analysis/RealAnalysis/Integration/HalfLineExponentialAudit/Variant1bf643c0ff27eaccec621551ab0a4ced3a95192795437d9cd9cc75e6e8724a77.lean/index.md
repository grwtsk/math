# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineExponentialAudit.Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "565c307161b82d0f040089e85f80010954ab5359",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `565c307161b82d0f040089e85f80010954ab5359`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfLineMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/halflinemeasure--421e4c599922823edfe5044d.md) | 20 | `declaration-track:421e4c599922823edfe5044d97442d471f23272c591e230ac289659f51d6547d` |
| 2 | `abbrev` | [H](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/h--5f334cf5aec77ec07f590f31.md) | 23 | `declaration-track:5f334cf5aec77ec07f590f31264faf035a39a511a607fe25049d4d2ae95c6598` |
| 3 | `def` | [exponentialFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialfunction--743e970a994c9f311cd02a1f.md) | 26 | `declaration-track:743e970a994c9f311cd02a1f204bd98c5eed2d69ddcd4c7aa012eba127a1376b` |
| 4 | `theorem` | [exponentialFunction_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialfunction-continuous--d3a925e4f65e0dd5c72efc20.md) | 28 | `result-track:d3a925e4f65e0dd5c72efc20fc4b23b7e62729b8b89fe7f3f16cd67c86175e39` |
| 5 | `theorem` | [exponentialFunction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialfunction-integrable--451fe9adac5f430db482153a.md) | 32 | `result-track:451fe9adac5f430db482153a4a605c60f8887d9cb26503b031aa28d12f0f4701` |
| 6 | `theorem` | [exponentialFunction_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialfunction-norm-sq--f10ee4f5f6d71de2b82bace7.md) | 36 | `result-track:f10ee4f5f6d71de2b82bace737b6ca395a18a63717f70a4e84c9bec85c158745` |
| 7 | `theorem` | [exponentialFunction_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialfunction-sq-integrable--07bc43f7edcdc9d5b2b18f8e.md) | 45 | `result-track:07bc43f7edcdc9d5b2b18f8e629325a46745edb5786291737d443d174f247800` |
| 8 | `theorem` | [exponentialFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialfunction-memlp--0a10692edc72b5279b685eca.md) | 50 | `result-track:0a10692edc72b5279b685ecae930927d4de1286d4daeb32dde7217fb979ee543` |
| 9 | `theorem` | [exponentialFunction_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialfunction-sq-integral--93e788d0229e31c62e0baafe.md) | 56 | `result-track:93e788d0229e31c62e0baafe5f48dd552ade33536240579c5af2970fb64e7cf2` |
| 10 | `def` | [exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialvector--4020362f2f9eb20f071b642d.md) | 63 | `declaration-track:4020362f2f9eb20f071b642d01906ffc216e646ca675436d38a10cba269ec90f` |
| 11 | `theorem` | [exponentialVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialvector-ae--160c3b01493c15ceb3d753b3.md) | 66 | `result-track:160c3b01493c15ceb3d753b3d0b5d0741a05688c9447d66d5e26a2d034918220` |
| 12 | `theorem` | [pointwise_inner_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/pointwise-inner-exponential--eb21cd88b84f63fced8a1e4d.md) | 70 | `result-track:eb21cd88b84f63fced8a1e4d8e0baf7cad898f6747aff2f569825d084dea3e04` |
| 13 | `theorem` | [inner_exponential_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/inner-exponential-integrable--44afecb01ecb2364460d9751.md) | 80 | `result-track:44afecb01ecb2364460d975187e43eb0bff11b289b33f3baabaca65416471162` |
| 14 | `theorem` | [inner_exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/inner-exponential-integral--52e202e0036125b9f76d8e64.md) | 86 | `result-track:52e202e0036125b9f76d8e6416c306ea122058f1e2e52b3fb19416a9c8dd6d3d` |
| 15 | `theorem` | [inner_exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/inner-exponentialvector--28b5876a669bce2fbf9ed96c.md) | 95 | `result-track:28b5876a669bce2fbf9ed96c14e151b01a9151a06233343754450fffa27913de` |
| 16 | `theorem` | [exponentialVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialvector-norm-sq--46baaf791222741db415f389.md) | 106 | `result-track:46baaf791222741db415f389131b0aa209d257a30267007f6c5e31116d461126` |
| 17 | `theorem` | [exponentialVector_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/exponentialvector-ne-zero--a5875c3ffd40a809e7add96a.md) | 117 | `result-track:a5875c3ffd40a809e7add96a1ae12c0d80527ceab4329abaaaa29141eae99f68` |
| 18 | `def` | [referenceVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/referencevector--28b5bf3f8d0e1cba8b871081.md) | 126 | `declaration-track:28b5bf3f8d0e1cba8b87108178a7854613d6194c577fead694fe7bdbd843b83c` |
| 19 | `theorem` | [referenceVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/referencevector-ae--bc9ea89b596bec5f82dc2223.md) | 128 | `result-track:bc9ea89b596bec5f82dc222339133ff6ea0cf61aa9238ac58521ab9477053be5` |
| 20 | `theorem` | [referenceVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/referencevector-norm-sq--4718562e489752ecd87a76f0.md) | 134 | `result-track:4718562e489752ecd87a76f0aebd28281dc877ed064ec11175fae0ce3be1b513` |
| 21 | `theorem` | [inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/inner-reference-exponential--2918ed69d990d4ca866f1e91.md) | 137 | `result-track:2918ed69d990d4ca866f1e913b6e04c6bd92fe3020704e1217bb633f93f95951` |
| 22 | `theorem` | [inner_exponential_reference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/inner-exponential-reference--4b64a239f62336bc0360f5fa.md) | 141 | `result-track:4b64a239f62336bc0360f5faffb16042bda311b91d3b16d7a8693bd25a57a116` |
| 23 | `theorem` | [norm_sq_inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/norm-sq-inner-reference-exponential--661dd05896f06a696426d33f.md) | 145 | `result-track:661dd05896f06a696426d33f7cc8b0044ab3823b8ae926fd0c440a0bc20195d3` |
| 24 | `theorem` | [reference_projection_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/reference-projection-coefficient--9d518b748faa7fa096fb1ce8.md) | 153 | `result-track:9d518b748faa7fa096fb1ce80fdd477040ead2182904e9af40453b413fa57e31` |
| 25 | `theorem` | [one_add_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/one-add-ne-zero--56e943df9c7a80ff8b0eadbc.md) | 160 | `result-track:56e943df9c7a80ff8b0eadbc875eeea979ef67f321d026833e4db011b07e5129` |
| 26 | `theorem` | [reference_projection_coefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponentialAudit/Variant1bf643c0ff27eaccec621551ab0a4ced3a95192795437d9cd9cc75e6e8724a77.lean/declarations/reference-projection-coefficient-pos--1d7d5561bd2c0cde47a1755e.md) | 166 | `result-track:1d7d5561bd2c0cde47a1755e6649067f18cc35ae2847681bc5c08c99c735afce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
