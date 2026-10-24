# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stochastic.Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19c1a10c433474f9d1f92dd82c032820261002c4",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19c1a10c433474f9d1f92dd82c032820261002c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.BooleanNetwork.Asynchronous` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransitionMass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/transitionmass--2055dfb42d7e44b37225531d.md) | 8 | `declaration-track:2055dfb42d7e44b37225531d7943665dbb401589c49b2d6733b428f855d6cf37` |
| 2 | `structure` | [StochasticNetwork](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/stochasticnetwork--120b98e9869eeb6bd6e589ff.md) | 14 | `declaration-track:120b98e9869eeb6bd6e589ff507ded05b2b58b4aae29ba45b2382a5a8df43a5b` |
| 3 | `def` | [outgoingWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/outgoingweight--2bc5a60d346accc759577bb7.md) | 20 | `declaration-track:2bc5a60d346accc759577bb76d17feea5c852aee2b051e9adb8f5fbc0090cc21` |
| 4 | `def` | [transitionMass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/transitionmass--9d00d079658087dcec7d7051.md) | 29 | `declaration-track:9d00d079658087dcec7d705118a0d85d76927571b3193201f6e0a4a8871c7b38` |
| 5 | `def` | [PositiveTransition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/positivetransition--7f928c8f4e0b04fd0cc48144.md) | 37 | `declaration-track:7f928c8f4e0b04fd0cc481442eebbd6327d83293e4261ec3c95e1916befc0d77` |
| 6 | `def` | [support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/support--a112e66d67702f87e0f3f8ae.md) | 44 | `declaration-track:a112e66d67702f87e0f3f8ae662dbb2af57f0617399d51db83641dcc78867020` |
| 7 | `def` | [endpointFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/endpointfrom--3c0290198fd8dd1dd9f0c70f.md) | 52 | `declaration-track:3c0290198fd8dd1dd9f0c70f13e5c1e66d3f89ab1239fbdbfbccbfe1e4986730` |
| 8 | `def` | [pathWeightFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathweightfrom--9f7dedc16fce9e4ca43f7b64.md) | 59 | `declaration-track:9f7dedc16fce9e4ca43f7b64a223749b543dfe278f17ed2e8a6889f1cfc8253a` |
| 9 | `def` | [pathDenominatorFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathdenominatorfrom--8c77a7203a13eeb4302f2e4c.md) | 68 | `declaration-track:8c77a7203a13eeb4302f2e4cad6268ee2afda617bf058f128c11b8e7a3c8d818` |
| 10 | `def` | [pathMassFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathmassfrom--570b1ccb52e0aa9151e750d8.md) | 77 | `declaration-track:570b1ccb52e0aa9151e750d85cdda680ef936b685734c1f0157f009bb0056660` |
| 11 | `def` | [PositivePath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/positivepath--7d9b4f1792a8a7e80cb2e91d.md) | 86 | `declaration-track:7d9b4f1792a8a7e80cb2e91d9951d4135be674366dd154c4a1735fe0a43c2f34` |
| 12 | `def` | [Reaches](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/reaches--81f76fdd81b9c8b2eb2d047a.md) | 94 | `declaration-track:81f76fdd81b9c8b2eb2d047a0ae93df38e5ddc6430f8c4aaf48441561f79ebef` |
| 13 | `def` | [paths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/paths--080dd7e02624d2a20639365e.md) | 102 | `declaration-track:080dd7e02624d2a20639365e2362ec5c394e4b961886bb3150c9986e163d4183` |
| 14 | `def` | [stateWeightAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/stateweightafter--cf78e690d74e6ef11d5565c8.md) | 112 | `declaration-track:cf78e690d74e6ef11d5565c870620f0cdaf21fac6630d715a68307764246fae1` |
| 15 | `def` | [distributionAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/distributionafter--29b8290bd3a1d70fbad5de60.md) | 127 | `declaration-track:29b8290bd3a1d70fbad5de602efc0e03a5a6dc3b02f5358b684dcbe0527be03c` |
| 16 | `def` | [supportAfter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/supportafter--f0c2caba7caf825801d78772.md) | 135 | `declaration-track:f0c2caba7caf825801d787726647bc7cb086419e2a67955409471c1a3af714a8` |
| 17 | `theorem` | [transitionMass_numerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/transitionmass-numerator--848d1de7ea4890ecd73aac35.md) | 143 | `result-track:848d1de7ea4890ecd73aac350a91a1e4ae372022d55d77d379297194eea76f67` |
| 18 | `theorem` | [transitionMass_denominator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/transitionmass-denominator--7dbbd14f2a166f5e58bdb403.md) | 149 | `result-track:7dbbd14f2a166f5e58bdb4033959d42ccabd585cfdff6f4800467c14e6be41cf` |
| 19 | `theorem` | [endpointFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/endpointfrom-nil--bc3ab698e67bef7cc407a28b.md) | 155 | `result-track:bc3ab698e67bef7cc407a28be7ab37085e999c46bf563e6450a8996b0adaeaff` |
| 20 | `theorem` | [endpointFrom_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/endpointfrom-cons--2462dbb93216801649e4535a.md) | 159 | `result-track:2462dbb93216801649e4535a76e67608171f0a42e24af908a05fdfa766622c38` |
| 21 | `theorem` | [pathWeightFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathweightfrom-nil--2422c52f367bbe73a1c281ae.md) | 165 | `result-track:2422c52f367bbe73a1c281ae15c015b09b20ab9f1bcdcdac94abab23f2f227a0` |
| 22 | `theorem` | [pathWeightFrom_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathweightfrom-cons--beb7c63e2a2218a1d62b9a4d.md) | 170 | `result-track:beb7c63e2a2218a1d62b9a4d73cc7dc501549196c7cce7258986307765d62dcc` |
| 23 | `theorem` | [pathDenominatorFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathdenominatorfrom-nil--3968de833cec7af9173659c5.md) | 177 | `result-track:3968de833cec7af9173659c593c4ba1015fd57fa81f7536b32b4b4028f7b587c` |
| 24 | `theorem` | [pathDenominatorFrom_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathdenominatorfrom-cons--f00cd023db96ac34801fc359.md) | 182 | `result-track:f00cd023db96ac34801fc3596cf97f506b3fa17689192d89cf34854d977e3911` |
| 25 | `theorem` | [pathMassFrom_numerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathmassfrom-numerator--bedd0d10621b8cead3018c5b.md) | 189 | `result-track:bedd0d10621b8cead3018c5b1a89d17ab2f91b3b5a185401b0dcbe24e3b2b62e` |
| 26 | `theorem` | [pathMassFrom_denominator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/pathmassfrom-denominator--f0de8e441aef45e9359bbb57.md) | 196 | `result-track:f0de8e441aef45e9359bbb57f68a25db70f744fb6fd2cd17e3882e365b902b7a` |
| 27 | `def` | [Network.toStochastic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/network-tostochastic--ed14d465dfa8348f81300297.md) | 206 | `declaration-track:ed14d465dfa8348f813002973876a25573c390f22156627948b1ed2672bc6845` |
| 28 | `def` | [AsynchronousNetwork.transitionWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/asynchronousnetwork-transitionweight--ca02f2aa68fb95c7adcf82f6.md) | 213 | `declaration-track:ca02f2aa68fb95c7adcf82f693ca108ca05f7be5722b627956b6961caff97695` |
| 29 | `def` | [AsynchronousNetwork.toStochastic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/asynchronousnetwork-tostochastic--7fce29240efa9ed0c0cf500d.md) | 222 | `declaration-track:7fce29240efa9ed0c0cf500d7c83b79ec4d285a05fe1eb3289cdc6f10f1bb3bd` |
| 30 | `theorem` | [Network.toStochastic_transitionWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/network-tostochastic-transitionweight--cbb8eaf4f910bc9fabf5ae98.md) | 227 | `result-track:cbb8eaf4f910bc9fabf5ae98062f9f42a64e7c1def2826d4082a5097a1e51553` |
| 31 | `theorem` | [AsynchronousNetwork.toStochastic_transitionWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stochastic/Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c.lean/declarations/asynchronousnetwork-tostochastic-transitionweight--8163cc71a6e48a8a84eed9f0.md) | 233 | `result-track:8163cc71a6e48a8a84eed9f0426628caf57bf05adce7102d6edd80aadb0b262b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
