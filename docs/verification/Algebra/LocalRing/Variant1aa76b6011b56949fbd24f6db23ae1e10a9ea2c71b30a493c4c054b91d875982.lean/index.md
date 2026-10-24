# Verification target: GRWTSK.Algebra.LocalRing.Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edc761e544ff194a9598b8528f634f2dcea429bc",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edc761e544ff194a9598b8528f634f2dcea429bc`.

Source path: `GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.JacobsonIdeal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.TransferInstance` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocalRing](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/localring--987820256f1e0f88075bc297.md) | 41 | `declaration-track:987820256f1e0f88075bc2976293186f002065678893ed4ad6eb88dc17a0e28c` |
| 2 | `theorem` | [of_isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-isunit-or-isunit-of-isunit-add--d4a263de2e2260c5ceea1a96.md) | 54 | `result-track:d4a263de2e2260c5ceea1a9677b360cf666c19b275fba3e10ea9ceee35e355b8` |
| 3 | `theorem` | [of_nonunits_add](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-nonunits-add--80ecc36722734d46bb38464f.md) | 60 | `result-track:80ecc36722734d46bb38464fb2f73714d079b45c8f3365659c2b7a61c21a84a6` |
| 4 | `theorem` | [of_unique_max_ideal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-unique-max-ideal--b485af4185245437a41f9ab7.md) | 66 | `result-track:b485af4185245437a41f9ab73cc04b61ba88f4c883e90bdffbb0ed162bfffa18` |
| 5 | `theorem` | [of_unique_nonzero_prime](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-unique-nonzero-prime--59a37a9c539d9ad29afc1abb.md) | 80 | `result-track:59a37a9c539d9ad29afc1abb2f662b5ad04db930be6bf1c3217c388e89f18b50` |
| 6 | `theorem` | [isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/isunit-or-isunit-of-isunit-add--45a64d33f078203404588c51.md) | 93 | `result-track:45a64d33f078203404588c515b0f8aa85399a5ab3b3a479ab470c0c49a206b5e` |
| 7 | `theorem` | [nonunits_add](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/nonunits-add--9410543e230462184b823c6d.md) | 99 | `result-track:9410543e230462184b823c6d07c0d1c6844664264a747f3237eae8f6dbdfdc3c` |
| 8 | `def` | [maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/maximalideal--098916bf1af3fba1c373f70c.md) | 106 | `declaration-track:098916bf1af3fba1c373f70c19d4583db522225db80da8151fba48a8f89f3c4c` |
| 9 | `instance` | [maximalIdeal.isMaximal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/maximalideal-ismaximal--2eb12559a12e7f860215e884.md) | 113 | `declaration-track:2eb12559a12e7f860215e8849703cff04760ee5ed8f4b6c1da714c7568581a04` |
| 10 | `theorem` | [maximal_ideal_unique](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/maximal-ideal-unique--db3f32bfcb3d633d398e9a9e.md) | 125 | `result-track:db3f32bfcb3d633d398e9a9e067c73949f2af323e35cbfe75003c62a4095f3d6` |
| 11 | `theorem` | [eq_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/eq-maximalideal--f521a2fba40caca0e04eb55e.md) | 132 | `result-track:f521a2fba40caca0e04eb55e809916238f3ff2b0888ba0e5d79b3a9cd720b282` |
| 12 | `theorem` | [le_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/le-maximalideal--de6b8ee4b890708194118b8b.md) | 136 | `result-track:de6b8ee4b890708194118b8ba10717556915005a25d98b8eb43ee843f1535974` |
| 13 | `theorem` | [mem_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/mem-maximalideal--e01d38ea5a6b7daf886f3fc4.md) | 142 | `result-track:e01d38ea5a6b7daf886f3fc41923085cea6dc98a4c8f65a0d99c04dc1fb49e89` |
| 14 | `theorem` | [isField_iff_maximalIdeal_eq](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/isfield-iff-maximalideal-eq--5083d30e832181f999f9e438.md) | 146 | `result-track:5083d30e832181f999f9e43823d530248f6197be5aa5b85ff9b317a3ebccead6` |
| 15 | `theorem` | [of_isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-isunit-or-isunit-one-sub-self--5a82e4bfcd7fdfe69e56e2f3.md) | 162 | `result-track:5a82e4bfcd7fdfe69e56e2f3baebe4be6e5d318e0ae79b5eb52fc1b6c73eb3c7` |
| 16 | `theorem` | [isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/isunit-or-isunit-one-sub-self--a7a9befbea84c8825a10da08.md) | 169 | `result-track:a7a9befbea84c8825a10da08236b8dadcfff7eda1fe0f9f6b0d9239df16fd01d` |
| 17 | `theorem` | [isUnit_of_mem_nonunits_one_sub_self](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/isunit-of-mem-nonunits-one-sub-self--5451ac9ca0ee799ef6f63fef.md) | 173 | `result-track:5451ac9ca0ee799ef6f63fef1384fd402547490d1ed9cb04038e4969d4a12379` |
| 18 | `theorem` | [isUnit_one_sub_self_of_mem_nonunits](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/isunit-one-sub-self-of-mem-nonunits--8a874b7434c0213996934717.md) | 177 | `result-track:8a874b7434c0213996934717457468c3e2ffc2c842261cbdefadee8d516e3d17` |
| 19 | `theorem` | [of_surjective'](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-surjective--84af5468d2b19de57827576b.md) | 181 | `result-track:84af5468d2b19de57827576b6d1fbdeedc5185c3bf2230019da09030dcdff87d` |
| 20 | `theorem` | [jacobson_eq_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/jacobson-eq-maximalideal--fff19897939554f391260fbc.md) | 191 | `result-track:fff19897939554f391260fbc5f5161a70918fa1de98a20742769c1fc3b97b27e` |
| 21 | `class` | [IsLocalRingHom](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/islocalringhom--515a172c0e00de61aae1547c.md) | 205 | `declaration-track:515a172c0e00de61aae1547c4ae392e695b57c1db5642d581491e32b75d67312` |
| 22 | `instance` | [isLocalRingHom_id](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/islocalringhom-id--c20936555e780f790afe35fc.md) | 214 | `declaration-track:c20936555e780f790afe35fc6f4b07d76ac9b64bbadba4603d287c073779be16` |
| 23 | `theorem` | [isUnit_map_iff](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/isunit-map-iff--90215598237f5b19e565fea6.md) | 219 | `result-track:90215598237f5b19e565fea6744d6121d91b209c973bfed0e4a2b03a06c66725` |
| 24 | `theorem` | [map_mem_nonunits_iff](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-mem-nonunits-iff--22157e50e0dd7e226df68257.md) | 225 | `result-track:22157e50e0dd7e226df6825799c64fb6bd5c6577cac67717aef5effa81386331` |
| 25 | `instance` | [isLocalRingHom_comp](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/islocalringhom-comp--d77b31be9027edc874d97eca.md) | 230 | `declaration-track:d77b31be9027edc874d97eca1e2f571901eb230535f2c1e70ccb034a019a47dc` |
| 26 | `instance` | [isLocalRingHom_equiv](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/islocalringhom-equiv--0dd4bfc390a37557768939a5.md) | 235 | `declaration-track:0dd4bfc390a37557768939a5aa900a7e7aa3c1add032b806ba992c310e1c110f` |
| 27 | `theorem` | [isUnit_of_map_unit](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/isunit-of-map-unit--64c2392c9095af1ceca25abb.md) | 242 | `result-track:64c2392c9095af1ceca25abb4520cec642ae573710eb39e46e93126b49a225c9` |
| 28 | `theorem` | [of_irreducible_map](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-irreducible-map--af2e2331b0a5346df28c2f71.md) | 246 | `result-track:af2e2331b0a5346df28c2f714309ce7acf1ff885d1fb9041ff23c2e9dd801290` |
| 29 | `theorem` | [isLocalRingHom_of_comp](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/islocalringhom-of-comp--2877af3cd6f81fdac1dded6d.md) | 253 | `result-track:2877af3cd6f81fdac1dded6d2cdd4d6810d4ac0f703c223184d1640a7c99300c` |
| 30 | `theorem` | [RingHom.domain_localRing](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/ringhom-domain-localring--5a515fd974f778ffe650ea8d.md) | 259 | `result-track:5a515fd974f778ffe650ea8dad4b1e2a30a4e7fb3a8b9f47ebcb8537b37536d6` |
| 31 | `theorem` | [map_nonunit](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-nonunit--877cdf2e7e1c0f0464f7b0d9.md) | 279 | `result-track:877cdf2e7e1c0f0464f7b0d97dea30de6b7ee248ef24f3bd218b60596a36874c` |
| 32 | `theorem` | [local_hom_TFAE](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/local-hom-tfae--c005b10fa0d87dbad8439cae.md) | 294 | `result-track:c005b10fa0d87dbad8439cae436710aac5b090902586a381374be0c2b035f04b` |
| 33 | `theorem` | [of_surjective](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/of-surjective--e48c8ed8897ba605a6ab4038.md) | 321 | `result-track:e48c8ed8897ba605a6ab4038b9e544457b770e725c662ba757a725b4ebeea827` |
| 34 | `theorem` | [surjective_units_map_of_local_ringHom](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/surjective-units-map-of-local-ringhom--343fb2b8f4031153c91538b2.md) | 334 | `result-track:343fb2b8f4031153c91538b2f168e1ec4e8fff1dfe8f455c32f8e8d6497e1d0d` |
| 35 | `def` | [ResidueField](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residuefield--8a6a267187d815c5cd8ffff7.md) | 349 | `declaration-track:8a6a267187d815c5cd8ffff7b806272e1db60a45cc4a38339eca48a4a8d6d101` |
| 36 | `instance` | [ResidueFieldCommRing](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residuefieldcommring--1b0a9aac8eebf42c67ded5e1.md) | 354 | `declaration-track:1b0a9aac8eebf42c67ded5e13d4da6834c18c22291850798951331ce9e988157` |
| 37 | `instance` | [ResidueFieldInhabited](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residuefieldinhabited--9340292b6732a18f153a8a4e.md) | 357 | `declaration-track:9340292b6732a18f153a8a4e23bedd6c87e27f4b858a9dfa0aa4b6449ce227c2` |
| 38 | `instance` | [ResidueField.field](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residuefield-field--e543d43c260e84e0b31c441f.md) | 360 | `declaration-track:e543d43c260e84e0b31c441f612dbdfad574b94cfe71200751a7c0c076ec8093` |
| 39 | `def` | [residue](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residue--30d77643e4a7df6290d5cad7.md) | 365 | `declaration-track:30d77643e4a7df6290d5cad725fd4733affaae7d7e1276c134102e8faca0c8d6` |
| 40 | `instance` | [ResidueField.algebra](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residuefield-algebra--e96f1cb6be1285fd330617b5.md) | 369 | `declaration-track:e96f1cb6be1285fd330617b52a7168023ca356db597b2b4aab8b4f3482f49c5f` |
| 41 | `theorem` | [ResidueField.algebraMap_eq](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residuefield-algebramap-eq--c88489230dfbd4cc32355ffc.md) | 373 | `result-track:c88489230dfbd4cc32355ffc36f22e0035f388e14bbad54b2f368ac4dd063c22` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/instance--4c8b4d0d0cfd8c9747a05a24.md) | 377 | `declaration-track:4c8b4d0d0cfd8c9747a05a2406b1e9a351fbcfc4ccda316791ba25e567946fc5` |
| 43 | `def` | [lift](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/lift--3ba7077bd66e0e3fb775fe43.md) | 386 | `declaration-track:3ba7077bd66e0e3fb775fe43cb9fed828cedacc0a91df4c9cf562030181b3cf5` |
| 44 | `theorem` | [lift_comp_residue](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/lift-comp-residue--440b73de9d94364da0a12a97.md) | 392 | `result-track:440b73de9d94364da0a12a97d1e16e89e3aaf4b2c5542b68b3538d1b2b5d5dda` |
| 45 | `theorem` | [lift_residue_apply](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/lift-residue-apply--2f0a7996674e6f6708f5ddaf.md) | 398 | `result-track:2f0a7996674e6f6708f5ddaff20caba025b73c6c8ce3f2658ca8e31498656945` |
| 46 | `def` | [map](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map--6eecded991a6b72829b354e2.md) | 404 | `declaration-track:6eecded991a6b72829b354e2fa6cf41a3288d4fe1d8e5a3544d94dd3c356a4e1` |
| 47 | `theorem` | [map_id](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-id--1a06691fb9415625fbcb952a.md) | 413 | `result-track:1a06691fb9415625fbcb952a84355f6232882ddde4d2fb41b4bbe6fb50e74e7b` |
| 48 | `theorem` | [map_comp](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-comp--d971c810300b121149d84c6a.md) | 420 | `result-track:d971c810300b121149d84c6a386de554b9c6723a4d1e34e4d7a1aaaa3161d2b3` |
| 49 | `theorem` | [map_comp_residue](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-comp-residue--e17fbdcb159578c792937ee7.md) | 426 | `result-track:e17fbdcb159578c792937ee7d2e82e2245da61821f44f21da0dd0b1e605d8ec0` |
| 50 | `theorem` | [map_residue](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-residue--792a21ade6d73766a22ec24d.md) | 431 | `result-track:792a21ade6d73766a22ec24da72454081850bb07545275a2307dfdf1cc4d69e7` |
| 51 | `theorem` | [map_id_apply](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-id-apply--3d45c8d0088efd2b68dd5aaa.md) | 436 | `result-track:3d45c8d0088efd2b68dd5aaad3c92675ad27d898de474384c633c70aca65a87d` |
| 52 | `theorem` | [map_map](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/map-map--6850781aa57ef140623e2c01.md) | 441 | `result-track:6850781aa57ef140623e2c010c8fe0e8b14954c57ca0d125e22d5b8bc0e8ee2d` |
| 53 | `def` | [mapEquiv](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/mapequiv--789154f8afe75f44f95051a6.md) | 448 | `declaration-track:789154f8afe75f44f95051a6cdedfaab64141c9d438df4c532b325e30cbb8e24` |
| 54 | `theorem` | [mapEquiv.symm](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/mapequiv-symm--fc12a4d5d551936806ba0118.md) | 458 | `result-track:fc12a4d5d551936806ba0118d51584bb22dea93e610eeec1e643ab48cad0626e` |
| 55 | `theorem` | [mapEquiv_trans](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/mapequiv-trans--971c4237c99508fe7df63519.md) | 463 | `result-track:971c4237c99508fe7df63519a5b6216599df6674311173e55df5d35759b003e9` |
| 56 | `theorem` | [mapEquiv_refl](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/mapequiv-refl--63db69e9c6625fe6397d208a.md) | 469 | `result-track:63db69e9c6625fe6397d208a6c13f083e1cce1d356bef3915196b572ff8197db` |
| 57 | `def` | [mapAut](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/mapaut--e296b8212c720a76302a9e7c.md) | 476 | `declaration-track:e296b8212c720a76302a9e7c9b9bccb4468d4bdde3df005a05468d47b88defd8` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/instance--9f30cf1b7caae4fa7eceb51d.md) | 487 | `declaration-track:9f30cf1b7caae4fa7eceb51d3362de5b4d63fe13aa7f181c476e7ba4c521e155` |
| 59 | `theorem` | [residue_smul](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/residue-smul--c937841d14bc1af4dfd4887b.md) | 491 | `result-track:c937841d14bc1af4dfd4887beeba220f162c7a661ced58ac4587a153eaacd3bc` |
| 60 | `theorem` | [ker_eq_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/ker-eq-maximalideal--5fd7e01529a19677d1a3d2be.md) | 499 | `result-track:5fd7e01529a19677d1a3d2be5dd4b09df9374cde571e98891f3a78f915410dfa` |
| 61 | `theorem` | [isLocalRingHom_residue](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/islocalringhom-residue--e00fccf7225de71454c1a73f.md) | 504 | `result-track:e00fccf7225de71454c1a73f9d1d84bd1f73dd1c63cacf94a4e757eaae04b1ff` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/instance--ab661499324e6ab2fc819653.md) | 523 | `declaration-track:ab661499324e6ab2fc819653bde652922c7d906dea5a67b7bc601861b1c78445` |
| 63 | `theorem` | [LocalRing.maximalIdeal_eq_bot](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/localring-maximalideal-eq-bot--82d31d7809f49692fe112215.md) | 530 | `result-track:82d31d7809f49692fe11221586403f53517314f34d9b2b5edf3f65c884c9c882` |
| 64 | `theorem` | [localRing](../../../../mathematics/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean/declarations/localring--76078ebcf45438c9a5cb64f6.md) | 537 | `result-track:76078ebcf45438c9a5cb64f69b29922fbd3d1c25611eb8c64c165718bca4ab56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
