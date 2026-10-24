# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b64fe65ed1a80c8f20f325d1f111aead2b3acc5c",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b64fe65ed1a80c8f20f325d1f111aead2b3acc5c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearIndependent.restrict_scalars](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-restrict-scalars--a892d1611d9b881cc8526e8b.md) | 77 | `result-track:a892d1611d9b881cc8526e8bec080feb92b043633abf248ffcc1617defa180ac` |
| 2 | `theorem` | [LinearIndependent.restrict_scalars'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-restrict-scalars--26fa20d6732e4ea4b1d2f9ce.md) | 88 | `result-track:26fa20d6732e4ea4b1d2f9ce5541d46978de23e347c57774dafff101eb1acd8d` |
| 3 | `theorem` | [Submodule.range_ker_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/submodule-range-ker-disjoint--415c32bb3d739131cb7dbfe2.md) | 96 | `result-track:415c32bb3d739131cb7dbfe22b763bf502db2d6ab5b10e7b91d8283661788565` |
| 4 | `theorem` | [LinearIndependent.map_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-map-of-injective-injective--7593d9d7b51e4e4842c52911.md) | 110 | `result-track:7593d9d7b51e4e4842c529114fbfe745249f935a6cffc6ee6c48fa7395372023` |
| 5 | `theorem` | [LinearIndependent.map_of_surjective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-map-of-surjective-injective--12e798a0d1c24c15307e4b2d.md) | 125 | `result-track:12e798a0d1c24c15307e4b2dd8fc1d03ddd8d6a9c018eb96fa4c09880b587ecc` |
| 6 | `theorem` | [LinearIndependent.map_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-map-injon--49c0c87f6f3b8178f2bb3c34.md) | 139 | `result-track:49c0c87f6f3b8178f2bb3c3459922797fef614517e4472b63d63e62a3b1be0aa` |
| 7 | `theorem` | [LinearIndepOn.map_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-map-injon--0d8fbe19a245e169b3b3282a.md) | 143 | `result-track:0d8fbe19a245e169b3b3282a7260ceb3e0077e1c049725933df792223870cdcb` |
| 8 | `theorem` | [LinearIndepOn.comp_of_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-comp-of-image--33de54ce0882bc05cf1de4e5.md) | 147 | `result-track:33de54ce0882bc05cf1de4e507b0af29bb3c4467d56b92583e7d641b46b4b241` |
| 9 | `theorem` | [LinearIndepOn.image_of_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-image-of-comp--8e92b7c014561100de9d1dd0.md) | 154 | `result-track:8e92b7c014561100de9d1dd0737e64c047d9d90350cf6083dd5b7cf78e21d79b` |
| 10 | `theorem` | [LinearIndepOn.id_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-id-image--ee94a5a6787b547b45b53fa1.md) | 163 | `result-track:ee94a5a6787b547b45b53fa1118025277fe4782dd7f29430af59a92ba41682cc` |
| 11 | `theorem` | [LinearIndepOn_iff_linearIndepOn_image_injOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-iff-linearindepon-image-injon--45be4b4fa043caf6f3c85839.md) | 169 | `result-track:45be4b4fa043caf6f3c858392e84f85bf946516899e1ba6608dcd11ceea93fd0` |
| 12 | `theorem` | [linearIndepOn_congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-congr--b6415164d9918e956ac80a00.md) | 173 | `result-track:b6415164d9918e956ac80a0041b03eb245b7fd6ca6c6e379bdb447eed2adf64b` |
| 13 | `theorem` | [LinearIndepOn.congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-congr--6dd0cda6f9a972b3915610fd.md) | 180 | `result-track:6dd0cda6f9a972b3915610fdf27c3ffaaa6decb96d79151511e634533f3bb9f9` |
| 14 | `theorem` | [LinearIndependent.group_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-group-smul--3a9a8f0bce148afd47aaa125.md) | 184 | `result-track:3a9a8f0bce148afd47aaa12557a3a6942e61e8e5788285b64fa899f1ad5e3131` |
| 15 | `theorem` | [LinearIndependent.group_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-group-smul-iff--5835aee7f5244a495f462815.md) | 195 | `result-track:5835aee7f5244a495f462815dd76af81046beb860ba60d7e20e6e8eea3985bd1` |
| 16 | `theorem` | [LinearIndependent.units_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-units-smul--93a9b1fb064b51171f1b6587.md) | 204 | `result-track:93a9b1fb064b51171f1b658748928f9c3fbd019e7bb52c832737d40016e74d42` |
| 17 | `theorem` | [LinearIndependent.units_smul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-units-smul-iff--5b479f132a7e37f12570d795.md) | 214 | `result-track:5b479f132a7e37f12570d7951f026e03175413b24cf707eb96665606119497d5` |
| 18 | `theorem` | [linearIndependent_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-span--265cec38a58454d7644848c0.md) | 220 | `result-track:265cec38a58454d7644848c099a8fdb6565a973bd5edaadca496296493c07482` |
| 19 | `theorem` | [linearIndependent_finset_map_embedding_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-finset-map-embedding-subtype--40f70861e428e665c8cf0e9e.md) | 226 | `result-track:40f70861e428e665c8cf0e9ed9ff7c608d4d167f54dab657068d9d4c4a8ec416` |
| 20 | `theorem` | [linearIndepOn_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-of-finite--0d82a9203f01627c2f5f853e.md) | 235 | `result-track:0d82a9203f01627c2f5f853e55779b2001b8c313f766dffcc3dc8a5086fa7468` |
| 21 | `theorem` | [LinearIndependent.eq_of_smul_apply_eq_smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-eq-of-smul-apply-eq-smul-apply--ed57b4af8de7207521ef3242.md) | 246 | `result-track:ed57b4af8de7207521ef324220e83163fbdaae8df4b792305ea78ab007f93c04` |
| 22 | `theorem` | [LinearIndependent.disjoint_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-disjoint-span-image--d496f7a1b837f582389f2877.md) | 259 | `result-track:d496f7a1b837f582389f28773ad136ff58686ff3ebd0b4e4448f09999eaaa1a7` |
| 23 | `theorem` | [LinearIndependent.notMem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-notmem-span-image--d900cd4847b09a43491c919f.md) | 267 | `result-track:d900cd4847b09a43491c919f17183bd3766cc6106df6f89f9680ad8a3b493f27` |
| 24 | `theorem` | [LinearIndependent.linearCombination_ne_of_notMem_support](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-linearcombination-ne-of-notmem-support--8b9a3642f24473c5598f8b72.md) | 280 | `result-track:8b9a3642f24473c5598f8b72d250f3812611894dbd9d3ac5572ba52e48cddc9d` |
| 25 | `theorem` | [LinearIndepOn.id_imageₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-id-image--dd9989db5235c4bdf5cd888b.md) | 300 | `result-track:dd9989db5235c4bdf5cd888b08885197f82e011bdd06e7df0b5f2eb244ffb58a` |
| 26 | `theorem` | [surjective_of_linearIndependent_of_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/surjective-of-linearindependent-of-span--6be3fe2e9e09e401905de51d.md) | 309 | `result-track:6be3fe2e9e09e401905de51d4048175aa04645c8847d299d4e9ee7a0070b5954` |
| 27 | `theorem` | [eq_of_linearIndepOn_id_of_span_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/eq-of-linearindepon-id-of-span-subtype--8d6af6ab8a1f675df6fbdef4.md) | 329 | `result-track:8d6af6ab8a1f675df6fbdef42f0a0266584f0b30cf19397b3d3608027a51ed0c` |
| 28 | `theorem` | [le_of_span_le_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/le-of-span-le-span--cbcc38743c62ce631f4e61bd.md) | 346 | `result-track:cbcc38743c62ce631f4e61bd66bd9d374057e2364062d871891c5b31b50fcc82` |
| 29 | `theorem` | [span_le_span_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/span-le-span-iff--835fbe835339ac23dc1e6b86.md) | 353 | `result-track:835fbe835339ac23dc1e6b86d07fa6782c72fed8143de27b3b13aa3c244ab02f` |
| 30 | `theorem` | [LinearIndependent.eq_coords_of_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-eq-coords-of-eq--35a21fa68c4edd4edc3e31f6.md) | 367 | `result-track:35a21fa68c4edd4edc3e31f68844cca71c1f1c9622fd148b82f608112e8e24ae` |
| 31 | `theorem` | [LinearIndependent.map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-map--4e85b8bf7ff0d9b829a83d18.md) | 376 | `result-track:4e85b8bf7ff0d9b829a83d182085e3fe08ec28da709526e80e6f965db0561c49` |
| 32 | `theorem` | [LinearIndependent.map'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-map--a2ce11cb05e07e8de97325a2.md) | 382 | `result-track:a2ce11cb05e07e8de97325a21eb4ba3c09e63f645dcdc0f2b1379e2b9993e5cf` |
| 33 | `theorem` | [LinearIndependent.map_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-map-of-injective-injective--594b208017e65062b76ce938.md) | 391 | `result-track:594b208017e65062b76ce938a23f9d1222d554712ac2988af1932a9afc03e4e9` |
| 34 | `theorem` | [LinearIndependent.map_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-map-of-surjective-injective--fc465e0a8ff01e309d3261ed.md) | 405 | `result-track:fc465e0a8ff01e309d3261ed815949c3068b17bdc2d75ba54db891197b26d790` |
| 35 | `theorem` | [LinearMap.linearIndependent_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearmap-linearindependent-iff--7b6af78b8af136191e98738c.md) | 413 | `result-track:7b6af78b8af136191e98738cc3f91e2ab9ad5afe3037b1a9ac61a348d4c2c0f0` |
| 36 | `theorem` | [LinearIndependent.fin_cons'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-fin-cons--637c85d9c0c8a3959c2c35bc.md) | 418 | `result-track:637c85d9c0c8a3959c2c35bc3fd62301dbea843102326776ee10e03689a8af9a` |
| 37 | `theorem` | [linearIndependent_sum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-sum--442cee2f4a1b2da4573d731d.md) | 441 | `result-track:442cee2f4a1b2da4573d731d6483731b343f8965f82274eda680c6b3a91deae3` |
| 38 | `theorem` | [LinearIndependent.sum_type](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-sum-type--6026b2c6900ad8bc279f89d0.md) | 477 | `result-track:6026b2c6900ad8bc279f89d0fd4d21436b02319cbf41ca8ec495ec151dfd466e` |
| 39 | `theorem` | [LinearIndepOn.union](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-union--5bfb8ed03c005d55f09893d6.md) | 483 | `result-track:5bfb8ed03c005d55f09893d68b44b30190542f401a6c11be28078060d340308a` |
| 40 | `theorem` | [LinearIndepOn.id_union](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-id-union--daa347a415de285c543379db.md) | 494 | `result-track:daa347a415de285c543379db6c19c79932b65bddd73e393484f930a9eb75b575` |
| 41 | `theorem` | [linearIndepOn_union_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-union-iff--7ce27529f026ebd723ceef2c.md) | 498 | `result-track:7ce27529f026ebd723ceef2c291423bdd02134cc08c74ac1cb0e88b80c30125a` |
| 42 | `theorem` | [linearIndepOn_id_union_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-id-union-iff--652ac44a9c1a4d8dcac9c58c.md) | 506 | `result-track:652ac44a9c1a4d8dcac9c58c472a696fd95d622f44f18d723b6ec32d0a918366` |
| 43 | `theorem` | [LinearIndepOn.image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-image--f6c3b404acb996dd8a6dc276.md) | 515 | `result-track:f6c3b404acb996dd8a6dc27624525daead6411aed237d11e0b325e98749f8036` |
| 44 | `theorem` | [linearIndependent_monoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-monoidhom--2271371ec6c5545a83848dac.md) | 527 | `result-track:2271371ec6c5545a83848dac3d074eac7a763ecf77487fc568e1617dca1b2c4a` |
| 45 | `theorem` | [linearIndependent_unique_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-unique-iff--8525c5bd57c4f7cf13653956.md) | 600 | `result-track:8525c5bd57c4f7cf13653956e39049311893d46579101379ac494cf52b929f80` |
| 46 | `theorem` | [linearIndepOn_singleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-singleton-iff--13e3cfb45c701357cb253504.md) | 611 | `result-track:13e3cfb45c701357cb253504c95881a861571b6ee6ccbaa2283b83db402d5f6e` |
| 47 | `theorem` | [LinearIndepOn.id_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindepon-id-singleton--8713a1dc6f2bc9c3af13e132.md) | 617 | `result-track:8713a1dc6f2bc9c3af13e132ad7e5c32860b61e9bb183bd8e9db6ed3f0510cda` |
| 48 | `theorem` | [linearIndependent_subsingleton_index_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/declarations/linearindependent-subsingleton-index-iff--a08549ec5e4f8a31abe47c2b.md) | 624 | `result-track:a08549ec5e4f8a31abe47c2b5012e0212bb5a40f25e4add5185e963d3cfc3b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
