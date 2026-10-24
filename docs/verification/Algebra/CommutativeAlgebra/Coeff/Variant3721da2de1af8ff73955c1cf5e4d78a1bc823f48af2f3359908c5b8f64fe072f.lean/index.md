# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Coeff.Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "055e70bbf710fb70370ae65047cd176236df5528",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `055e70bbf710fb70370ae65047cd176236df5528`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval₂_at_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-at-zero--34a977577db867a88959704b.md) | 37 | `result-track:34a977577db867a88959704ba7bf37b2d8f8a1b2a9c639a1e500649487913652` |
| 2 | `theorem` | [eval₂_C_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-c-x--421066a1d7736fae5576d088.md) | 43 | `result-track:421066a1d7736fae5576d08899e8a642840b5b0d58671efa4a750a4cccda39b1` |
| 3 | `theorem` | [coeff_zero_eq_eval_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/coeff-zero-eq-eval-zero--ca4352c6b3b16f0e5ac8bc1e.md) | 53 | `result-track:ca4352c6b3b16f0e5ac8bc1e88c0ee760c02d319c520befcb360f842f049caec` |
| 4 | `theorem` | [zero_isRoot_of_coeff_zero_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/zero-isroot-of-coeff-zero-eq-zero--9e99a94879a179645da47fd3.md) | 61 | `result-track:9e99a94879a179645da47fd3094f5fdb4d41ea45891729fa2e1ac98fd7e7199b` |
| 5 | `theorem` | [coeff_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/coeff-map--e9b76445dc6cf7d5eac08848.md) | 72 | `result-track:e9b76445dc6cf7d5eac088482dadf6692809ea442d0ed81b83070e67211e0fab` |
| 6 | `lemma` | [coeff_map_eq_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/coeff-map-eq-comp--d6b480b94d691a95d2b6588d.md) | 79 | `result-track:d6b480b94d691a95d2b6588d66ddb7b100c46f04d6b2f85fc90b41428fd33aad` |
| 7 | `theorem` | [map_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-map--dc03df8478ed8c06838357d3.md) | 82 | `result-track:dc03df8478ed8c06838357d3acf493023bb78b83cde61370a0f65693d3bde0e6` |
| 8 | `theorem` | [map_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-id--daf2859495767ec7c2b7978b.md) | 86 | `result-track:daf2859495767ec7c2b7978bc741e8a954712559130b529a055ced0fc5b76383` |
| 9 | `def` | [piEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/piequiv--9b8042f0013763f71cc27597.md) | 90 | `declaration-track:9b8042f0013763f71cc27597b02988103191e6f5b760dcc93e65103ebdb3f542` |
| 10 | `theorem` | [map_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-injective--c6e92fb20a1c90821c14db91.md) | 99 | `result-track:c6e92fb20a1c90821c14db91ec92928a56ef36c77a9af66acb21e41a783d2ac0` |
| 11 | `theorem` | [map_injective_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-injective-iff--08cb110f4e37826c09fe5d30.md) | 102 | `result-track:08cb110f4e37826c09fe5d3026bd5f415392a7dea55322242578694584b1457c` |
| 12 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-surjective--d48823b83985194f148388c9.md) | 105 | `result-track:d48823b83985194f148388c9dbfefba8bf68c08fcb351de73d4aaade64bfd593` |
| 13 | `theorem` | [map_surjective_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-surjective-iff--5fccde9287a24db45dcdc05a.md) | 112 | `result-track:5fccde9287a24db45dcdc05aa6b39f4bbdf4d9e3b5427016f8cb64381d82b96b` |
| 14 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-eq-zero-iff--8f97f82aa3324a21214ab944.md) | 117 | `result-track:8f97f82aa3324a21214ab9447718084ca73a4360f9ab36e22010e85da7963eee` |
| 15 | `theorem` | [map_ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/map-ne-zero-iff--554e218468c05ff5b10faccd.md) | 120 | `result-track:554e218468c05ff5b10faccd170307384c6ddb56176098c5f33a9da102c2e9cb` |
| 16 | `theorem` | [mapRingHom_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/mapringhom-id--1e310a7ba74081f1db64fc3e.md) | 126 | `result-track:1e310a7ba74081f1db64fc3e10ef42a64f5c28d4fe280fa39bd5d181749b08d2` |
| 17 | `theorem` | [mapRingHom_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/mapringhom-comp--2303d4051da26e9855077733.md) | 130 | `result-track:2303d4051da26e98550777336e6293ee25ed1801e0c6d1a2e62a4542cdb49c56` |
| 18 | `theorem` | [eval₂_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-map--3ed397c25a0114c5b48f531a.md) | 134 | `result-track:3ed397c25a0114c5b48f531ad08a24b45d84173019825dc0009e7a451e0fa19d` |
| 19 | `theorem` | [eval_zero_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-zero-map--f09e1fba9e693c4bab54e328.md) | 139 | `result-track:f09e1fba9e693c4bab54e3286b6627d960094b1f45e51badd255a7c69a3e9242` |
| 20 | `theorem` | [eval_one_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-one-map--3eb8b36528c51bf5adcb8b80.md) | 143 | `result-track:3eb8b36528c51bf5adcb8b80566b5892ca0f3889caade1d8fdc8c5f9b7682457` |
| 21 | `theorem` | [eval_natCast_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-natcast-map--da06d6794dc92f72b6881f11.md) | 149 | `result-track:da06d6794dc92f72b6881f1128dd73eaf6c5a90814f7c5b1e7e7db4ddf4b8380` |
| 22 | `theorem` | [eval_intCast_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-intcast-map--a15a099a93000dfef708632a.md) | 156 | `result-track:a15a099a93000dfef708632aee3cf8a9b4387660bfc515807c30c3444d1672a2` |
| 23 | `theorem` | [hom_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/hom-eval--9ff155290ab878c4807063d4.md) | 168 | `result-track:9ff155290ab878c4807063d419ea7068e1716d8bc4b67b79e80457c74ff62c8e` |
| 24 | `theorem` | [eval₂_hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/eval-hom--ae0b32e02b874d32cc872f3c.md) | 183 | `result-track:ae0b32e02b874d32cc872f3c5d5b678d49d0c4b11a7ff76417168ebc25367f37` |
| 25 | `theorem` | [evalRingHom_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/evalringhom-zero--bbaa5a1373f97984324ad638.md) | 192 | `result-track:bbaa5a1373f97984324ad638869cbe5588af9f654a6ae44f8ce7d3cc9a6a0e7a` |
| 26 | `theorem` | [support_map_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/support-map-subset--804eccb1da84020f4191fb4f.md) | 201 | `result-track:804eccb1da84020f4191fb4f1bfd3a29471a15712a229c496dc3215a18607115` |
| 27 | `theorem` | [support_map_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/support-map-of-injective--c95527214d756c3dbfcf10cd.md) | 207 | `result-track:c95527214d756c3dbfcf10cd6efff27edf3711a76baef6b3612e8c923efc43ba` |
| 28 | `theorem` | [IsRoot.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/isroot-map--64915ab35eb1e1d199c88fdc.md) | 214 | `result-track:64915ab35eb1e1d199c88fdc976d11020e9a62e2ad10c0af70e29aedb574d1a0` |
| 29 | `theorem` | [IsRoot.of_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/isroot-of-map--ddb9418621335741556f05a4.md) | 217 | `result-track:ddb9418621335741556f05a47d139ec0f57179e478a137a5690f23d1a34569c0` |
| 30 | `theorem` | [isRoot_map_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Coeff/Variant3721da2de1af8ff73955c1cf5e4d78a1bc823f48af2f3359908c5b8f64fe072f.lean/declarations/isroot-map-iff--0a1bb5b1562a381c12b82b68.md) | 221 | `result-track:0a1bb5b1562a381c12b82b684c95dab4c2b0763f68277d98f631824472759369` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
