# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Pow.Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b05c631bd7793a49e480310fb6972104e9c73b6b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b05c631bd7793a49e480310fb6972104e9c73b6b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [strictConcaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/declarations/strictconcaveon-rpow--da096ca1701f22f6111fb80e.md) | 34 | `result-track:da096ca1701f22f6111fb80e0f4d10b46ed7356bf7b05a0569a254e103cb58ac` |
| 2 | `lemma` | [concaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/declarations/concaveon-rpow--a7102e9420c18a2da01d29e4.md) | 47 | `result-track:a7102e9420c18a2da01d29e41226961d0fec721adae9e36a23083cabc7856f3d` |
| 3 | `lemma` | [strictConcaveOn_sqrt](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/declarations/strictconcaveon-sqrt--19ff76cdf0379060431e4e02.md) | 55 | `result-track:19ff76cdf0379060431e4e02dff25f59e4557630044261ebe7a11ed937284efc` |
| 4 | `lemma` | [strictConcaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/declarations/strictconcaveon-rpow--b0b7b19c8d17c4eefe6a165a.md) | 67 | `result-track:b0b7b19c8d17c4eefe6a165a2627f2f894ce1b4a33fe0c3fd5e7f17c59dd72d9` |
| 5 | `lemma` | [concaveOn_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/declarations/concaveon-rpow--3d7e58a046eb3b3e86d69166.md) | 79 | `result-track:3d7e58a046eb3b3e86d69166f01c59e0eaf596e7639c403e7275f96a39fcaba1` |
| 6 | `lemma` | [strictConcaveOn_sqrt](../../../../../mathematics/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/declarations/strictconcaveon-sqrt--738cb645aa2e820a0fa66509.md) | 87 | `result-track:738cb645aa2e820a0fa6650937a29d4aa9e61ce4d871a7042f84e2fad3c2eecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
