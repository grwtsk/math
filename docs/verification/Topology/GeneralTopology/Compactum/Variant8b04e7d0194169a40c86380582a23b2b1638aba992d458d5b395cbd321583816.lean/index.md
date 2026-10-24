# Verification target: GRWTSK.Topology.GeneralTopology.Compactum.Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f8397ee43da0fd0078057cda679c4ca6ba34b53",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f8397ee43da0fd0078057cda679c4ca6ba34b53`.

Source path: `GRWTSK/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Types` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Compactum](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/compactum--5072a253774f0c32a4673165.md) | 80 | `declaration-track:5072a253774f0c32a467316534627af198535f29579ce7bb455d50b070d3e3a4` |
| 2 | `def` | [forget](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/forget--b6bb1774202b9d48c2e3bb88.md) | 86 | `declaration-track:b6bb1774202b9d48c2e3bb88fedd9f7031a1fbc4df5049d757181114ae06680d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--2eafe155395ea47c7f0d0a8e.md) | 89 | `declaration-track:2eafe155395ea47c7f0d0a8e46b2fdee2786eb789a445a78f314ce6e0023a020` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--834a29734eb426794b7991fa.md) | 92 | `declaration-track:834a29734eb426794b7991fa8be511d0813cdb64d9397146a0c631a338c53be0` |
| 5 | `def` | [free](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/free--71174de31b1cc625b927e78e.md) | 96 | `declaration-track:71174de31b1cc625b927e78ed99d7d5054e59aa7809b7f69df04c34d49d9b20f` |
| 6 | `def` | [adj](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/adj--a109aebc1064bba2b1912331.md) | 100 | `declaration-track:a109aebc1064bba2b1912331e9ff4d394e275160dca1b6a7958d58ee8d713f8a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--4dd1f806c49dac51548d7f9a.md) | 103 | `declaration-track:4dd1f806c49dac51548d7f9a458984423e26bc6ec2cb3856d605326a0806c1a6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--ae59fb1d0e25b8bf9bc4d3f9.md) | 106 | `declaration-track:ae59fb1d0e25b8bf9bc4d3f9932ebe01ecfb1d05096f613ddaddd373dbe09f88` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--0e5e485ec76914aaaa954da1.md) | 111 | `declaration-track:0e5e485ec76914aaaa954da142160c4f0c2fe93763043b3c41109e20a489dd88` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--192c5945d50f32f7769388ce.md) | 115 | `declaration-track:192c5945d50f32f7769388ce51635f7698609203022a1416dd3e8b8b79a06d52` |
| 11 | `def` | [str](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/str--4314844453ddef3854702204.md) | 119 | `declaration-track:4314844453ddef385470220451fb05ecb7817d0485d0d0c0d5dc33aa14fa501b` |
| 12 | `def` | [join](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/join--4c0cfaf6037fea423bf8ba82.md) | 123 | `declaration-track:4c0cfaf6037fea423bf8ba82d1f3ddf2600c9a0d67568c86d493c69d1b0951e5` |
| 13 | `def` | [incl](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/incl--449e5df9061e3d4716c86c99.md) | 127 | `declaration-track:449e5df9061e3d4716c86c99e466a5df8633df288f1d72cb9191d8bc02773463` |
| 14 | `theorem` | [str_incl](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/str-incl--db1971ea9414d28de7191cb2.md) | 131 | `result-track:db1971ea9414d28de7191cb20d17cb3fc5582c5926a0f58216a4d6005463fb55` |
| 15 | `theorem` | [str_hom_commute](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/str-hom-commute--95a09274038d1268e0a521f8.md) | 137 | `result-track:95a09274038d1268e0a521f817ea218c52285d2ebee1d13d1a71e962c767b9e4` |
| 16 | `theorem` | [join_distrib](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/join-distrib--7803dd461539df3b44f5e58d.md) | 144 | `result-track:7803dd461539df3b44f5e58daa6b42bca99d306225c5b798bff2ebbd58985991` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--6f33661a5fd107eafc417b6e.md) | 150 | `declaration-track:6f33661a5fd107eafc417b6e2fac025bdf6beeecebe3470160c7b7903a0b070a` |
| 18 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/isclosed-iff--e9a618619a162fa88a2436c0.md) | 157 | `result-track:e9a618619a162fa88a2436c0df6f6a45982a99c49ed3453f0912826a2ac930a2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--261512d6145bde9fe8bf7489.md) | 171 | `declaration-track:261512d6145bde9fe8bf748902020196087644d978bb3e62ba7d7e3720418677` |
| 20 | `def` | [basic](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/basic--8554361329cc66f6313d932d.md) | 181 | `declaration-track:8554361329cc66f6313d932d20ec17b38174ab25730c452623492293919a2b61` |
| 21 | `def` | [cl](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/cl--100e380ea08c6b093b0c98a0.md) | 185 | `declaration-track:100e380ea08c6b093b0c98a0a678165701a119be69dbabc307b498f842673d41` |
| 22 | `theorem` | [basic_inter](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/basic-inter--80bd2dd3c1964fd8f8311dd0.md) | 188 | `result-track:80bd2dd3c1964fd8f8311dd08e45068a17bf06265e07d028fed620e372b205aa` |
| 23 | `theorem` | [subset_cl](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/subset-cl--dd86e4f4f565ba42644b79a5.md) | 197 | `result-track:dd86e4f4f565ba42644b79a5211206c6e7e81c7632636d4530137bdb4b693f08` |
| 24 | `theorem` | [cl_cl](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/cl-cl--ebb71c0b90ffa063332d79ba.md) | 200 | `result-track:ebb71c0b90ffa063332d79ba1c296c6e5489c080768bcb61d6517a6a37a1c67d` |
| 25 | `theorem` | [isClosed_cl](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/isclosed-cl--7eb11acacbffea96740d8203.md) | 259 | `result-track:7eb11acacbffea96740d8203e00b3a7f7bd18df0156467b244d1de22ac4367e8` |
| 26 | `theorem` | [str_eq_of_le_nhds](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/str-eq-of-le-nhds--5cc533eabdcde959d5190765.md) | 264 | `result-track:5cc533eabdcde959d51907656da2aebcf2b7eb09350b7e67c7d5a2c5c2e8a6ac` |
| 27 | `theorem` | [le_nhds_of_str_eq](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/le-nhds-of-str-eq--0a7ff25912ee3d724900ad02.md) | 334 | `result-track:0a7ff25912ee3d724900ad02bf1e2e66fc6a0d7879d94ca0c87d48caaaf26f70` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/instance--7546cb1244687180615a82e4.md) | 338 | `declaration-track:7546cb1244687180615a82e4ea340bea8e37f96379e801351b6f6ab99ac1f154` |
| 29 | `theorem` | [lim_eq_str](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/lim-eq-str--1ff0b0db84770eca507227c6.md) | 344 | `result-track:1ff0b0db84770eca507227c62e14dbe849a9d9f7950602c91ac952a775e344a0` |
| 30 | `theorem` | [cl_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/cl-eq-closure--6711e5ed25e3e77017fa75ff.md) | 348 | `result-track:6711e5ed25e3e77017fa75ffd0018d752a1dea883038219e509f78430a909f47` |
| 31 | `theorem` | [continuous_of_hom](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/continuous-of-hom--4b1afcab46378bea2d3c775e.md) | 358 | `result-track:4b1afcab46378bea2d3c775eb03a809481a1ed7323690258fab5f65e60d2a063` |
| 32 | `def` | [ofTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/oftopologicalspace--a7db0993d15e883ac918c287.md) | 367 | `declaration-track:a7db0993d15e883ac918c287d145a7d080ccae5fca65ffa1decad4af6253b674` |
| 33 | `def` | [homOfContinuous](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/homofcontinuous--ab6b1b20b97475d950801002.md) | 397 | `declaration-track:ab6b1b20b97475d950801002e0e9c0c8b99727618676d5c2223616d16cb32ee4` |
| 34 | `def` | [compactumToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/compactumtocomphaus--8b3ee56863ce1d9edfba422f.md) | 409 | `declaration-track:8b3ee56863ce1d9edfba422f52df185fc52050eb0617f12e581cc9cac50d2d04` |
| 35 | `instance` | [full](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/full--34c246e66227e6f4f215479c.md) | 418 | `declaration-track:34c246e66227e6f4f215479c6a0ef3444f13b827db029324c3de870dbaa9ed9d` |
| 36 | `instance` | [faithful](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/faithful--f48d5c233b58d96f8d669c86.md) | 422 | `declaration-track:f48d5c233b58d96f8d669c86e0fbb60d689e90d0c217269757ee446bc4401f46` |
| 37 | `def` | [isoOfTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/isooftopologicalspace--44a5f0b1949b3037bce852b4.md) | 431 | `declaration-track:44a5f0b1949b3037bce852b420f8785cb0c8705fb5a9290773ae139c3009bc3d` |
| 38 | `instance` | [essSurj](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/esssurj--6fc4d9d60b739dfb78a57477.md) | 448 | `declaration-track:6fc4d9d60b739dfb78a57477b5bfccaac51c10f4f5d699b9cd70b9f92376ac41` |
| 39 | `instance` | [isEquivalence](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/isequivalence--2813cea3720615fd4fc2dc7e.md) | 452 | `declaration-track:2813cea3720615fd4fc2dc7e04e6ac68de1df9b59b691513e95dcec22ca95210` |
| 40 | `def` | [compactumToCompHausCompForget](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/compactumtocomphauscompforget--7f8c61f48a8c67d6ffe70aab.md) | 458 | `declaration-track:7f8c61f48a8c67d6ffe70aab24d1936723278b34d98e8396f9c3df12a014e223` |
| 41 | `instance` | [CompHaus.forgetCreatesLimits](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/comphaus-forgetcreateslimits--32969831abb5b9a3439832f9.md) | 469 | `declaration-track:32969831abb5b9a3439832f92b023e08514c482bca3482891a3d3ad173563311` |
| 42 | `instance` | [Profinite.forgetCreatesLimits](../../../../../mathematics/Topology/GeneralTopology/Compactum/Variant8b04e7d0194169a40c86380582a23b2b1638aba992d458d5b395cbd321583816.lean/declarations/profinite-forgetcreateslimits--8daeb2b5f3257f211c9094fd.md) | 477 | `declaration-track:8daeb2b5f3257f211c9094fd82a182ccec25357ecfb4d6ce1a5a028138375adf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
