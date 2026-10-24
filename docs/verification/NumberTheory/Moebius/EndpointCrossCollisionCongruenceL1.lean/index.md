# Verification target: GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionCongruenceL1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "251309b0060626a7f04dc7e64215d9076402c568",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `251309b0060626a7f04dc7e64215d9076402c568`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionCongruenceFibres`](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_moebiusReal_le_one](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/abs-moebiusreal-le-one--9bf784ceee059f2f831b9438.md) | 43 | `result-track:9bf784ceee059f2f831b943839c4f2e05e92f820e1402c0856969c77284674bb` |
| 2 | `def` | [mertensEndpointCrossCongruenceL1Mass](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/mertensendpointcrosscongruencel1mass--fcadf25e891c48e4c3203cd3.md) | 52 | `declaration-track:fcadf25e891c48e4c3203cd35511598c3cb4cf47ff6500664bfbbafe6e66704a` |
| 3 | `theorem` | [mertensEndpointCrossCongruenceL1Mass_nonneg](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/mertensendpointcrosscongruencel1mass-nonneg--44155a915623b4a8f466b08f.md) | 57 | `result-track:44155a915623b4a8f466b08f4886ccd26ef760584fc356f2783f9819967fac06` |
| 4 | `theorem` | [mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/mertensendpointcrosscollisioncongruencefibreenergy-le-l1--09da3d03c6b86444861d617b.md) | 66 | `result-track:09da3d03c6b86444861d617b1d57d934792399cbe59c551680421e7db8743ea8` |
| 5 | `theorem` | [reciprocalEndpointDrop_nonneg](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/reciprocalendpointdrop-nonneg--51f561088a07268b3b36c656.md) | 93 | `result-track:51f561088a07268b3b36c656d7a10560a45e3bb54af2b67ab5d2ac16905ff362` |
| 6 | `def` | [weightedMertensEndpointCrossCongruenceL1Majorant](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/weightedmertensendpointcrosscongruencel1majorant--43cb82cf9228c1b8cec81bce.md) | 106 | `declaration-track:43cb82cf9228c1b8cec81bce6a0e469874337501623e9b68856c038ac9f16f89` |
| 7 | `theorem` | [weightedMertensEndpointCrossCongruenceL1Majorant_nonneg](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/weightedmertensendpointcrosscongruencel1majorant-nonneg--07021935120d1054aeac0914.md) | 112 | `result-track:07021935120d1054aeac091407830bf178f35c1dfb472c472ce1d61fd3d36b05` |
| 8 | `theorem` | [weightedMertensEndpointCrossCollisionEnergy_le_congruenceL1Majorant](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/weightedmertensendpointcrosscollisionenergy-le-congruencel1majorant--3afc89abb8805d827779f543.md) | 129 | `result-track:3afc89abb8805d827779f543f9597b18cec651829b612099ac0df23d88eea7d5` |
| 9 | `def` | [SubpolynomialWeightedMertensEndpointCrossCongruenceL1](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/subpolynomialweightedmertensendpointcrosscongruencel1--2c0b8c13723461f08dc99295.md) | 164 | `declaration-track:2c0b8c13723461f08dc99295f8a7443feca4875f4dacf6e26dfd00d9806d956a` |
| 10 | `theorem` | [subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_l1](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/subpolynomialweightedmertensendpointcongruencecrosscollision-of-l1--3671dc85ccf6535562baf652.md) | 172 | `result-track:3671dc85ccf6535562baf652a637c83727240a6a2bdcdde8ed247799a9db6d1a` |
| 11 | `theorem` | [subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_congruenceL1](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceL1.lean/declarations/subpolynomialweightedmertensendpointsquarefreemidpointcrosscollision-of--a5ad840fad9bc283865c9495.md) | 186 | `result-track:a5ad840fad9bc283865c9495fcb4b54ccc3872e71e102b23483e3e81f53829a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
