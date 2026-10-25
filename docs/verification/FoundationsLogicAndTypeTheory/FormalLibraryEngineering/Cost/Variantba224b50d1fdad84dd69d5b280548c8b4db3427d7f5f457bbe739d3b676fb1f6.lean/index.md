# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cost.Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fff949fa1c523ec46f094142698ef26403b1ea2f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fff949fa1c523ec46f094142698ef26403b1ea2f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Tally` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExactCostVector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/exactcostvector--eabfe78f52e60f5f568ea6b6.md) | 20 | `declaration-track:eabfe78f52e60f5f568ea6b6d9c6eff0f68b9f3cf53a977ac19e59de2e1475c8` |
| 2 | `def` | [ExactCostVector.zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/exactcostvector-zero--8155fb28f9539846a56a84f8.md) | 36 | `declaration-track:8155fb28f9539846a56a84f890554b140c81e825d6776940d1709e852732ff59` |
| 3 | `def` | [ExactCostVector.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/exactcostvector-add--de143529adde38e661ff8718.md) | 51 | `declaration-track:de143529adde38e661ff87183b50c8800b5ad9a837fe655d7149f375633d6ace` |
| 4 | `structure` | [ReuseCost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/reusecost--ad966d5e04a2b00c3015a134.md) | 71 | `declaration-track:ad966d5e04a2b00c3015a134362c206d55ed78d1db92666b23abd37fa49fe672` |
| 5 | `def` | [ReuseCost.fresh](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/reusecost-fresh--ca2081c20abdbfab2b06b91c.md) | 82 | `declaration-track:ca2081c20abdbfab2b06b91c5e74dd244e64c588b299f50dfd912442712239b6` |
| 6 | `def` | [ReuseCost.reused](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/reusecost-reused--1f4a89e9cf2b893ae4eaf271.md) | 85 | `declaration-track:1f4a89e9cf2b893ae4eaf2718fb4bcdfa5354bd533e3d2dca686869890cad174` |
| 7 | `def` | [PositiveReuse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/positivereuse--10d5a5ab8d8367ce71c394f6.md) | 94 | `declaration-track:10d5a5ab8d8367ce71c394f60ad32ce8f655d691df54625eac96a96a6a02b745` |
| 8 | `structure` | [UnitTransparentEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/unittransparentencoding--4e1a120f30eb2df8b5bdcf7a.md) | 97 | `declaration-track:4e1a120f30eb2df8b5bdcf7abee7ce5f95358e0d8d78e0754f1f7202bdd09f39` |
| 9 | `def` | [tallyEncoding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/tallyencoding--cdf77db43b85a02702ed3847.md) | 102 | `declaration-track:cdf77db43b85a02702ed38477198db6d2a19a461b2355ead52ab27c35dc83494` |
| 10 | `theorem` | [tally_length_optimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/tally-length-optimal--a46856f8ffa57236f64fd765.md) | 106 | `result-track:a46856f8ffa57236f64fd76557860cb0b8281f26f7d40f13a0b0469fc64fae1e` |
| 11 | `structure` | [BinaryTransparencyAccounting](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cost/Variantba224b50d1fdad84dd69d5b280548c8b4db3427d7f5f457bbe739d3b676fb1f6.lean/declarations/binarytransparencyaccounting--543435f3f9c98409c1c046af.md) | 113 | `declaration-track:543435f3f9c98409c1c046afb66b3c884359595d320d836392f901e8cc64b420` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
