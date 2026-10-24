# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95a116326b40a283adc1cb4fa17ae3a474b9bdd5",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95a116326b40a283adc1cb4fa17ae3a474b9bdd5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Option` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeiUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/fintypeiunion--a1f8ec46f4429dead00660a3.md) | 46 | `declaration-track:a1f8ec46f4429dead00660a33858efc9773ab67b01dba850d9e831ac2e76fa60` |
| 2 | `instance` | [fintypesUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/fintypesunion--0378a4f6f676451d9567fa89.md) | 50 | `declaration-track:0378a4f6f676451d9567fa898fa0d68790e8b21e2365d00ad7657505f5c94982` |
| 3 | `lemma` | [toFinset_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/tofinset-iunion--19345973b3adfdc228442e1f.md) | 55 | `result-track:19345973b3adfdc228442e1f1041305a09e8c8695a507ce2ee16b61dee051369` |
| 4 | `def` | [fintypeBiUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/fintypebiunion--e315dd5f3c845ae1d6c38cde.md) | 65 | `declaration-track:e315dd5f3c845ae1d6c38cde9806c009971832686b3303665e5a1884857e9150` |
| 5 | `instance` | [fintypeBiUnion'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/fintypebiunion--c93dd05b6c0584ec1c391292.md) | 70 | `declaration-track:c93dd05b6c0584ec1c3912925dbb949c0b87712aac8dae4a9927bbb91c2838f5` |
| 6 | `instance` | [finite_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-iunion--f8a6e54dc78b55a9b4c590d5.md) | 92 | `declaration-track:f8a6e54dc78b55a9b4c590d5e2cdbcd46cc406f80b8a90acc2407afa71a55b49` |
| 7 | `instance` | [finite_sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-sunion--2abf1db49b1bf11771c8d2ab.md) | 97 | `declaration-track:2abf1db49b1bf11771c8d2ab9cfc085837555a6701a1bef2f3265219c2888f96` |
| 8 | `theorem` | [finite_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-biunion--312deec55d607c0cea9c8c39.md) | 102 | `result-track:312deec55d607c0cea9c8c399647a2418f8cd849b22d3acead82c4fa7e5ed97c` |
| 9 | `instance` | [finite_biUnion'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-biunion--a881682b6160b65790192c27.md) | 108 | `declaration-track:a881682b6160b65790192c27367af0496cb6b5e46ce4e3405f349fe4e28d3a56` |
| 10 | `instance` | [finite_biUnion''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-biunion--93e1e0112fa7589523aff66f.md) | 115 | `declaration-track:93e1e0112fa7589523aff66ff9de022416f20e04f87a2869ca3be38ae336d27b` |
| 11 | `instance` | [finite_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-iinter--d40c381dd6d6b1dc6716f784.md) | 119 | `declaration-track:d40c381dd6d6b1dc6716f784786712b9b873368a50167bbe17adc141f2f74e5b` |
| 12 | `theorem` | [finite_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-iunion--bcc6967b31f975b6ffe9e6be.md) | 139 | `result-track:bcc6967b31f975b6ffe9e6be4238712f9ee8a12c839be2c208f1a78726a54010` |
| 13 | `theorem` | [Finite.biUnion'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-biunion--ca7048921093abbaa7ffc2f7.md) | 144 | `result-track:ca7048921093abbaa7ffc2f733225bb82551d432b355618bf4c90d7696bb330e` |
| 14 | `theorem` | [Finite.biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-biunion--13a055b1b484b92ab185b131.md) | 150 | `result-track:13a055b1b484b92ab185b1312a2ed810eb95053938ad4196b5c5628e3daf41aa` |
| 15 | `theorem` | [Finite.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-sunion--f23f5e071103161fabe6672b.md) | 154 | `result-track:f23f5e071103161fabe6672b5123e0484f5f4a493ed11e1fc6c9fef9af16f55e` |
| 16 | `theorem` | [Finite.sInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-sinter--8c58fc9fc3845bbc884ee2f7.md) | 158 | `result-track:8c58fc9fc3845bbc884ee2f764a8f34df247447ce585f8c64e05c51b75a10861` |
| 17 | `theorem` | [Finite.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-iunion--6984cfe27e4ee8814a63f259.md) | 164 | `result-track:6984cfe27e4ee8814a63f25979986ca321fd54813142a2e06be394396f0b5f22` |
| 18 | `lemma` | [finite_iUnion_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-iunion-iff--62c771175457049ef0b9da59.md) | 175 | `result-track:62c771175457049ef0b9da59c586a8e7219ad021c27f12a43888ffdca2204022` |
| 19 | `lemma` | [Infinite.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/infinite-iunion--2ea5625f05248c09f803b32a.md) | 190 | `result-track:2ea5625f05248c09f803b32ac096008d6ee72a7fabdf46a0987ac05c2da465ae` |
| 20 | `lemma` | [Infinite.iUnion₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/infinite-iunion--2874da7dbd4fd882b7c91428.md) | 194 | `result-track:2874da7dbd4fd882b7c91428e7ca7234d040eac720db38d52088b5e3d66efd26` |
| 21 | `lemma` | [finite_iUnion_of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-iunion-of-subsingleton--e765ca7f6754fc8041d27e29.md) | 198 | `result-track:e765ca7f6754fc8041d27e29ecb48af35a7868da091816a97f6b1ce67f4ddab1` |
| 22 | `lemma` | [PairwiseDisjoint.finite_biUnion_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/pairwisedisjoint-finite-biunion-iff--c398954a58f882d0213fd1c3.md) | 205 | `result-track:c398954a58f882d0213fd1c3a11c0c261dd58521b856c90e2babde5a30fbf813` |
| 23 | `theorem` | [Finite.preimage'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-preimage--2a9ca3a1e14c0474bb65e496.md) | 213 | `result-track:2a9ca3a1e14c0474bb65e496866bbb1cf842f6f1ad74a2fcdc95e80c4a155304` |
| 24 | `theorem` | [union_finset_finite_of_range_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/union-finset-finite-of-range-finite--399c022e978886c4f1ef4ed7.md) | 221 | `result-track:399c022e978886c4f1ef4ed75daa78458102a7d5cb79d2b763368432690647de` |
| 25 | `lemma` | [Finite.of_finite_fibers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-of-finite-fibers--12c750a3786053ebf00246cd.md) | 234 | `result-track:12c750a3786053ebf00246cd70d28db83c87f0890f37d1bd13b960faeb693fb3` |
| 26 | `theorem` | [finite_subset_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-subset-iunion--99efba37cb0cf31dbafc185b.md) | 240 | `result-track:99efba37cb0cf31dbafc185bf2b5b8d6350bcde1b7b965a50b423788c2fc8519` |
| 27 | `theorem` | [eq_finite_iUnion_of_finite_subset_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/eq-finite-iunion-of-finite-subset-iunion--8895872789a50347ec521866.md) | 248 | `result-track:8895872789a50347ec521866e71ce1260b931cc5f19388d7ac30101ee86683eb` |
| 28 | `theorem` | [infinite_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/infinite-iunion--d6f2a4597f9cd0489f963d79.md) | 269 | `result-track:d6f2a4597f9cd0489f963d79a495fb0ddf263247ebaf14ead5ba67f53240f865` |
| 29 | `theorem` | [Infinite.biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/infinite-biunion--e0990ff0d140743058e5bf4d.md) | 274 | `result-track:e0990ff0d140743058e5bf4d85446311b65c31ecb1759cca496feec1941452e3` |
| 30 | `theorem` | [Infinite.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/infinite-sunion--b8e1db49b0dcc71cd5c676b6.md) | 280 | `result-track:b8e1db49b0dcc71cd5c676b61d0950f7eda38203f3987734a4680047e8646b6c` |
| 31 | `lemma` | [map_finite_biSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/map-finite-bisup--a85f8029b35598dd9cb0ffe7.md) | 288 | `result-track:a85f8029b35598dd9cb0ffe7197d0759c44689ab00c6bdbd2f2aac444a0c51a1` |
| 32 | `lemma` | [map_finite_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/map-finite-isup--1c9447068768a4ecc86123e6.md) | 296 | `result-track:1c9447068768a4ecc86123e6b96447709bab553859c7d61bc72dc5e7f42223a8` |
| 33 | `theorem` | [Finite.iSup_biInf_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-isup-biinf-of-monotone--9aad1ab0263ac70740bbd4c8.md) | 303 | `result-track:9aad1ab0263ac70740bbd4c8c4ed02437a0550c1d5912c3e07ff62cf7c7ff2a7` |
| 34 | `theorem` | [Finite.iSup_biInf_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-isup-biinf-of-antitone--54a7780c30ea2ccfa05c2733.md) | 314 | `result-track:54a7780c30ea2ccfa05c2733f0680acc306962ba29f8f0b719e1777750d2ddb5` |
| 35 | `theorem` | [_root_.iSup_iInf_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/root-isup-iinf-of-monotone--96c0416cbf1d54dd9c3301dc.md) | 320 | `result-track:96c0416cbf1d54dd9c3301dc1502e21d4a69b8620a565121c04042f3dd6d642b` |
| 36 | `theorem` | [_root_.iSup_iInf_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/root-isup-iinf-of-antitone--6bd7d3851001a8b7891d4754.md) | 326 | `result-track:6bd7d3851001a8b7891d4754c09fbb47c1b2752eefe2e71ab285280b054b0abb` |
| 37 | `theorem` | [iUnion_iInter_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/iunion-iinter-of-monotone--0e55b18628302df68ca3eb13.md) | 332 | `result-track:0e55b18628302df68ca3eb132740192fdce57dcbce4ae8a504731cbd4611c725` |
| 38 | `theorem` | [iUnion_iInter_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/iunion-iinter-of-antitone--2ddac3bb58a13b05f2b97096.md) | 338 | `result-track:2ddac3bb58a13b05f2b97096f71edb61dfc0908f968c09904376515e4baf92e4` |
| 39 | `theorem` | [iInter_iUnion_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/iinter-iunion-of-monotone--bf2809bcc6cb6aa6e82576ff.md) | 344 | `result-track:bf2809bcc6cb6aa6e82576ff9ff7b2c1e9aa9d82df5a9325cc9d6f8866a5cf51` |
| 40 | `theorem` | [iInter_iUnion_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/iinter-iunion-of-antitone--74af60c6a65e4e82f9295dd4.md) | 350 | `result-track:74af60c6a65e4e82f9295dd49f189b68ed975b6efa4aaf493ba86530d4232ebd` |
| 41 | `theorem` | [iUnion_pi_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/iunion-pi-of-monotone--86ce7fd57110baacd7bfac99.md) | 355 | `result-track:86ce7fd57110baacd7bfac99e4a31fd30e3b200a4bdc31fefd3c42166435504d` |
| 42 | `theorem` | [iUnion_univ_pi_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/iunion-univ-pi-of-monotone--e6d6139b2eca7150f3c104d1.md) | 363 | `result-track:e6d6139b2eca7150f3c104d1c4cb9bec42d4e9a0eeb40a3196f68856ee0f3935` |
| 43 | `theorem` | [_root_.iInf_iSup_eq_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/root-iinf-isup-eq-of-finite--b5d8e329ccde87efb793a9da.md) | 368 | `result-track:b5d8e329ccde87efb793a9da0f5240ac5e820e53860dd05f08f85195ac2b1f4b` |
| 44 | `theorem` | [_root_.iSup_iInf_eq_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/root-isup-iinf-eq-of-finite--edd58feb82d3671f1705da46.md) | 383 | `result-track:edd58feb82d3671f1705da46aa611aeca69abf78b78be7c82c0e6eb9f20c06f8` |
| 45 | `theorem` | [Finite.biInf_iSup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-biinf-isup-eq--a26cc28f2e35eea5d43adc0f.md) | 387 | `result-track:a26cc28f2e35eea5d43adc0f11f062322085d7e3eb58d6a5405684c71c8c8f50` |
| 46 | `theorem` | [Finite.biSup_iInf_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-bisup-iinf-eq--141997480ed356f5e95de1f1.md) | 402 | `result-track:141997480ed356f5e95de1f16d0d3ff9dd4568a2d9e4cdad491539c7940c2945` |
| 47 | `theorem` | [Finite.bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-bddabove--25cac3bb4c472d86146f7896.md) | 413 | `result-track:25cac3bb4c472d86146f78960d7fbe32f3613314ab6722ce0f635bddedd87010` |
| 48 | `theorem` | [Finite.bddAbove_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finite-bddabove-biunion--097deba8e0181e26ccd1001a.md) | 418 | `result-track:097deba8e0181e26ccd1001a540a032a2fd5e1ac46b28ae3aac2f99fd11802bf` |
| 49 | `theorem` | [infinite_of_not_bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/infinite-of-not-bddabove--9c081f793d11f015b1a48643.md) | 425 | `result-track:9c081f793d11f015b1a48643b11586e1c4459458fe45dfed68153735c41efca2` |
| 50 | `theorem` | [Finset.bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/finset-bddabove--1fc61f3d8c4fcd37e69cb56e.md) | 434 | `result-track:1fc61f3d8c4fcd37e69cb56e33afc4e488877495b13ccedf8d5816f29e3ad2a4` |
| 51 | `lemma` | [Set.finite_sdiff_iUnion_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/set-finite-sdiff-iunion-ioo--6639f2de43d531c5be3ea049.md) | 441 | `result-track:6639f2de43d531c5be3ea04971d931458f211e51e85e730eeb4c7c04d54869da` |
| 52 | `lemma` | [Set.finite_sdiff_iUnion_Ioo'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/set-finite-sdiff-iunion-ioo--b560cbf9a2ac8a1a773c6c54.md) | 448 | `result-track:b560cbf9a2ac8a1a773c6c54dbda401fa31372566d7cb62eb273bf28e4d4172c` |
| 53 | `lemma` | [Directed.exists_mem_subset_of_finset_subset_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/directed-exists-mem-subset-of-finset-subset-biunion--4b7cf348157f0b2a837e0cfa.md) | 454 | `result-track:4b7cf348157f0b2a837e0cfa6f8bceaddd40b08dc25d75845164aa1af5d4ae81` |
| 54 | `theorem` | [DirectedOn.exists_mem_subset_of_finset_subset_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/directedon-exists-mem-subset-of-finset-subset-biunion--a8cbac671b04ea474433dc15.md) | 465 | `result-track:a8cbac671b04ea474433dc1562f430238b1e9f3c7430c37b80f3e2967acd2f95` |
| 55 | `theorem` | [DirectedOn.exists_mem_subset_of_finite_of_subset_sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.lean/declarations/directedon-exists-mem-subset-of-finite-of-subset-sunion--4914e9864997ae0c1d15415e.md) | 472 | `result-track:4914e9864997ae0c1d15415e792ce9ce14fd38f63bedfc140a0b816d9e488f66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
