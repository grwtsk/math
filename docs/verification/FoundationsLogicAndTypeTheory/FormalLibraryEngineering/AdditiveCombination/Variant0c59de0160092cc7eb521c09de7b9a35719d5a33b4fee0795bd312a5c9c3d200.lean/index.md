# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditiveCombination.Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2832808d7b80914afed648efe8cae5b860ea9b85",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2832808d7b80914afed648efe8cae5b860ea9b85`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombinationPrime` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_smul_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/declarations/pf-smul-c--569847e951332298a9083e67.md) | 52 | `result-track:569847e951332298a9083e67561e1eb6eafb563c5218f90528d6055b82e59c18` |
| 2 | `theorem` | [c_smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/declarations/c-smul-pf--ba15a7683030ce12bfffe345.md) | 53 | `result-track:ba15a7683030ce12bfffe345249d6f81f5c252aabc9439f4c934107558f452b3` |
| 3 | `theorem` | [smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/declarations/smul-pf--37d3c3c775e542854a77b1cb.md) | 54 | `result-track:37d3c3c775e542854a77b1cb60f93354b28b6d841ff5f373c68868505b853197` |
| 4 | `def` | [expandAdditiveCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/declarations/expandadditivecombo--868f1996b8c8ee449f030dc0.md) | 65 | `declaration-track:868f1996b8c8ee449f030dc0a55600373b292963717880c4fdd7ab50c7899d9a` |
| 5 | `def` | [elabAdditiveCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/declarations/elabadditivecombination--0e93613d5dce2e9fbb36acaa.md) | 106 | `declaration-track:0e93613d5dce2e9fbb36acaa5f893f73f36c43e643b18ef8d5d4c37b872c6f7d` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/declarations/syntax--4c36a3d60f497e1014286c80.md) | 190 | `declaration-track:4c36a3d60f497e1014286c80d9eeaecb11daf1f9f03eb62ec59fc27b1862bee4` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variant0c59de0160092cc7eb521c09de7b9a35719d5a33b4fee0795bd312a5c9c3d200.lean/declarations/elab-rules--36089990639d1fe955a0acca.md) | 192 | `declaration-track:36089990639d1fe955a0accaaf083fa3782ffbb51685d1b6b0576ad0f69871fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
