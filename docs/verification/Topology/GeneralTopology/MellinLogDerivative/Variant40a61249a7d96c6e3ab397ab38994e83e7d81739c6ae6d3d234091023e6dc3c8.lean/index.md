# Verification target: GRWTSK.Topology.GeneralTopology.MellinLogDerivative.Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32c78c1ca5afa5ec2c7d74b24b2396be09a9ab85",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32c78c1ca5afa5ec2c7d74b24b2396be09a9ab85`.

Source path: `GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/centeredtwistedpsistep--3d5b78a0becca1c9e8eb53d9.md) | 49 | `declaration-track:3d5b78a0becca1c9e8eb53d916b5eda1a557c5339b712b997860d0693c3851e7` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/centeredtwistedpsistep-natcast--43cdd38b9248e094c503717a.md) | 57 | `result-track:43cdd38b9248e094c503717a282f83c2aee106acf865e5387abc6ed53f5c3b33` |
| 3 | `def` | [centeredTwistedPsiMellin](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/centeredtwistedpsimellin--d5a81f04c775e3a25b1ab6a6.md) | 69 | `declaration-track:d5a81f04c775e3a25b1ab6a65a39a88a5b060c14a428c3f9aae45edc10927c62` |
| 4 | `def` | [criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/criticalrighthalfplane--50ce30741dfbfb0de77cde12.md) | 75 | `declaration-track:50ce30741dfbfb0de77cde12a70b4b3966f50673dc074fa6322c38e05d44c6b2` |
| 5 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/isopen-criticalrighthalfplane--96e48634044df97945ed7127.md) | 79 | `result-track:96e48634044df97945ed712729e25afaae73d449a2b133b5a9f0957ca5267f8b` |
| 6 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/ispreconnected-criticalrighthalfplane--1384b006873e85a2afe6ce6a.md) | 83 | `result-track:1384b006873e85a2afe6ce6a8002f0053158e77a2477c96ea300e24992a9613a` |
| 7 | `structure` | [MellinLogDerivativeSquare](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/mellinlogderivativesquare--b722f2857fe363c8349b8f35.md) | 96 | `declaration-track:b722f2857fe363c8349b8f35022237bf1d4cd3a120b5c51e3f015971e283e8e7` |
| 8 | `def` | [MellinLogDerivativeSquare.residual](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/mellinlogderivativesquare-residual--a6e48dae84adddff9a2deda8.md) | 115 | `declaration-track:a6e48dae84adddff9a2deda89742c0e98b919406f94a7db2b0525edc42cc0852` |
| 9 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/mellinlogderivativesquare-differentiableon-residual--df024f64bffc7bfc917556f2.md) | 122 | `result-track:df024f64bffc7bfc917556f2667655f6e3ae572a99b05a908c0034e73802c73e` |
| 10 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--270cad3b7dee43d0bd461318.md) | 137 | `result-track:270cad3b7dee43d0bd461318f361580a0c35161bd42335b1d2ab884238ab443a` |
| 11 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/mellinlogderivativesquare-residual-eq-zero--c125a8fdbd4213ccaf4bb464.md) | 150 | `result-track:c125a8fdbd4213ccaf4bb46485d8920cb0b3da51f4bbffb64494fd42fc60ae08` |
| 12 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant40a61249a7d96c6e3ab397ab38994e83e7d81739c6ae6d3d234091023e6dc3c8.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic--127ed04c150e158dcf2a69e1.md) | 178 | `result-track:127ed04c150e158dcf2a69e11e276785c9a94607237dc4a3f5ed3e0bf3aad729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
