# Verification target: GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionCongruenceFibres

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7e4ccda28428db2cd1d6494881833429a135f6d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7e4ccda28428db2cd1d6494881833429a135f6d`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.SquareDivisorMobiusNonsquarefreeCancellation`](../../../../mathematics/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensCrossCollisionMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertenscrosscollisionmidpoint--0c64e20f5872dfbedc9cf4ba.md) | 43 | `declaration-track:0c64e20f5872dfbedc9cf4ba7ed9181dd5b0bface60519e144fb55296b35c8f8` |
| 2 | `theorem` | [mertensCrossCollisionMidpoint_pos_lt_endpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertenscrosscollisionmidpoint-pos-lt-endpoint--7895b509577ca56fffa17746.md) | 48 | `result-track:7895b509577ca56fffa1774632a1b74a759b47044352fdb62ae0d442cd3cd086` |
| 3 | `def` | [fixedEndpointSquareDivisorSupport](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/fixedendpointsquaredivisorsupport--21eae39d66b7561dfb73e84d.md) | 61 | `declaration-track:21eae39d66b7561dfb73e84de3d1fd7a0427adfc0f57a4a67c499a5da9dd6b68` |
| 4 | `theorem` | [squareDivisorSupport_eq_fixedEndpointSupport](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/squaredivisorsupport-eq-fixedendpointsupport--cd7bf3e69248ab80d3b56c6e.md) | 67 | `result-track:cd7bf3e69248ab80d3b56c6ec0c0061936a379ca9161782978e5879269c6b8d1` |
| 5 | `theorem` | [squareDivisorMobiusSum_eq_fixedEndpointRange](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/squaredivisormobiussum-eq-fixedendpointrange--e044c1892386a9a6ddee993d.md) | 88 | `result-track:e044c1892386a9a6ddee993d7bf15e59a8c8201b5f1083cd2fa2280d836a5b2a` |
| 6 | `def` | [squareDivisorCongruence](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/squaredivisorcongruence--255f9f1e4be3d3a00e8e8a33.md) | 101 | `declaration-track:255f9f1e4be3d3a00e8e8a33da401553b80f986fbd75cb29422dfe89f8890deb` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/instance--1d60812ad813f9101953e643.md) | 104 | `declaration-track:1d60812ad813f9101953e6431ab4b8b49e6d835d2ffff727a6babafa96a2f2c4` |
| 8 | `theorem` | [squareDivisorCongruence_iff](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/squaredivisorcongruence-iff--a1ba9dd504a1edfb511bccf9.md) | 107 | `result-track:a1ba9dd504a1edfb511bccf99ec7d02ec70e52cd0c76bc93eba6dc4c64ab778b` |
| 9 | `theorem` | [squareDivisorMobiusSum_eq_fixedCongruenceRange](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/squaredivisormobiussum-eq-fixedcongruencerange--836e9c9c6687f61209d4196d.md) | 114 | `result-track:836e9c9c6687f61209d4196d1c83e90d73c41f4f2de3298737a99b707b504dc2` |
| 10 | `def` | [mertensEndpointCrossCongruenceBaseSet](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertensendpointcrosscongruencebaseset--0c9fc4932298e137349220c4.md) | 131 | `declaration-track:0c9fc4932298e137349220c47110c50f95b1f7efb88242dfc184d914869d34b9` |
| 11 | `def` | [mertensEndpointCrossCongruenceFibre](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertensendpointcrosscongruencefibre--0dce2de54f3f8eccb2daa57d.md) | 139 | `declaration-track:0dce2de54f3f8eccb2daa57dd87ddb5de180b83349ce69c5af4e8671799a17ad` |
| 12 | `def` | [mertensEndpointCrossCollisionCongruenceExpandedEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertensendpointcrosscollisioncongruenceexpandedenergy--bd2966b826842147efca5eda.md) | 146 | `declaration-track:bd2966b826842147efca5edab3d175ea94532092a03e4dfba2a3f20f638a0917` |
| 13 | `theorem` | [mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceExpanded](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertensendpointcrosscollisiondivisorsquaresieveenergy-eq-congruenceexpan--fc5b0096d3ab4b5ad9530184.md) | 159 | `result-track:fc5b0096d3ab4b5ad9530184efadb691ab6b8451db44a6d7e839c223c9365db7` |
| 14 | `def` | [mertensEndpointCrossCollisionCongruenceFibreEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertensendpointcrosscollisioncongruencefibreenergy--ab5451f4862c848fa3392b03.md) | 189 | `declaration-track:ab5451f4862c848fa3392b03217f0dd3f9a0c367c90a6887ecfb45aad379b622` |
| 15 | `theorem` | [mertensEndpointCrossCollisionCongruenceExpandedEnergy_eq_fibres](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertensendpointcrosscollisioncongruenceexpandedenergy-eq-fibres--6c8ca05f2417a32be8936a03.md) | 196 | `result-track:6c8ca05f2417a32be8936a034d7233b66e9db23e9bfd59bc6723df917d9b6d47` |
| 16 | `theorem` | [mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/mertensendpointcrosscollisiondivisorsquaresieveenergy-eq-congruencefibre--44ab7bfb575a84baf231d080.md) | 224 | `result-track:44ab7bfb575a84baf231d0807a7e902241afeecbab9f3e1d8714e939706e12da` |
| 17 | `def` | [weightedMertensEndpointCrossCollisionCongruenceFibreEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/weightedmertensendpointcrosscollisioncongruencefibreenergy--8373ca2a77abd5c08e056c5c.md) | 232 | `declaration-track:8373ca2a77abd5c08e056c5cfb2435c8b1c4f12ee72f881c188b334d3304706d` |
| 18 | `theorem` | [weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/weightedmertensendpointcrosscollisiondivisorsquaresieveenergy-eq-congrue--33c43320c62c8450565ac440.md) | 239 | `result-track:33c43320c62c8450565ac4406eaa3e334de39c66f714c5ab4300a5b3f2436fa5` |
| 19 | `theorem` | [weightedMertensEndpointCrossCollisionEnergy_eq_congruenceFibres](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/weightedmertensendpointcrosscollisionenergy-eq-congruencefibres--710ac432112686772ebf9a4b.md) | 253 | `result-track:710ac432112686772ebf9a4b575aecbc44f4665ecde201eba8528d387f017a17` |
| 20 | `def` | [SubpolynomialWeightedMertensEndpointCongruenceCrossCollision](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/subpolynomialweightedmertensendpointcongruencecrosscollision--0f3e308089829b0d28a4e793.md) | 263 | `declaration-track:0f3e308089829b0d28a4e793b8bcd2d871c5a3ed2c52c567053c65d0b99b8429` |
| 21 | `theorem` | [subpolynomialWeightedMertensEndpointCongruenceCrossCollision_iff_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/declarations/subpolynomialweightedmertensendpointcongruencecrosscollision-iff-squaref--2463cacbd4ea0ddf88b7b41a.md) | 270 | `result-track:2463cacbd4ea0ddf88b7b41aa34af42db204f5fd5a645af2fc06552f41807669` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
