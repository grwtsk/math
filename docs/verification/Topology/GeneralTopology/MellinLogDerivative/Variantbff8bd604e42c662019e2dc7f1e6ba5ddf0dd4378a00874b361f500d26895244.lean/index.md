# Verification target: GRWTSK.Topology.GeneralTopology.MellinLogDerivative.Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80ca719b9f5683d5e3596abeade0eec575ee3c59",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80ca719b9f5683d5e3596abeade0eec575ee3c59`.

Source path: `GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean.json)

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
| 1 | `def` | [centeredTwistedPsiStep](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/centeredtwistedpsistep--d09599ba2a090d3ab8a4bc2a.md) | 49 | `declaration-track:d09599ba2a090d3ab8a4bc2a80a8fc7905086a32b8d6ab134fe05058a5a7c47e` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/centeredtwistedpsistep-natcast--f8c4d3b05cc7423872891779.md) | 57 | `result-track:f8c4d3b05cc742387289177946c61a256351a74ec68f7ace419d6980eb1c1688` |
| 3 | `def` | [centeredTwistedPsiMellin](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/centeredtwistedpsimellin--43c85536a1ae033814a5ac8c.md) | 69 | `declaration-track:43c85536a1ae033814a5ac8c62e5c9d37ef138a6ac8714505a7952067858b766` |
| 4 | `def` | [criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/criticalrighthalfplane--4a182df908fe8797db724e63.md) | 75 | `declaration-track:4a182df908fe8797db724e638142e5b56cdf21f8e83dffdeb126cb5513f4b6cc` |
| 5 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/isopen-criticalrighthalfplane--0891914d468b0bbf12c2ad36.md) | 79 | `result-track:0891914d468b0bbf12c2ad364d3d7808f05a74e6a55c28c8db3288902f3246e9` |
| 6 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/ispreconnected-criticalrighthalfplane--56fba0a9dfd75d93f079dd8b.md) | 83 | `result-track:56fba0a9dfd75d93f079dd8b78a2320cdcd6bb6759d93ee6a06f610961285188` |
| 7 | `structure` | [MellinLogDerivativeSquare](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/mellinlogderivativesquare--cb17bb9fb3cedf349cfd0987.md) | 96 | `declaration-track:cb17bb9fb3cedf349cfd0987e5fe39a5edc1c73bbcbbf08dc4c1707bef53db39` |
| 8 | `def` | [MellinLogDerivativeSquare.residual](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/mellinlogderivativesquare-residual--e782f2282e23cf2457c64981.md) | 115 | `declaration-track:e782f2282e23cf2457c6498155b6cbc47b264de9f51ffe193bcb6a5398c67257` |
| 9 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/mellinlogderivativesquare-differentiableon-residual--b71b279c14ee193446c18a13.md) | 122 | `result-track:b71b279c14ee193446c18a13ee2a24b65cfc4ee1cda35099c4f85c211095047d` |
| 10 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--ab04517698c6ac89904be5a7.md) | 137 | `result-track:ab04517698c6ac89904be5a7cf135a3f16a289fe2411fa5204cc8551d719cec7` |
| 11 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/mellinlogderivativesquare-residual-eq-zero--75c801e88eb61683c3184838.md) | 150 | `result-track:75c801e88eb61683c31848387a5203969d5a639d0c8fd0d29a3bbe9340a2e0f7` |
| 12 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variantbff8bd604e42c662019e2dc7f1e6ba5ddf0dd4378a00874b361f500d26895244.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic--247aa1ee9e0bb4bf249138c9.md) | 178 | `result-track:247aa1ee9e0bb4bf249138c9bb252fce86706a1e694924cbb7eeed5890abf6a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
