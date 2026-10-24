# Verification target: GRWTSK.Analysis.MeasureTheory.AEStabilizer.Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c08ff8b65092e921bc0f6ac2791b8181f75f3384",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c08ff8b65092e921bc0f6ac2791b8181f75f3384`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean.json)

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
| 1 | `def` | [aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/aestabilizer--72855df852e80b2e31c07972.md) | 51 | `declaration-track:72855df852e80b2e31c0797262da6364b7a6eea268dcb5e5532661ae3d17d26b` |
| 2 | `lemma` | [mem_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/mem-aestabilizer--19b0d2899ce2fa9b076c38a7.md) | 62 | `result-track:19b0d2899ce2fa9b076c38a7650e3c8c7b2731bba709dffbd65aa970163b8ebc` |
| 3 | `lemma` | [stabilizer_le_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/stabilizer-le-aestabilizer--edbdb5465c70e724d854450f.md) | 65 | `result-track:edbdb5465c70e724d854450fc23f5be69d3305436a44530157d5ac73d6d8fc3f` |
| 4 | `lemma` | [aestabilizer_empty](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/aestabilizer-empty--ffe52e37d3b6a88ca936aebb.md) | 70 | `result-track:ffe52e37d3b6a88ca936aebbf49f5e34ce03e6dbd218baa0a3ef648d9c66d39f` |
| 5 | `lemma` | [aestabilizer_univ](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/aestabilizer-univ--77577b8588400a56c16367f2.md) | 73 | `result-track:77577b8588400a56c16367f2fdf6ce14a7b576ba2513eabd6b3c858da3aa0aee` |
| 6 | `lemma` | [aestabilizer_congr](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/aestabilizer-congr--6802a7918df59b2d2d9538da.md) | 76 | `result-track:6802a7918df59b2d2d9538da87c0c72d029a428f6cb748b72c937a9a917d2a46` |
| 7 | `lemma` | [aestabilizer_of_eventuallyEmptyOrUniv](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/aestabilizer-of-eventuallyemptyoruniv--14accb8c0b709915df8bff67.md) | 80 | `result-track:14accb8c0b709915df8bff6772cee4b6a5a6d46819ad043d71cc8a630fcdf0f6` |
| 8 | `theorem` | [smul_ae_eq_self_of_mem_zpowers](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/smul-ae-eq-self-of-mem-zpowers--0c8ee490386cd99a5d41f27d.md) | 95 | `result-track:0c8ee490386cd99a5d41f27dedc7c9db164389c5bc0b0b5640bdc326926c2a92` |
| 9 | `theorem` | [inv_smul_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Variant068360527b5bf9f9cb803b1fba838b230474c6335007597b9c302ae37f58193f.lean/declarations/inv-smul-ae-eq-self--54aa6460ab8f6011caca992e.md) | 101 | `result-track:54aa6460ab8f6011caca992ef41f7d89e67b8c4129077c19468564a59d06de82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
