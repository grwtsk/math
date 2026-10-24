# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PathCompensation.Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e3a435fab2919aaad404e9e58eb8df511cd68db",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e3a435fab2919aaad404e9e58eb8df511cd68db`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Trace.ExactCompensation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.ResidueDeflection.Path` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pathCompensation](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean/declarations/pathcompensation--b8378f84e6c183a7c0f39596.md) | 17 | `declaration-track:b8378f84e6c183a7c0f39596306156ad576f2e7937b4161df5330c9b87ff01ec` |
| 2 | `def` | [pathCompensationBudget](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean/declarations/pathcompensationbudget--9d013f94c5b7828f7b1db096.md) | 39 | `declaration-track:9d013f94c5b7828f7b1db096bc585331036a2467507a6110c7ffb0d707989c97` |
| 3 | `theorem` | [pathEnergy_difference_eq_compensation](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean/declarations/pathenergy-difference-eq-compensation--5159968e5b30cac5fef074cf.md) | 64 | `result-track:5159968e5b30cac5fef074cf9644b96592fbc6ecdb65aa5ae21a50e31f69ea7e` |
| 4 | `theorem` | [pathEnergy_compensation_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean/declarations/pathenergy-compensation-bound--eacc12373ccbf8454bacf640.md) | 98 | `result-track:eacc12373ccbf8454bacf640445fb903377fc52442bd0bb7ea583e941b7619a6` |
| 5 | `theorem` | [pathEnergy_invariant_of_exactCompensation](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variante6e0619bfd0481b64dad4a6f1f83742ac825b20e5b5532d8d7a9449b3c783ebc.lean/declarations/pathenergy-invariant-of-exactcompensation--ed9ef02e74ab450aeff12663.md) | 157 | `result-track:ed9ef02e74ab450aeff126636e42f04af41f77c8ce69e1c6d7b915bc7a73df82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
