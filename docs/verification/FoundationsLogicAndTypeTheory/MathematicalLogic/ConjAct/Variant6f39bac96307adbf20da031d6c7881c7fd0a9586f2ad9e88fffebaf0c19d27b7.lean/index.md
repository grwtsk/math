# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ConjAct.Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c44596af38e32f4b6fd2aed2e01cda63dabdad50",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c44596af38e32f4b6fd2aed2e01cda63dabdad50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Factors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_conj_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean/declarations/mem-conj-support--b3a292381cd2579b84f85f74.md) | 32 | `result-track:b3a292381cd2579b84f85f7408d1294881a8b5c25595707edd95be7f5987c2b0` |
| 2 | `theorem` | [cycleFactorsFinset_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean/declarations/cyclefactorsfinset-conj--0ad3e469d4bb5345186324ab.md) | 38 | `result-track:0ad3e469d4bb5345186324ab0d579e83fc0bd01185939a122ad0a73c4ed328a6` |
| 3 | `theorem` | [mem_cycleFactorsFinset_conj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean/declarations/mem-cyclefactorsfinset-conj--e9f4c6bee3b4d3308ab197ad.md) | 50 | `result-track:e9f4c6bee3b4d3308ab197ade477805c6552cb3b149b1239b2ea82261d97cfc9` |
| 4 | `theorem` | [cycleFactorsFinset_conj_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConjAct/Variant6f39bac96307adbf20da031d6c7881c7fd0a9586f2ad9e88fffebaf0c19d27b7.lean/declarations/cyclefactorsfinset-conj-eq--570b9162dc64c2b8e409af17.md) | 56 | `result-track:570b9162dc64c2b8e409af17d4ec04359ba88b3c363a13066ea788cc5097cd52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
