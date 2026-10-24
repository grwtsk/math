# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771b20ec7d76f3f3787079e75f49240f6a801523",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771b20ec7d76f3f3787079e75f49240f6a801523`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Solvable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieModule.IsIrreducible](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/declarations/liemodule-isirreducible--d03584b28962e986db50d8df.md) | 29 | `declaration-track:d03584b28962e986db50d8dfb339b6f694d510167e3b96abfe4497cbbf315b29` |
| 2 | `lemma` | [LieSubmodule.eq_top_of_isIrreducible](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/declarations/liesubmodule-eq-top-of-isirreducible--278ecd30260ec00295dd34de.md) | 32 | `result-track:278ecd30260ec00295dd34de50eb8035cb0b41654286c9c4862074b58f640a47` |
| 3 | `class` | [HasTrivialRadical](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/declarations/hastrivialradical--bb8f8e9db068ef6564da1e65.md) | 55 | `declaration-track:bb8f8e9db068ef6564da1e65871b4bd8e82887587e52389be9fe2d5c7a8285b5` |
| 4 | `class` | [HasCentralRadical](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/declarations/hascentralradical--03cd10fe5cf39c2fdfee1daa.md) | 66 | `declaration-track:03cd10fe5cf39c2fdfee1daa66ed3f444792cf68adc6329bc9b9f20aefa0ec8b` |
| 5 | `lemma` | [hasCentralRadical_of_radical_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/declarations/hascentralradical-of-radical-le--afa55135909980e34a82a239.md) | 69 | `result-track:afa55135909980e34a82a239d9193de988910589d1617f593906f9fac588ee29` |
| 6 | `class` | [IsSimple](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/declarations/issimple--e7362837a43b3ce0485d64cf.md) | 78 | `declaration-track:e7362837a43b3ce0485d64cf8ffe54c21c8364f23d0c5da94be892956b3c1a32` |
| 7 | `class` | [IsSemisimple](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variantba1e81f92bf905f49d57a7da6b8562f84f1efdd31274115a2b4c9bb6176e5060.lean/declarations/issemisimple--364d23408678f2db9017eec1.md) | 93 | `declaration-track:364d23408678f2db9017eec1f45de4910dbdd902bd0e5df6e3baaadcce1f7b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
