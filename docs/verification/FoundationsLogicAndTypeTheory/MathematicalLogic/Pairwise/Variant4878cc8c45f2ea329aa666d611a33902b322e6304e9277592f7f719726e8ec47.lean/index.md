# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pairwise.Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba62702441eb939ec36bfc5e43dbe8db0e0aae5b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba62702441eb939ec36bfc5e43dbe8db0e0aae5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise--2241ca5d996136e854007cd5.md) | 30 | `declaration-track:2241ca5d996136e854007cd59ead977192328ff60a52eeff5e5ac178fd1c7ecf` |
| 2 | `theorem` | [Pairwise.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-mono--9ec39acd9b69fe0d3cc1eb67.md) | 33 | `result-track:9ec39acd9b69fe0d3cc1eb6768e37a1d6212e5e205e9f1d9c7267e035255ba13` |
| 3 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-eq--a1d26c24de023dc37cacca2d.md) | 36 | `result-track:a1d26c24de023dc37cacca2d79188396129392cf3eeb4058a685fbd7cbc2c2c0` |
| 4 | `lemma` | [Subsingleton.pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/subsingleton-pairwise--0e9d9e9d99ed2ca27152de4e.md) | 39 | `result-track:0e9d9e9d99ed2ca27152de4e1bde5f4fa54c985525529c09757b8ba0291c35e5` |
| 5 | `theorem` | [Function.injective_iff_pairwise_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/function-injective-iff-pairwise-ne--861aad29fc310ca87bda0afd.md) | 42 | `result-track:861aad29fc310ca87bda0afd2cdbbc8766d073b24462995a9b44c1e2c3353ac1` |
| 6 | `lemma` | [Pairwise.comp_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-comp-of-injective--174f03e84514f4d6addcfe99.md) | 47 | `result-track:174f03e84514f4d6addcfe994a86d7242bf27be797a3a09e5aee5e9592d2bd82` |
| 7 | `lemma` | [Pairwise.of_comp_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-of-comp-of-surjective--78dc7136043bcaa89fb3d153.md) | 51 | `result-track:78dc7136043bcaa89fb3d153b0e708c986a6924612d9936d24e45238ef3b6ad0` |
| 8 | `lemma` | [Function.Bijective.pairwise_comp_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/function-bijective-pairwise-comp-iff--d2174d6904328a425dd262ee.md) | 54 | `result-track:d2174d6904328a425dd262eec4bfa1728bc62391a0701fb26a4084276c8d3e8d` |
| 9 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise--defd11203b94a032bda76107.md) | 61 | `declaration-track:defd11203b94a032bda761077f843c66d0668faeb06d1be38655ebf01f1d07d4` |
| 10 | `theorem` | [pairwise_of_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-of-forall--f406f26b4781eb9594aa339a.md) | 64 | `result-track:f406f26b4781eb9594aa339ad78abce39d408225e4c1ca69d7ac8f6fde83d631` |
| 11 | `theorem` | [Pairwise.imp_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-imp-on--c37d2eaa114a8b7c5cdc4e3a.md) | 67 | `result-track:c37d2eaa114a8b7c5cdc4e3af1bc71c17e458a9e90069729ccafc15caae8d8b9` |
| 12 | `theorem` | [Pairwise.imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-imp--ab4724f30ef279bedc5df992.md) | 71 | `result-track:ab4724f30ef279bedc5df992396e4a4b478aff0011c20e9059255f152b3501fe` |
| 13 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-eq--7b6eb0a22077cc6573e466aa.md) | 74 | `result-track:7b6eb0a22077cc6573e466aa569a2b5c5d349985299f1bd59a3a6f59811800cd` |
| 14 | `theorem` | [_root_.Reflexive.set_pairwise_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/root-reflexive-set-pairwise-iff--30d2a8a9582a9a0d1729b6de.md) | 77 | `result-track:30d2a8a9582a9a0d1729b6de8eec118227f6454e8b82a8c8ad4c529a434a740d` |
| 15 | `theorem` | [Pairwise.on_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-on-injective--fba7b47a2b2ffe969d77ad94.md) | 82 | `result-track:fba7b47a2b2ffe969d77ad948b8209873d69c4096831f5f3bfa961d1e4314022` |
| 16 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant4878cc8c45f2ea329aa666d611a33902b322e6304e9277592f7f719726e8ec47.lean/declarations/pairwise-set-pairwise--142409070323bd6ec28d4f05.md) | 87 | `result-track:142409070323bd6ec28d4f05c62954f0a4411750f0fe791d5985d1b29fbcd311` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
