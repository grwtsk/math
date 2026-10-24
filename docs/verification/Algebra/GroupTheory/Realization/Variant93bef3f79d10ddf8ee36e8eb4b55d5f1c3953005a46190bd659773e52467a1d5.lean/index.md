# Verification target: GRWTSK.Algebra.GroupTheory.Realization.Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b85f0faf70e5b9f12e1aa5112961000309757c6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b85f0faf70e5b9f12e1aa5112961000309757c6`.

Source path: `GRWTSK/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Tally` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modularRealization](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/modularrealization--938aac8134a7a89e49534320.md) | 23 | `declaration-track:938aac8134a7a89e4953432055bd84b468c0d4a98ee430fecf3af14c7ffd894b` |
| 2 | `def` | [realRealization](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/realrealization--4bb8e887506a4b114876fadd.md) | 26 | `declaration-track:4bb8e887506a4b114876faddd7927057a487aac26d8655621005d8df2a6cc436` |
| 3 | `def` | [groupRealization](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/grouprealization--470d7d542edc071582400703.md) | 29 | `declaration-track:470d7d542edc07158240070339ec9ab1c6e640652c3d7dca35d73edd4bba89ab` |
| 4 | `structure` | [FrontierCoordinate](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/frontiercoordinate--e3b2df284f76bb230c6b37f8.md) | 36 | `declaration-track:e3b2df284f76bb230c6b37f895567c936990387267988f701e0b942c0f174066` |
| 5 | `theorem` | [modularRealization_ofNat](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/modularrealization-ofnat--96550fd9314f59d6020d5ab2.md) | 39 | `result-track:96550fd9314f59d6020d5ab294c419e6663caaf86361cb83781135c7b0bcf380` |
| 6 | `theorem` | [realRealization_ofNat](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/realrealization-ofnat--8aff28b9f9cda2e18b4ec914.md) | 45 | `result-track:8aff28b9f9cda2e18b4ec914cec823e191444a7f3cd6151b913a555c7a62384f` |
| 7 | `theorem` | [groupRealization_ofNat](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/grouprealization-ofnat--36fa0e503a90b068602d3248.md) | 49 | `result-track:36fa0e503a90b068602d3248bfcf5bd083386bf5669f0e10efd0c30c06e75335` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/example--2727f937dde8895251b59ce2.md) | 58 | `declaration-track:2727f937dde8895251b59ce2bfcecd80a58402684a3fb9071ec29c3e210ad6f8` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/example--915cf77113f56883601ba524.md) | 59 | `declaration-track:915cf77113f56883601ba524bac97faad3eb9b72f98a4b64e579fab28659ed33` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/example--445c4d27c06d15644103c494.md) | 60 | `declaration-track:445c4d27c06d15644103c4942cf4ea8742abf3f5038d46bc73df7ca6276e29fc` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/example--b3a2465f762fb2b18de7d271.md) | 61 | `declaration-track:b3a2465f762fb2b18de7d271ae8290629fc96462285c306b41fc5ea5eb99de15` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/example--ef45ca7dc1a6e9ee2efd283c.md) | 62 | `declaration-track:ef45ca7dc1a6e9ee2efd283c2f94844ee5b404b1579cb2746ea8e234818352b0` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Realization/Variant93bef3f79d10ddf8ee36e8eb4b55d5f1c3953005a46190bd659773e52467a1d5.lean/declarations/example--0b58ae1bc388263adda17815.md) | 63 | `declaration-track:0b58ae1bc388263adda17815e07adf41be08c4396b60d80060f28cf54c3f4929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
