# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoncommRing.Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "468f60861ff447ac05760737a55fcf8d039ae360",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `468f60861ff447ac05760737a55fcf8d039ae360`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nat_lit_mul_eq_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/declarations/nat-lit-mul-eq-nsmul--7910f2d6ab16f86029ad7281.md) | 26 | `result-track:7910f2d6ab16f86029ad7281cfa8d68014057add65958a4d0c5f3bb9f964a9ba` |
| 2 | `lemma` | [mul_nat_lit_eq_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/declarations/mul-nat-lit-eq-nsmul--7f5c2f89a3b2339ae206d381.md) | 28 | `result-track:7f5c2f89a3b2339ae206d381b8fc79127cc8ec3474e7870be835597f8211c638` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/declarations/syntax--ab1f08027fbb4efd7c105fa8.md) | 44 | `declaration-track:ab1f08027fbb4efd7c105fa8f07a9044d1bd55ba9d750d941666755ace997826` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoncommRing/Variant1bc171f4dfebac2520c508cbe65def3629fe96db50634a432b9af3c97ff07d99.lean/declarations/macro-rules--7958f8e6674af5cf3900af92.md) | 47 | `declaration-track:7958f8e6674af5cf3900af9288e2d82d7b0e3240f1af12f2f65fe1614beacd24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
