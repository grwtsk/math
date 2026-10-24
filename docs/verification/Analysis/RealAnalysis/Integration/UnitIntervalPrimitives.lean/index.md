# Verification target: GRWTSK.Analysis.Integration.UnitIntervalPrimitives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a70ad52555b4bae12ff272a4dad56907f746338",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integration/UnitIntervalPrimitives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a70ad52555b4bae12ff272a4dad56907f746338`.

Source path: `GRWTSK/Analysis/Integration/UnitIntervalPrimitives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integration/UnitIntervalPrimitives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.GreenKernel.UnitInterval`](../../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithm](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/logarithm--565154d1f9019cd91e3b5437.md) | 19 | `declaration-track:565154d1f9019cd91e3b543760e2c33ab85c512c15b5cf22e46143a5eca2b6c2` |
| 2 | `def` | [logPrimitive](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/logprimitive--ceee78bffa7b3b0c67d1cfb2.md) | 21 | `declaration-track:ceee78bffa7b3b0c67d1cfb2c9bd1e1cd720b98274ac07849d65e7d56a226c09` |
| 3 | `def` | [greenBackground](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/greenbackground--5daf3fbeec0e7b735f66efcc.md) | 23 | `declaration-track:5daf3fbeec0e7b735f66efcc831a16102a268183045d4922cf00e3d9ee233450` |
| 4 | `def` | [cellPrimitive](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/cellprimitive--0d468fc918121ae47bd0a4c3.md) | 25 | `declaration-track:0d468fc918121ae47bd0a4c3b61b35c2a628fd55c66f1ed111716679746a0082` |
| 5 | `theorem` | [logarithm_hasDerivAt](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/logarithm-hasderivat--fe962fa8a4a92776890dadaa.md) | 28 | `result-track:fe962fa8a4a92776890dadaa6d954f0a92f55dc3b006772bb2efc8e7177bbc82` |
| 6 | `theorem` | [logPrimitive_hasDerivAt](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/logprimitive-hasderivat--905d00a6722e806ebd28c7af.md) | 36 | `result-track:905d00a6722e806ebd28c7af2e01bb0ae10eb8d083fb92cd993bd8ae3cb0a481` |
| 7 | `theorem` | [inverse_one_add_continuousOn](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/inverse-one-add-continuouson--dccbcca0d822f98d371c51e5.md) | 49 | `result-track:dccbcca0d822f98d371c51e5d1b0a15c540ebc3465b9b7bc24d7846a2214cdd6` |
| 8 | `theorem` | [logarithm_continuousOn](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/logarithm-continuouson--f239ba2914f56af7202ebc63.md) | 56 | `result-track:f239ba2914f56af7202ebc63dd9f5f5bf2373a8434beef4ed1431a3357fcb740` |
| 9 | `theorem` | [integral_inverse_one_add](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/integral-inverse-one-add--c5118aa1b3d26429a3812feb.md) | 60 | `result-track:c5118aa1b3d26429a3812febabc813cd6cac22bce7f0d31b2c10f33ad112ec05` |
| 10 | `theorem` | [integral_logarithm](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/integral-logarithm--0bea3c5893a4f35669070e75.md) | 69 | `result-track:0bea3c5893a4f35669070e75e33527c078ec7bd5640ecf71b93fd20856b27fa4` |
| 11 | `theorem` | [cellPrimitive_hasDerivAt](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/cellprimitive-hasderivat--29e3f65ed6bcdb4b3e080c97.md) | 79 | `result-track:29e3f65ed6bcdb4b3e080c97219058acaa0bccac33c6c68f484c5ec5ca4fd462` |
| 12 | `theorem` | [greenBackground_endpoints](../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives.lean/declarations/greenbackground-endpoints--50306d52ca22e3858d28790e.md) | 93 | `result-track:50306d52ca22e3858d28790e697ce52d39df1c64302bc29eda764eb99eb71b0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
