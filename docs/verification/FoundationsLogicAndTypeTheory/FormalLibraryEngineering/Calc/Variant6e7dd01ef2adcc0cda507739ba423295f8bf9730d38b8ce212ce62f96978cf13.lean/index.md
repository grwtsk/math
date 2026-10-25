# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Calc.Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70606b2f7be52dbb7a79804cdf57a87328ef242b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70606b2f7be52dbb7a79804cdf57a87328ef242b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean.json)

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
| 1 | `def` | [createCalc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/declarations/createcalc--fc38f51f9a5f10003e4da672.md) | 41 | `declaration-track:fc38f51f9a5f10003e4da672bd23bc149e959d7bd1584cb6731552f265ded96a` |
| 2 | `structure` | [CalcParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/declarations/calcparams--d108ca45d012e3fc13f8b1ac.md) | 69 | `declaration-track:d108ca45d012e3fc13f8b1ac0e86f53e343f5b807ebcdc2970d7fdfff19497d7` |
| 3 | `def` | [suggestSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/declarations/suggeststeps--070a3b1d41c9fdc6e992a1ac.md) | 77 | `declaration-track:070a3b1d41c9fdc6e992a1ace69dccecc077ad53045e2309265a283f4dfcc338` |
| 4 | `def` | [CalcPanel.rpc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/declarations/calcpanel-rpc--3a4ec6842b828014a9f09ae5.md) | 132 | `declaration-track:3a4ec6842b828014a9f09ae5118f0f75fdb31241942a78353f353bd2a46f1590` |
| 5 | `def` | [CalcPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/declarations/calcpanel--38def9abd8bf3d16d188ba9c.md) | 138 | `declaration-track:38def9abd8bf3d16d188ba9c9861b99290d9294de7ed20c607c0e0c6b5d100f7` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/declarations/elab--d4ce44ef2a0fa7f53a6ecf08.md) | 145 | `declaration-track:d4ce44ef2a0fa7f53a6ecf082f6adce31e92f406578923251ef0a323a9a774ca` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant6e7dd01ef2adcc0cda507739ba423295f8bf9730d38b8ce212ce62f96978cf13.lean/declarations/elab-rules--07c445149dbf03c03c4d674c.md) | 154 | `declaration-track:07c445149dbf03c03c4d674ca476cdebc90def3b91a51eddceb6da75025b32f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
