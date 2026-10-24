# Verification target: GRWTSK.Analysis.SpecialFunctions.Extended.Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27744526be1e5c5eaa4a13c9532b6b350bf57077",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27744526be1e5c5eaa4a13c9532b6b350bf57077`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Eval.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalInterval](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval--7bd6cd3d9ec5fdd31cacdc68.md) | 50 | `declaration-track:7bd6cd3d9ec5fdd31cacdc6850a7ff207919fc46db90a3e043493785415cdb53` |
| 2 | `theorem` | [evalInterval_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval-correct--367c5859dd043ec55b2954ba.md) | 77 | `result-track:367c5859dd043ec55b2954ba431191a7b63dc2442ba6490e7f0c1c71a4686182` |
| 3 | `def` | [evalInterval1](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval1--2e9c148ac4645ded796edea7.md) | 116 | `declaration-track:2e9c148ac4645ded796edea7f269a4f288a65b93f3006389ce94d192340d32df` |
| 4 | `theorem` | [evalInterval1_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval1-correct--43e644c81f1cda5d81081951.md) | 120 | `result-track:43e644c81f1cda5d81081951f7bf8a4aee0a0e850f47fa66bdd2ff54cfff19a6` |
| 5 | `def` | [evalIntervalLogDepth](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalintervallogdepth--c84f4963d2381feca95b5a91.md) | 137 | `declaration-track:c84f4963d2381feca95b5a916bbf3b81ae1e55398729eb818f7d5c8c0e00fa13` |
| 6 | `def` | [evalIntervalExpDepth](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalintervalexpdepth--dcd0627e8750d96613b61923.md) | 139 | `declaration-track:dcd0627e8750d96613b61923dbb54bcab512a518ea8e170b21db9682c0daedca` |
| 7 | `def` | [evalInterval?](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval--14812b78ce753d81b09bca8d.md) | 141 | `declaration-track:14812b78ce753d81b09bca8de93fa33874dc488cc7dbfa2068070a96ab64918e` |
| 8 | `theorem` | [evalInterval?_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval-correct--67f798ce0f320925ac4da5e1.md) | 234 | `result-track:67f798ce0f320925ac4da5e10f13e0a30dab7c665ffc36ac6cea997b65b100c0` |
| 9 | `def` | [evalInterval?1](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval-1--5dd5b7c4e75f49b76032019f.md) | 418 | `declaration-track:5dd5b7c4e75f49b76032019f46dfc9418f324a729b08407496bc42b5d765d981` |
| 10 | `theorem` | [evalInterval?1_correct](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval-1-correct--56fd6fb8cf630e200eea9468.md) | 422 | `result-track:56fd6fb8cf630e200eea94688a788352cd77e73a10e38225a03d74703d6605c2` |
| 11 | `theorem` | [evalInterval?_le_of_hi](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval-le-of-hi--008d087ec86556908cfea731.md) | 430 | `result-track:008d087ec86556908cfea7312beabc5cb8db8af5cea19d364c922b0d4a2c8303` |
| 12 | `theorem` | [evalInterval?_ge_of_lo](../../../../../mathematics/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/declarations/evalinterval-ge-of-lo--9f759aab33cf3f1fa2eb6fc5.md) | 443 | `result-track:9f759aab33cf3f1fa2eb6fc5b5ebadb3d6487d959643d06478dd8d2fa62b9691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
