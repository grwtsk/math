# Verification target: GRWTSK.Algebra.Colon.Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04c4a6fd09e82d0e2767b5c8236c3c88c678d369",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/index.md) · [Full source](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04c4a6fd09e82d0e2767b5c8236c3c88c678d369`.

Source path: `GRWTSK/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.Pointwise.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colon](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/colon--199e452cd8beddb322eec678.md) | 30 | `declaration-track:199e452cd8beddb322eec6788cc0d270b1945d300ad233dbfb3eb432a01720a5` |
| 2 | `theorem` | [mem_colon](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/mem-colon--e3fd3a86f63ad7ca582c00ff.md) | 40 | `result-track:e3fd3a86f63ad7ca582c00ffafc23e5bf725b9dd37664e0752a8b661de4f7437` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/instance--3c8591c11ff1a28f5ad2174f.md) | 42 | `declaration-track:3c8591c11ff1a28f5ad2174ff6925c86b4d698124acbeecde6daed94df48a711` |
| 4 | `theorem` | [colon_top](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/colon-top--1825503a6938a89c68fcd105.md) | 48 | `result-track:1825503a6938a89c68fcd105c0244c9c1fa1d558fac6f1df44b9d049484d5d5a` |
| 5 | `theorem` | [colon_bot](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/colon-bot--a9ea279b8843608357b15156.md) | 53 | `result-track:a9ea279b8843608357b151563fe81f03b0ba91d54c4301c10422490f667b6e9a` |
| 6 | `theorem` | [colon_mono](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/colon-mono--37c1b7c728126b0f59ec5579.md) | 56 | `result-track:37c1b7c728126b0f59ec5579fb9b9a7055e4b0078c32e657177d5d848f66dca5` |
| 7 | `theorem` | [mem_colon'](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/mem-colon--ec59a0bf904ed0751d287405.md) | 68 | `result-track:ec59a0bf904ed0751d28740522ee2651075eb8a3a6ba871f7cca5a3445080a8a` |
| 8 | `theorem` | [iInf_colon_iSup](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/iinf-colon-isup--79a20795f5dfda7de2ebdc35.md) | 71 | `result-track:79a20795f5dfda7de2ebdc3593e35451be89c74d9c352fa01c90b6dbb2189913` |
| 9 | `theorem` | [mem_colon_singleton](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/mem-colon-singleton--e8cef8b2bf4ba5b940117836.md) | 85 | `result-track:e8cef8b2bf4ba5b940117836aef9c27ad51b92f8867521f01ea69a2c2e4484f1` |
| 10 | `theorem` | [_root_.Ideal.mem_colon_singleton](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/root-ideal-mem-colon-singleton--b7d2bb5cc5945c5aaef9cf38.md) | 93 | `result-track:b7d2bb5cc5945c5aaef9cf38948c004fab5b8be1dda4fa7131b60c1b5c6dd285` |
| 11 | `lemma` | [annihilator_map_mkQ_eq_colon](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/annihilator-map-mkq-eq-colon--b6a4d5d65a5dbeae0eca9987.md) | 105 | `result-track:b6a4d5d65a5dbeae0eca9987f191cdac77d155afd66bc1a664c78200effe47a7` |
| 12 | `theorem` | [annihilator_quotient](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/annihilator-quotient--d19d7fcb951e2f6529dcef2c.md) | 111 | `result-track:d19d7fcb951e2f6529dcef2cca574faa65842e73fa3c28b555d909b95ff2b204` |
| 13 | `theorem` | [_root_.Ideal.annihilator_quotient](../../../../mathematics/Algebra/Colon/Variant45f92612c9a44fac14c37de302a5734726a14b1d5b413415e9d7192450459354.lean/declarations/root-ideal-annihilator-quotient--ff3c7ee9c03195df723bc6be.md) | 117 | `result-track:ff3c7ee9c03195df723bc6beacbc2ed2af9244d704b59279c00ed64826fadf95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
