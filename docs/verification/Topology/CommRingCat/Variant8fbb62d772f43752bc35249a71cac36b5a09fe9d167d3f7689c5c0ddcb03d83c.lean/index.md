# Verification target: GRWTSK.Topology.CommRingCat.Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70c2b3a37ba4774d4b70fc0a65ae3dee405ed92a",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/index.md) · [Full source](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70c2b3a37ba4774d4b70fc0a65ae3dee405ed92a`.

Source path: `GRWTSK/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCommRingCat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/example--7e0af68d62a11ff81db22c9b.md) | 45 | `declaration-track:7e0af68d62a11ff81db22c9b21ce0459d521b495becae41e9728bb87c074ae35` |
| 2 | `abbrev` | [restrictOpenCommRingCat](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/restrictopencommringcat--18d771966fecebd3e32e4815.md) | 62 | `declaration-track:18d771966fecebd3e32e48151fd31794d03e2a7fea0c7fa70c53747b8ff79152` |
| 3 | `lemma` | [restrictOpenCommRingCat_apply](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/restrictopencommringcat-apply--17155030928c1dbf8dd11d3b.md) | 74 | `result-track:17155030928c1dbf8dd11d3bc19c67d893219b8dd334fffedf7f0bc0564cc24d` |
| 4 | `lemma` | [_root_.CommRingCat.presheaf_restrict_restrict](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/root-commringcat-presheaf-restrict-restrict--24d9a487a9ea3742774265f9.md) | 82 | `result-track:24d9a487a9ea3742774265f9782a38111a1bb8c17e6c5964b52a3299183968f9` |
| 5 | `structure` | [SubmonoidPresheaf](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/submonoidpresheaf--67f437c5834f5ac250630083.md) | 97 | `declaration-track:67f437c5834f5ac2506300839f66a646aefbc89ea02b0cd651534dba5b72948f` |
| 6 | `def` | [SubmonoidPresheaf.localizationPresheaf](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/submonoidpresheaf-localizationpresheaf--9bd6d5cdb25a8d08526cdc9f.md) | 105 | `declaration-track:9bd6d5cdb25a8d08526cdc9f8c54721753cb7747e200744c83ccd3098d849480` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--da9336d89bc8ddccce765b39.md) | 119 | `declaration-track:da9336d89bc8ddccce765b39325fbe92065d65646f48fa4ef3fac28f4bc7c6b3` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--fb462d9d27d1b6e4a2c3af42.md) | 122 | `declaration-track:fb462d9d27d1b6e4a2c3af42726289edef902aa1fb9bdb227a5b4f4320ab6b31` |
| 9 | `def` | [SubmonoidPresheaf.toLocalizationPresheaf](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/submonoidpresheaf-tolocalizationpresheaf--4a1fdd87e98a4608d56ac763.md) | 127 | `declaration-track:4a1fdd87e98a4608d56ac76361387f6daba641a310078acb1f0c0a5669e609d9` |
| 10 | `instance` | [epi_toLocalizationPresheaf](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/epi-tolocalizationpresheaf--12161f0c1b2f4c79cbc01a13.md) | 131 | `declaration-track:12161f0c1b2f4c79cbc01a13601f540fd52dfb80b0926be302686c69df9fb382` |
| 11 | `def` | [submonoidPresheafOfStalk](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/submonoidpresheafofstalk--d45232fa5719460df4fef21e.md) | 139 | `declaration-track:d45232fa5719460df4fef21efa7d751f970fd9aa955f523cd27018cd20615373` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--de2504f1b2c2437e590f39e6.md) | 150 | `declaration-track:de2504f1b2c2437e590f39e69d7f57224d541ce7eb9258be6271f80f3ceabdf6` |
| 13 | `def` | [totalQuotientPresheaf](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/totalquotientpresheaf--078669f16d52c948e59dd218.md) | 154 | `declaration-track:078669f16d52c948e59dd218e0482f75b815d2a8f63f5c8adc5b1de29477aabc` |
| 14 | `def` | [toTotalQuotientPresheaf](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/tototalquotientpresheaf--d36d96d5781c5f3bc614a95c.md) | 158 | `declaration-track:d36d96d5781c5f3bc614a95c909e3341de02f073c9c3fefeda3d73d333f1138f` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--a38f3602c054f7ffd99cbe27.md) | 163 | `declaration-track:a38f3602c054f7ffd99cbe27c79940bbcd56912a02aa59249336215b4826ba25` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--0bf5b1b673d7e075caba2ba2.md) | 165 | `declaration-track:0bf5b1b673d7e075caba2ba2ce6fac29bf157ef410a2b8e3765f26850920cd7b` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--9f3dcb687a067a278ee5e4bf.md) | 194 | `declaration-track:9f3dcb687a067a278ee5e4bfc79df30df58ed2e246f01cf30fce1a1f1f646791` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--486f5a0d47e3c52b2a205241.md) | 197 | `declaration-track:486f5a0d47e3c52b2a205241416475551993e6caef6df034e6a88402f6ffa6bd` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--4e892af9bc5e7f6da7ff8833.md) | 200 | `declaration-track:4e892af9bc5e7f6da7ff88338f7e63d0c6701c3b13bbf0c596a56b4d3953374a` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--f7e33a2ba09987c07aae6a62.md) | 203 | `declaration-track:f7e33a2ba09987c07aae6a623b6d92e03512852b86414949016637fb0583cf17` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--d93c02a47d82f879e8fb7658.md) | 206 | `declaration-track:d93c02a47d82f879e8fb7658fcae72e632c80d586b638bff09a7b4baab0c64b8` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--77b4b62f1d5bb2cc772bb911.md) | 209 | `declaration-track:77b4b62f1d5bb2cc772bb9116b318c5456d078ba2f2eb17ac96304dccd5fd9d7` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--c5ff33d8fc869e8498414ae7.md) | 212 | `declaration-track:c5ff33d8fc869e8498414ae78dec16bf66198a876f4ae6083e01c310340a7503` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--8cf47b978e543df25a689da2.md) | 215 | `declaration-track:8cf47b978e543df25a689da2000220756b6be7441462a6fac8739bf0dc3e8628` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--e66176f8396b926777175711.md) | 218 | `declaration-track:e66176f8396b926777175711c31312534fd0e39d2d5ba863bc45fdbe5a0ef700` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--c69014177571a89d01ae552e.md) | 221 | `declaration-track:c69014177571a89d01ae552e4d095864de10923669409a8e12b2d4cb553d2a79` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--cfc0050365f17709117a6fda.md) | 224 | `declaration-track:cfc0050365f17709117a6fdad9b45e0656ee2ca326bebc2c3da909c9639dca81` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/instance--addf9957dfc97b08b2fe4467.md) | 227 | `declaration-track:addf9957dfc97b08b2fe4467eec2cc74ae5d0351cd30cd9f6d8b5c95200baf9f` |
| 29 | `def` | [continuousFunctions](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/continuousfunctions--82c2fc7751eaa4b062c4801f.md) | 235 | `declaration-track:82c2fc7751eaa4b062c4801ffe54a09aeb0f6e54953e0779b1a925fa40cb7720` |
| 30 | `def` | [pullback](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/pullback--7833ebb40231e1f079039f77.md) | 241 | `declaration-track:7833ebb40231e1f079039f77f82b976a1e0160316f9e2b9b6720d9b619423604` |
| 31 | `def` | [map](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/map--6c6b8b10d7f39cdf08288811.md) | 251 | `declaration-track:6c6b8b10d7f39cdf0828881175da19ce67c7c030e5d8f65f860c06d5032f3ae5` |
| 32 | `def` | [commRingYoneda](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/commringyoneda--de5ef4ea4ce508fff4f5b0d9.md) | 264 | `declaration-track:de5ef4ea4ce508fff4f5b0d9dc650e0d25d1523d3cb68bd62e49c9697e11e72b` |
| 33 | `def` | [presheafToTopCommRing](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/presheaftotopcommring--2dd7c1bdec0f633ada5a139d.md) | 289 | `declaration-track:2dd7c1bdec0f633ada5a139dbfd9f84bbaa5ca88a664f171a0d4c80f37b12d0b` |
| 34 | `instance` | [algebra_section_stalk](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/algebra-section-stalk--15237e19715bc27e9e8d0ee4.md) | 302 | `declaration-track:15237e19715bc27e9e8d0ee44d87706c9ed9c41d1d6d4b71a1ccfe60cb411b95` |
| 35 | `theorem` | [stalk_open_algebraMap](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/stalk-open-algebramap--f66d745a32f157ae3062375e.md) | 307 | `result-track:f66d745a32f157ae3062375e6bc11b0f01fada46121d04a4666b4736354139cd` |
| 36 | `def` | [objSupIsoProdEqLocus](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/objsupisoprodeqlocus--07d413931c600dcfdc1b9dc8.md) | 328 | `declaration-track:07d413931c600dcfdc1b9dc8a77ef33711aca409331682e8e57f1cff932a9fb4` |
| 37 | `theorem` | [objSupIsoProdEqLocus_hom_fst](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/objsupisoprodeqlocus-hom-fst--6c5627184652734b7ed9c5a0.md) | 338 | `result-track:6c5627184652734b7ed9c5a088ca3a60e477a9c8ae35383aa1e7c55b66745c1f` |
| 38 | `theorem` | [objSupIsoProdEqLocus_hom_snd](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/objsupisoprodeqlocus-hom-snd--7f3b14c3251db2ea004b9a95.md) | 345 | `result-track:7f3b14c3251db2ea004b9a953f84b4088511db650329e7bd37a5d8b21583ec8f` |
| 39 | `theorem` | [objSupIsoProdEqLocus_inv_fst](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/objsupisoprodeqlocus-inv-fst--8dbf3e37787594129cfb9eea.md) | 352 | `result-track:8dbf3e37787594129cfb9eea97cdd232084e6601797996832237bb49c2146338` |
| 40 | `theorem` | [objSupIsoProdEqLocus_inv_snd](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/objsupisoprodeqlocus-inv-snd--eacf01a72df8a2883c0a8f41.md) | 359 | `result-track:eacf01a72df8a2883c0a8f4163e283dd913dbf93b549cfbcd9fc39ec69d2b489` |
| 41 | `theorem` | [objSupIsoProdEqLocus_inv_eq_iff](../../../../mathematics/Topology/CommRingCat/Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.lean/declarations/objsupisoprodeqlocus-inv-eq-iff--a572f4a5b9b0c786b5004db2.md) | 366 | `result-track:a572f4a5b9b0c786b5004db2304b7e26ed0c71a2081ae6727f1071b9ee0d3d4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
