# Verification target: GRWTSK.Topology.GeneralTopology.MellinLogDerivative.Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcb9053185d432e482efc98896c8f338e267345f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcb9053185d432e482efc98896c8f338e267345f`.

Source path: `GRWTSK/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/centeredtwistedpsistep--4ee5011631e3d45b6e0bf2eb.md) | 41 | `declaration-track:4ee5011631e3d45b6e0bf2ebf1c3f83fe9b631b523b67c65b126dc42ac8642d0` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/centeredtwistedpsistep-natcast--0b25d3dcea9c66373b1453bb.md) | 49 | `result-track:0b25d3dcea9c66373b1453bb3103a4e2fa22a5b04c8d52a430eaa044e6cc71d8` |
| 3 | `def` | [centeredTwistedPsiMellin](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/centeredtwistedpsimellin--d124e801d0b79029b1329440.md) | 61 | `declaration-track:d124e801d0b79029b1329440ed7e8182b5dc6177715b0e335354d13c96279164` |
| 4 | `def` | [criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/criticalrighthalfplane--6bbe24e8b85bb3a744db93cb.md) | 67 | `declaration-track:6bbe24e8b85bb3a744db93cbfb0743bfda69f27f651ad309bd98ab0cb82f09e0` |
| 5 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/isopen-criticalrighthalfplane--e29edad0dd7c136036e1d83c.md) | 71 | `result-track:e29edad0dd7c136036e1d83c47852e099d65cbe7846a2d062abbb186e556521b` |
| 6 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/ispreconnected-criticalrighthalfplane--689d0e68d154258e58586f6a.md) | 75 | `result-track:689d0e68d154258e58586f6aaf740e0759557e382fd3cef9cdf4d2b105429dcc` |
| 7 | `structure` | [MellinLogDerivativeSquare](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/mellinlogderivativesquare--9b67ab3c02c0ac8ff1dca94b.md) | 88 | `declaration-track:9b67ab3c02c0ac8ff1dca94b171e67cbe3811d9d93d529cc78df77c349ab06e2` |
| 8 | `def` | [MellinLogDerivativeSquare.residual](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/mellinlogderivativesquare-residual--240bd992a4dc233e71b7c403.md) | 107 | `declaration-track:240bd992a4dc233e71b7c40308a6177e80185c55b0e03b822e906da90a6d0cd1` |
| 9 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/mellinlogderivativesquare-differentiableon-residual--090c2cdfa82db9c080ec3916.md) | 114 | `result-track:090c2cdfa82db9c080ec3916332ac4af0a2bec42570d07af4b79f66734328d7f` |
| 10 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--43727fde2bf4cb199bb0f2bc.md) | 129 | `result-track:43727fde2bf4cb199bb0f2bcc1da24acfbf76077f430e65f7512a0d99397f1a3` |
| 11 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/mellinlogderivativesquare-residual-eq-zero--43fafb10db60451497d4ee3a.md) | 142 | `result-track:43fafb10db60451497d4ee3a85ae6f4275d57684c3d9db8ca3e057b1f30e4376` |
| 12 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../../mathematics/Topology/GeneralTopology/MellinLogDerivative/Variant90a992db98764e20121c7c0c6674c23e41dc7ae33d9c3dee508307c7f480d135.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic--bccef07f17104b9b4f6b7091.md) | 170 | `result-track:bccef07f17104b9b4f6b7091ad6ea9d5582b3ca9987ec67ea8ce045e3145cf10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
