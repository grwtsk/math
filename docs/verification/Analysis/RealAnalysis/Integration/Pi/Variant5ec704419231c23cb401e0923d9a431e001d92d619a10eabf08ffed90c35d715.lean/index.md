# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Pi.Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b48fa381d75174a0e3403bb8d0264c4f0cc9da",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b48fa381d75174a0e3403bb8d0264c4f0cc9da`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [memLp_pi_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/declarations/memlp-pi-iff--2c15e1c1da761c9f3db457ff.md) | 38 | `result-track:2c15e1c1da761c9f3db457ff90c895b4acfa625fe1bff7b2dc2a597ae193bc89` |
| 2 | `lemma` | [integrable_pi_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/declarations/integrable-pi-iff--e5825367d167cbe153d042bf.md) | 49 | `result-track:e5825367d167cbe153d042bf36d8a86fcbd39ee670d8ca5cf0cf811835979f08` |
| 3 | `lemma` | [eval_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/declarations/eval-integral--246518f81623f9842d3e6cca.md) | 56 | `result-track:246518f81623f9842d3e6cca0f52fecdc70c15817bb57f31fbc10783d18d72a3` |
| 4 | `lemma` | [memLp_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/declarations/memlp-prod-iff--9c1b783a8b9cb4e481deca74.md) | 67 | `result-track:9c1b783a8b9cb4e481deca743a22749ebbb2f30ee7f9aaa834784570e1eea2ef` |
| 5 | `lemma` | [MemLp.fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/declarations/memlp-fst--a6006206484301516e464035.md) | 79 | `result-track:a6006206484301516e46403593f324b898f95f66e25fb676f395431dfb1bea53` |
| 6 | `lemma` | [MemLp.snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Pi/Variant5ec704419231c23cb401e0923d9a431e001d92d619a10eabf08ffed90c35d715.lean/declarations/memlp-snd--4cce62fc5c5a886c123107be.md) | 82 | `result-track:4cce62fc5c5a886c123107be2a96f7fdcf3c90976a1c59b26bd067d89b0bd3d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
