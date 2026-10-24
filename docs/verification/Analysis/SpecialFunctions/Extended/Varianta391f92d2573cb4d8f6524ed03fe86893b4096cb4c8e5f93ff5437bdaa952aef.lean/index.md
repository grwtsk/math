# Verification target: GRWTSK.Analysis.SpecialFunctions.Extended.Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6c8968e1e1054c142c16146397b6c46d2109099",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6c8968e1e1054c142c16146397b6c46d2109099`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Eval.Core` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalInterval](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval--dfd94709d81b5307e8eab5da.md) | 58 | `declaration-track:dfd94709d81b5307e8eab5da08235dd5d3af40d3d8a75cb9924610db7f310a06` |
| 2 | `theorem` | [evalInterval_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval-correct--05dc8097bdfcbbb4b7109746.md) | 85 | `result-track:05dc8097bdfcbbb4b7109746523c32bdf3549d0ee296cee90122ebb5cc7cda30` |
| 3 | `def` | [evalInterval1](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval1--318a507c4672ade489451daa.md) | 124 | `declaration-track:318a507c4672ade489451daa77d33e78d67fde3939bcf747a10f9a94875d39a6` |
| 4 | `theorem` | [evalInterval1_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval1-correct--b281278762de3935858a54e7.md) | 128 | `result-track:b281278762de3935858a54e7aefa8f2b64082eaa586f18a593fc0f337e4a9162` |
| 5 | `def` | [evalIntervalLogDepth](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalintervallogdepth--4cbb453c568c1a55ffa65215.md) | 145 | `declaration-track:4cbb453c568c1a55ffa652155cf0535381f4243448a3f3e5dc13835f36eb9d32` |
| 6 | `def` | [evalIntervalExpDepth](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalintervalexpdepth--d4fa6acf287b2f6ce0b2894e.md) | 147 | `declaration-track:d4fa6acf287b2f6ce0b2894e4e66a621844723789ce1e8d23df4b70043531375` |
| 7 | `def` | [evalInterval?](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval--1b1182c39ac6df50daca9eae.md) | 149 | `declaration-track:1b1182c39ac6df50daca9eaed60b414d03d9b76a64920cbbcb9c0219dde0c6c4` |
| 8 | `theorem` | [evalInterval?_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval-correct--2fe27680360ca0324f63be48.md) | 242 | `result-track:2fe27680360ca0324f63be486687dd75aee24308be5bfb854b53accb0933cbf2` |
| 9 | `def` | [evalInterval?1](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval-1--69974e21c8c46a3d6ea4b8a1.md) | 426 | `declaration-track:69974e21c8c46a3d6ea4b8a1f5bb93594dfe83f168937e39f1bf2e34684b8cd4` |
| 10 | `theorem` | [evalInterval?1_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval-1-correct--5666641e6cdde4823db7ed84.md) | 430 | `result-track:5666641e6cdde4823db7ed84d8e6580e9bc176e8d5e8e714e5e0096189e07f17` |
| 11 | `theorem` | [evalInterval?_le_of_hi](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval-le-of-hi--ab42eeadf36ec1b30e8a2378.md) | 438 | `result-track:ab42eeadf36ec1b30e8a2378689b3f3fa8e64ca96ba4e0857a780eb12eb9f7fa` |
| 12 | `theorem` | [evalInterval?_ge_of_lo](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/declarations/evalinterval-ge-of-lo--da0aa8cf352b56db148f3e4a.md) | 451 | `result-track:da0aa8cf352b56db148f3e4aaea44ba6771369c23331e2c4b0e0057b956befea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
