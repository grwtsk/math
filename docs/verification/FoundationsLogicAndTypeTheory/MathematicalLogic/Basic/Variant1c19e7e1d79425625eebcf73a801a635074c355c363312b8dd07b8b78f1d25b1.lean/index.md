# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd7abea1754c4e6ea469c0e7832e7b9092459e27",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd7abea1754c4e6ea469c0e7832e7b9092459e27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean.json)

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
| 1 | `def` | [derangements](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/derangements--fabc7f0fabd7132a9d4c5aa2.md) | 44 | `declaration-track:fabc7f0fabd7132a9d4c5aa29efdc0e897c34dfb0397905ec6f9eebc01c85fd2` |
| 2 | `theorem` | [mem_derangements_iff_fixedPoints_eq_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/mem-derangements-iff-fixedpoints-eq-empty--98ec0754dbfaf6d6b4c0ffce.md) | 49 | `result-track:98ec0754dbfaf6d6b4c0ffcec0f12772dfb96c9a85b937cfe33a994df097cc0c` |
| 3 | `def` | [Equiv.derangementsCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/equiv-derangementscongr--8dd95345ac10c919bfeca526.md) | 54 | `declaration-track:8dd95345ac10c919bfeca526e0e2418a0bb2b8bfa2ed116d7fb74bd4ddd732c2` |
| 4 | `def` | [subtypeEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/subtypeequiv--433c30805d406af999fda195.md) | 62 | `declaration-track:433c30805d406af999fda19512d0c5b5d2db34ef304ceb8b718353a3d6ae3c44` |
| 5 | `def` | [atMostOneFixedPointEquivSum_derangements](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/atmostonefixedpointequivsum-derangements--6ffe7316817cffa4c6e4257a.md) | 87 | `declaration-track:6ffe7316817cffa4c6e4257ad08436f0f1b3fda4b28b876417776dd33693f56c` |
| 6 | `def` | [RemoveNone.fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/removenone-fiber--116d9c33deb198fdfe340e23.md) | 123 | `declaration-track:116d9c33deb198fdfe340e23fb0cb7d6d219889be05d82ce55eed2cad16517c9` |
| 7 | `theorem` | [RemoveNone.mem_fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/removenone-mem-fiber--805be34dcfa02aed18d072eb.md) | 126 | `result-track:805be34dcfa02aed18d072eb1510734278cd97eaa57dd69730e4c8ec55fdb9d8` |
| 8 | `theorem` | [RemoveNone.fiber_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/removenone-fiber-none--a28a0d8f7c78d5438e8b3152.md) | 131 | `result-track:a28a0d8f7c78d5438e8b31520dc9c0546a0df4ca7d62d33bd5949b3b4ea71d30` |
| 9 | `theorem` | [RemoveNone.fiber_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/removenone-fiber-some--1a932e796e86a3a5ca87a345.md) | 140 | `result-track:1a932e796e86a3a5ca87a345b57eec46edc1e1c232e38d154ca416294823df24` |
| 10 | `def` | [derangementsOptionEquivSigmaAtMostOneFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/derangementsoptionequivsigmaatmostonefixedpoint--72be386fdb3ff49f036e85ab.md) | 180 | `declaration-track:72be386fdb3ff49f036e85ab881e2054369f18dd86d380512085f1072a50c25a` |
| 11 | `def` | [derangementsRecursionEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/declarations/derangementsrecursionequiv--a84af816a10c72f3a1833a50.md) | 197 | `declaration-track:a84af816a10c72f3a1833a50d954e187bcfc142afa30a35f1158ccec54243d25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
