# Verification target: GRWTSK.Topology.GeneralTopology.Evaluation.Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a703a6d70ade1897182e5811a24cff2c0696d0b6",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a703a6d70ade1897182e5811a24cff2c0696d0b6`.

Source path: `GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.PiTopology` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Trunc` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.TopologicallyNilpotent` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.LinearTopology` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasEval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval--c0f563a509b3af6c692efc17.md) | 72 | `declaration-track:c0f563a509b3af6c692efc173d1104d2ba6b4bba2977c14c3b3af56c2e457710` |
| 2 | `theorem` | [HasEval.mono](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval-mono--4a62beabee1439b01ef589d2.md) | 76 | `result-track:4a62beabee1439b01ef589d259c1948ecc63e16ce3e79cbf6f61807e4a84207c` |
| 3 | `theorem` | [HasEval.zero](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval-zero--f0e332904e68a3b8745bdccb.md) | 82 | `result-track:f0e332904e68a3b8745bdccb58c8635f1d3d273ed06fc5982d16c51dbc82fb35` |
| 4 | `theorem` | [HasEval.add](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval-add--56b38b5d9cd83efe82e293d2.md) | 86 | `result-track:56b38b5d9cd83efe82e293d2774df8fc72eaeb039b5e2c59a853438ec02f63b4` |
| 5 | `theorem` | [HasEval.mul_left](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval-mul-left--ea6bc6053f5f8e0125051e20.md) | 91 | `result-track:ea6bc6053f5f8e0125051e20f4bad436abdbc9d20d3cade89ee75b9bc3e038c9` |
| 6 | `theorem` | [HasEval.mul_right](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval-mul-right--035acab01fb8ec9cfa8d2e99.md) | 96 | `result-track:035acab01fb8ec9cfa8d2e99c870e0a478bd755bc1dd858fb152e2eeb1e0c1aa` |
| 7 | `theorem` | [HasEval.map](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval-map--66331ca0d194a447467efd7e.md) | 101 | `result-track:66331ca0d194a447467efd7ef45333678c4986ac6d5dbbf6d267debd6760396a` |
| 8 | `theorem` | [HasEval.X](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/haseval-x--875cdc93d03c68b4a8cc84c5.md) | 106 | `result-track:875cdc93d03c68b4a8cc84c5c8104216ab62cb2309a81b7ba93e30f3c6b2ca2c` |
| 9 | `def` | [hasEvalIdeal](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/hasevalideal--09b4e6697da5921887b43338.md) | 115 | `declaration-track:09b4e6697da5921887b43338b87f3c3f2a13201de633f88db1b7b92f83f0ac87` |
| 10 | `theorem` | [mem_hasEvalIdeal_iff](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/mem-hasevalideal-iff--eba9cde96d6fa2252a52cbaa.md) | 121 | `result-track:eba9cde96d6fa2252a52cbaa32b34cf2f9fc5766048655788a5062ca97cc12d4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/instance--f5a3caddb3706ae10c907665.md) | 139 | `declaration-track:f5a3caddb3706ae10c907665a37e2a6a5169e1862c0d2dad2a38b7b886cdfaea` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/instance--552c01680e6df3147eb0363e.md) | 143 | `declaration-track:552c01680e6df3147eb0363e108c06f6d86fe535dba9f8ac57511e0c4375c00f` |
| 13 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasEval.Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.MvPolynomial.toMvPowerSeries_isUniformInducing](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/root-grwtsk-topology-generaltopology-haseval-variant8e8d2a4bc9275ec1e011--1eda2b87986bfa7a9abd4535.md) | 146 | `result-track:1eda2b87986bfa7a9abd453598e502c9fb2bf07a86215a192a7b0019c5ef5797` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasEval.Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.MvPolynomial.toMvPowerSeries_isDenseInducing](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/root-grwtsk-topology-generaltopology-haseval-variant8e8d2a4bc9275ec1e011--e1954fbbe08f6463e106329d.md) | 150 | `result-track:e1954fbbe08f6463e106329d9a049792d188fe242b553b5bae64bcd11c06974d` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.HasEval.Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.MvPolynomial.toMvPowerSeries_uniformContinuous](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/root-grwtsk-topology-generaltopology-haseval-variant8e8d2a4bc9275ec1e011--4d47bfcf394e6ffe8384824e.md) | 158 | `result-track:4d47bfcf394e6ffe8384824ef7311ae2e706f09653efb9f56d77832d4cc710d0` |
| 16 | `def` | [eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval--d849768848c50cc58cd38337.md) | 202 | `declaration-track:d849768848c50cc58cd383372e2870dae65e5d719362d26701dcbaf954da95fd` |
| 17 | `theorem` | [eval₂_coe](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval-coe--64dc3b0deb490c338ee6a938.md) | 207 | `result-track:64dc3b0deb490c338ee6a9381d631170a10ab2d2979d6e645181415998b37ba2` |
| 18 | `theorem` | [eval₂_C](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval-c--c60ac2dcf496750452a6d592.md) | 215 | `result-track:c60ac2dcf496750452a6d59212185d28a89be70af1553d9ef7d62016600b2554` |
| 19 | `theorem` | [eval₂_X](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval-x--499dcc2a1b8840614b43b2a3.md) | 219 | `result-track:499dcc2a1b8840614b43b2a3c046e6ac04087befd0308b2f3de9fca2c6a9fadf` |
| 20 | `def` | [eval₂Hom](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval-hom--73919ac2aa8fa96a87ceccff.md) | 229 | `declaration-track:73919ac2aa8fa96a87ceccffe1f8ef70381ea5637796678d5b5d5ccbd2b3ba1f` |
| 21 | `theorem` | [eval₂Hom_eq_extend](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval-hom-eq-extend--e730e2f5d97f852591461cd0.md) | 236 | `result-track:e730e2f5d97f852591461cd0943e3bccf189e57b1dbfa873fa24c6a799841833` |
| 22 | `theorem` | [coe_eval₂Hom](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/coe-eval-hom--6713810ee69cc53d011118f4.md) | 241 | `result-track:6713810ee69cc53d011118f4a5d49652f4aee3f1b571374f05a1d9857c7e6aac` |
| 23 | `theorem` | [uniformContinuous_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/uniformcontinuous-eval--d3e3a7f514cf750bbfd97b31.md) | 255 | `result-track:d3e3a7f514cf750bbfd97b3101b9ae9e73d547a5da4ca7902f2299d3041cc4ed` |
| 24 | `theorem` | [continuous_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/continuous-eval--a49be4f28c72379153536b08.md) | 263 | `result-track:a49be4f28c72379153536b08f4bb420616a7756a87948d0a3c984c117ee6f26c` |
| 25 | `theorem` | [hasSum_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/hassum-eval--2c8b9707343f8297f2f335c9.md) | 267 | `result-track:2c8b9707343f8297f2f335c98a0ddac151a9258c99ea36d9beedc4f0e33ee909` |
| 26 | `theorem` | [eval₂_eq_tsum](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval-eq-tsum--6f0e096aea730b4b01e0d638.md) | 277 | `result-track:6f0e096aea730b4b01e0d6387ccd7b7f614fc3d56a62fd0fbc3de444f65fcdf8` |
| 27 | `theorem` | [eval₂_unique](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/eval-unique--6179d1ac752e207d8923db38.md) | 282 | `result-track:6179d1ac752e207d8923db384d5e8dd60c0538105b8aa6c5bf1339638ac14299` |
| 28 | `theorem` | [comp_eval₂](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/comp-eval--1f6534d833f26862880a6479.md) | 289 | `result-track:1f6534d833f26862880a6479edb61ce29ed23652fa0cd4cea639ac0e41588ba5` |
| 29 | `def` | [aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/aeval--5b11dc848220f3644c3cc364.md) | 305 | `declaration-track:5b11dc848220f3644c3cc364bb444f133ff895b1b249f8cb9e8f4702a7164e76` |
| 30 | `theorem` | [coe_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/coe-aeval--d72296a8a5bed48fd5c4a1cc.md) | 311 | `result-track:d72296a8a5bed48fd5c4a1cce73d197b73b4aefa51d17020e9cfa312b313e59c` |
| 31 | `theorem` | [continuous_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/continuous-aeval--dc317d8f463a7797ee42dcf6.md) | 315 | `result-track:dc317d8f463a7797ee42dcf657eab3cc47c9dabb84aeb5c2281401075228e58a` |
| 32 | `theorem` | [aeval_coe](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/aeval-coe--7d68463d6ac4342cc4f408c9.md) | 321 | `result-track:7d68463d6ac4342cc4f408c91b7ac85927f957b3f2378b2215733f73dc75f3f8` |
| 33 | `theorem` | [aeval_unique](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/aeval-unique--925f396c5317188c1b1b44d5.md) | 325 | `result-track:925f396c5317188c1b1b44d5fd5db3c9fd2b89b007963411d0e082ec3765dd3c` |
| 34 | `theorem` | [hasSum_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/hassum-aeval--08fbb04968bc60f2ce7355a9.md) | 336 | `result-track:08fbb04968bc60f2ce7355a99842dcc0d26a56e89f4fc561d07b8aea4ebe0896` |
| 35 | `theorem` | [aeval_eq_sum](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/aeval-eq-sum--5daa0c50f1f8fae9c36deecb.md) | 342 | `result-track:5daa0c50f1f8fae9c36deecb063f21ae8b7ac36433a82188a2f6778bd88559c0` |
| 36 | `theorem` | [comp_aeval](../../../../../mathematics/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean/declarations/comp-aeval--81a513d454bc68383a2a1889.md) | 347 | `result-track:81a513d454bc68383a2a1889b9361eead8fb8357ca731623e6eebe0eb28e4522` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
