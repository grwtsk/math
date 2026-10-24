# Verification target: GRWTSK.Algebra.Tower.Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fa4289ff3e84fa98bfbd8caa90fbae07b39d864",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fa4289ff3e84fa98bfbd8caa90fbae07b39d864`.

Source path: `GRWTSK/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lsmul](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/lsmul--974126da85c8705868917e06.md) | 66 | `declaration-track:974126da85c8705868917e06f8882c7566b25788bc5b79371c796ce45ad3df08` |
| 2 | `theorem` | [lsmul_coe](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/lsmul-coe--5235f60640728556546a5c77.md) | 76 | `result-track:5235f60640728556546a5c77fc0d460f415a3cd22e48cb61e7bd4f6106cd9bfb` |
| 3 | `theorem` | [algebraMap_smul](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/algebramap-smul--bda911a2a321c56e2897aab9.md) | 91 | `result-track:bda911a2a321c56e2897aab9328ea8f93544e9d84e8bbd9249c35bbd4fef58d9` |
| 4 | `theorem` | [of_algebraMap_eq](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/of-algebramap-eq--c4e478317ba03c92494ee6a9.md) | 105 | `result-track:c4e478317ba03c92494ee6a98701f3ea6edf7baaf6b9386befd990d40589abfb` |
| 5 | `theorem` | [of_algebraMap_eq'](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/of-algebramap-eq--b8142ae68625a799b65f2acd.md) | 111 | `result-track:b8142ae68625a799b65f2acd2020bd1824318aa1f0a58fbf99804866900445fc` |
| 6 | `theorem` | [algebraMap_eq](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/algebramap-eq--09e2e4c3f88b8adecab9fc49.md) | 122 | `result-track:09e2e4c3f88b8adecab9fc493766d9867d7169f28c7c71ef71e81357f14bb58f` |
| 7 | `theorem` | [algebraMap_apply](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/algebramap-apply--d23d75fb363efd606bcdedc1.md) | 127 | `result-track:d23d75fb363efd606bcdedc1e7a060a07d87578f137ad84e0b48ca923d9ca2dd` |
| 8 | `theorem` | [Algebra.ext](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/algebra-ext--0debfb5ab09485bb460a4d7d.md) | 132 | `result-track:0debfb5ab09485bb460a4d7de81c73c07f558c663987c03045d0f4dfb0123dfe` |
| 9 | `def` | [toAlgHom](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/toalghom--495e593ea202bbd949477302.md) | 140 | `declaration-track:495e593ea202bbd949477302ec2465976ad54179a6ca96546bcaf3dd7874d802` |
| 10 | `theorem` | [toAlgHom_apply](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/toalghom-apply--3baffcc49f7912348754ea01.md) | 144 | `result-track:3baffcc49f7912348754ea014c82b63267c2bd9f5dfc19d753b8c6dbcbccbab4` |
| 11 | `theorem` | [coe_toAlgHom](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/coe-toalghom--6b150c8acb40014fabceff4a.md) | 148 | `result-track:6b150c8acb40014fabceff4a317abac28fe3d765346cf9f2dc3bf0aa3056baa4` |
| 12 | `theorem` | [coe_toAlgHom'](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/coe-toalghom--789b736fa3ef4c57289a04f1.md) | 153 | `result-track:789b736fa3ef4c57289a04f1bfd23746b99eb03b5b8b98b18055ac345c4fa2d4` |
| 13 | `theorem` | [_root_.AlgHom.map_algebraMap](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/root-alghom-map-algebramap--7865dd248c82d1dc9974e257.md) | 159 | `result-track:7865dd248c82d1dc9974e257c36a35e0aaeacd4c0450e8475adf761632fd621d` |
| 14 | `theorem` | [_root_.AlgHom.comp_algebraMap_of_tower](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/root-alghom-comp-algebramap-of-tower--3d7c3246b1f0babb4f0c0389.md) | 167 | `result-track:3d7c3246b1f0babb4f0c03894f615dd5cb1c4784cb60a8012e277c0bab81ab7b` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/instance--22048212500e46aedf0fc1f9.md) | 173 | `declaration-track:22048212500e46aedf0fc1f934f64bcfdf239ab869564c8e33522ea0696562ff` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/instance--7ec7e37ab5f0b598dc99f3b4.md) | 178 | `declaration-track:7ec7e37ab5f0b598dc99f3b4fe4da26454d6c4f9d73dd2f4324ee4a8ef80bad0` |
| 17 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/restrictscalars--b8e9df6ed7d90bd8618e138b.md) | 206 | `declaration-track:b8e9df6ed7d90bd8618e138babcc25be84e03ade9d07b8393b023272082ecba1` |
| 18 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/restrictscalars-apply--36ebdf48bfc292f2447a35f6.md) | 213 | `result-track:36ebdf48bfc292f2447a35f6e27ee67f5d9c16c1d846b1f50562e84de4986109` |
| 19 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/coe-restrictscalars--6c67a5efa9b6fb5136c146d4.md) | 217 | `result-track:6c67a5efa9b6fb5136c146d4e2ac69cbca7f0a2d6301227a2e61f04e337f83cd` |
| 20 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/coe-restrictscalars--e6a8fe1bb407cc5979451ccc.md) | 221 | `result-track:e6a8fe1bb407cc5979451ccc472b272af2093a6025ba2fbe9a69fcbed90099ab` |
| 21 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/restrictscalars-injective--b431e6efe5b347a6acaf83b7.md) | 224 | `result-track:b431e6efe5b347a6acaf83b7cbae24660e827b37c263c3eadb9813a1f6bc110b` |
| 22 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/restrictscalars--9eff45c8a6a273fdebf06c97.md) | 234 | `declaration-track:9eff45c8a6a273fdebf06c979c477cf4aa3f27670c2899838477025768e29bcc` |
| 23 | `theorem` | [restrictScalars_apply](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/restrictscalars-apply--18aa7ddcda41934b92f7889b.md) | 241 | `result-track:18aa7ddcda41934b92f7889be6f942195df4e1359eeb615a7676c45f04addaf1` |
| 24 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/coe-restrictscalars--72446b08f6ceff9ab1c80a21.md) | 245 | `result-track:72446b08f6ceff9ab1c80a21f0d7324fdbb28c4edc08dec7b06df98a815fd7ee` |
| 25 | `theorem` | [coe_restrictScalars'](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/coe-restrictscalars--7387720139d24acb47e67110.md) | 249 | `result-track:7387720139d24acb47e67110a6ddefcd9c1c0ec78bcb60716c199e3680a91430` |
| 26 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/restrictscalars-injective--dc8e7f5b2c455ca730128901.md) | 252 | `result-track:dc8e7f5b2c455ca73012890189bd880b6deca6f85d8f649f23bd61257364c2b1` |
| 27 | `theorem` | [restrictScalars_span](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/restrictscalars-span--9b3f8cd17ecc98e19e483758.md) | 271 | `result-track:9b3f8cd17ecc98e19e4837589c4269f34a562cce83c0a5ab99ed93dcca0f8d32` |
| 28 | `theorem` | [coe_span_eq_span_of_surjective](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/coe-span-eq-span-of-surjective--90807e8fc162bef0af70e15c.md) | 279 | `result-track:90807e8fc162bef0af70e15c89874f71de52b524f9fae28996622bde1f07b541` |
| 29 | `theorem` | [smul_mem_span_smul_of_mem](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/smul-mem-span-smul-of-mem--dc7759e210155cacabc6afe5.md) | 300 | `result-track:dc7759e210155cacabc6afe5242bc4d079f8dbfce3c7d35baaddff1aba1905e9` |
| 30 | `theorem` | [smul_mem_span_smul](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/smul-mem-span-smul--efaf177b699598e2df6a47bb.md) | 310 | `result-track:efaf177b699598e2df6a47bb62be7dc6f606137a584d235cc5b6027a4ba555f7` |
| 31 | `theorem` | [smul_mem_span_smul'](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/smul-mem-span-smul--082d1a1e3a3cc175631aa7bc.md) | 318 | `result-track:082d1a1e3a3cc175631aa7bcdbffaa5e2d0f2d909723b90387251d6b77172edf` |
| 32 | `theorem` | [span_smul_of_span_eq_top](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/span-smul-of-span-eq-top--ed4ab872dba404406ebf97ee.md) | 330 | `result-track:ed4ab872dba404406ebf97ee540790e92264cc1e467249de69beaaf25151842c` |
| 33 | `theorem` | [span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/span-algebramap-image--c00039c3661b34a20738bf97.md) | 350 | `result-track:c00039c3661b34a20738bf97e8553963cce30bc2f50cbf96e2daff00ef457ab3` |
| 34 | `theorem` | [span_algebraMap_image_of_tower](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/span-algebramap-image-of-tower--5fd17a5348636060731011d4.md) | 355 | `result-track:5fd17a5348636060731011d41a6c93055d4f4047ed56b9242cb4ad26716d5ea1` |
| 35 | `theorem` | [map_mem_span_algebraMap_image](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/map-mem-span-algebramap-image--a0242467c5e41e3124e04c42.md) | 362 | `result-track:a0242467c5e41e3124e04c42e4e0260085f68d6f054b4cc6f6745bdbe0e96d34` |
| 36 | `theorem` | [lsmul_injective](../../../../mathematics/Algebra/Tower/Variante57dc82e8622075d6ece9988ba6190990cc81b47e01b923062229f3f7e7425d9.lean/declarations/lsmul-injective--b6970222eb65ea23b45a440d.md) | 383 | `result-track:b6970222eb65ea23b45a440d7a16ccac7ea75b4c57e396a78872848bdf729642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
