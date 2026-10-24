# Verification target: GRWTSK.Topology.GeneralTopology.Complemented.Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "308622994a2ef674d3eac82ad404878aefa969da",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `308622994a2ef674d3eac82ad404878aefa969da`.

Source path: `GRWTSK/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Banach` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_closedComplemented_of_finiteDimensional_range](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/ker-closedcomplemented-of-finitedimensional-range--77f9ef8bca84ba91ceea21e3.md) | 45 | `result-track:77f9ef8bca84ba91ceea21e3689f00e0bcd429b9298e3c32e2613a5038dccbb5` |
| 2 | `def` | [equivProdOfSurjectiveOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/equivprodofsurjectiveofiscompl--6a334b29355979d59ee47800.md) | 59 | `declaration-track:6a334b29355979d59ee47800ec0456046ce376690fe18c2adfa6e4804241505c` |
| 3 | `theorem` | [coe_equivProdOfSurjectiveOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/coe-equivprodofsurjectiveofiscompl--3a9b2ddd6c23864136de69c5.md) | 65 | `result-track:3a9b2ddd6c23864136de69c5c50d16696ace30cb045896c42b9dc696b0896c44` |
| 4 | `theorem` | [equivProdOfSurjectiveOfIsCompl_toLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/equivprodofsurjectiveofiscompl-tolinearequiv--716d1271a4ce2248a9e9998d.md) | 70 | `result-track:716d1271a4ce2248a9e9998d8aaedd01568d310441859486f05c0115dc7b1228` |
| 5 | `theorem` | [equivProdOfSurjectiveOfIsCompl_apply](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/equivprodofsurjectiveofiscompl-apply--684d2b4811254d14824ca247.md) | 76 | `result-track:684d2b4811254d14824ca247b6c7fac80c8a60d2c2f968b27ee53d043978e4d9` |
| 6 | `def` | [prodEquivOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/prodequivofclosedcompl--fc965e02f47813eae825a860.md) | 88 | `declaration-track:fc965e02f47813eae825a860a477449c3f300dcad251760331decaa17ec49d3f` |
| 7 | `def` | [linearProjOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/linearprojofclosedcompl--319e5a878a22b1122be7b241.md) | 95 | `declaration-track:319e5a878a22b1122be7b24150b8f37b35db632f8596b4f3bc1c9fb5901b1610` |
| 8 | `theorem` | [coe_prodEquivOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/coe-prodequivofclosedcompl--be914b0c6ba8c08ab326315d.md) | 102 | `result-track:be914b0c6ba8c08ab326315db0171df51a3a2a303587e1a5b0cb2092cc5ecf46` |
| 9 | `theorem` | [coe_prodEquivOfClosedCompl_symm](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/coe-prodequivofclosedcompl-symm--591dda18aa60726d88ebb284.md) | 107 | `result-track:591dda18aa60726d88ebb284e917e4f662b895a613811ce6517fbabbc8ef8ec0` |
| 10 | `theorem` | [coe_continuous_linearProjOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/coe-continuous-linearprojofclosedcompl--bb60cca1fedc89029e4fa0c5.md) | 112 | `result-track:bb60cca1fedc89029e4fa0c53f81d015f0e656af2c899f1da73670f23453fd90` |
| 11 | `theorem` | [coe_continuous_linearProjOfClosedCompl'](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/coe-continuous-linearprojofclosedcompl--4090a2abd833b96a05e199de.md) | 117 | `result-track:4090a2abd833b96a05e199dea0d171d1bd00f668648ef34e7c6a4e7170b79518` |
| 12 | `theorem` | [ClosedComplemented.of_isCompl_isClosed](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/closedcomplemented-of-iscompl-isclosed--ec08c9bad2fdd40bdef4a159.md) | 121 | `result-track:ec08c9bad2fdd40bdef4a15928bae57256e526ceed6a9cd0c61cd366359e1480` |
| 13 | `theorem` | [closedComplemented_iff_isClosed_exists_isClosed_isCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/closedcomplemented-iff-isclosed-exists-isclosed-iscompl--043540fedb9147cc40c54e30.md) | 127 | `result-track:043540fedb9147cc40c54e3062ee755a510a4187d307f07a912a0196179a82c9` |
| 14 | `theorem` | [ClosedComplemented.of_quotient_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variant5a76040676bcb40867ab8d76ac2e9efeeb96723d305001fc5887663fe0b12265.lean/declarations/closedcomplemented-of-quotient-finitedimensional--1e0541af398a1057bd8daf9c.md) | 133 | `result-track:1e0541af398a1057bd8daf9c8b9ce7c25e04cc9c0ace72fd8e3977f5124c821e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
