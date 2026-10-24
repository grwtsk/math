# Verification target: GRWTSK.Algebra.Basic.Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a0b5c8d0412db11351f30cf0fa58f47b06bc50",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a0b5c8d0412db11351f30cf0fa58f47b06bc50`.

Source path: `GRWTSK/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [residue_def](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/residue-def--1a1aa949cdbdd1df24c3b88e.md) | 35 | `result-track:1a1aa949cdbdd1df24c3b88eb4d9c3c07cb7ecb8b07a5089463ac0a6a02c3b81` |
| 2 | `lemma` | [ker_residue](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/ker-residue--17adfad1de7930b4a91775ec.md) | 37 | `result-track:17adfad1de7930b4a91775ec24765a48185839dcaf3cb66f6428afe504feed4b` |
| 3 | `lemma` | [residue_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/residue-eq-zero-iff--ecd229fb7a46745b121ee50c.md) | 41 | `result-track:ecd229fb7a46745b121ee50cddb7fff4c9ebd639db9444ec41e645ae3ec6428a` |
| 4 | `lemma` | [residue_ne_zero_iff_isUnit](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/residue-ne-zero-iff-isunit--f353d1c2fba591488f5ca3df.md) | 44 | `result-track:f353d1c2fba591488f5ca3df930ecfc7998652f73810b0cc7c2c023c4f9b65ea` |
| 5 | `lemma` | [residue_surjective](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/residue-surjective--3133a2b0905b227ec31d8ce1.md) | 47 | `result-track:3133a2b0905b227ec31d8ce1022f3e9a39ccd16ddcc9571f495b6057ae7e2242` |
| 6 | `instance` | [ResidueField.algebra](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/residuefield-algebra--ed80544a3e7e683c07591f5c.md) | 53 | `declaration-track:ed80544a3e7e683c07591f5c0ac16189bf77685be42c5763365f4a15c2fd73d4` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/instance--0be5f4805f8ccb8a7b05fc9f.md) | 57 | `declaration-track:0be5f4805f8ccb8a7b05fc9f56c9bfa3ddf1a64863684318f04087319faa4394` |
| 8 | `theorem` | [ResidueField.algebraMap_eq](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/residuefield-algebramap-eq--203a274cbc498269ce282601.md) | 63 | `result-track:203a274cbc498269ce282601a7fa86233a9949752d74293bba82572b5bde1f6e` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/instance--a2a3617df7d506f8179eaa86.md) | 66 | `declaration-track:a2a3617df7d506f8179eaa86a4fc1eef8bdfa5f545b80fe57b6bb2a3a01284a8` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/instance--a5d30fe5d765bdc4a6f4a1ca.md) | 70 | `declaration-track:a5d30fe5d765bdc4a6f4a1cafe2d33937eab18c7e985e65ca8b32c59b3098f28` |
| 11 | `def` | [lift](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/lift--fcaba234461c1ebf3bed7683.md) | 79 | `declaration-track:fcaba234461c1ebf3bed768316ef95fb833f05c98476055af8a2ef78f605041f` |
| 12 | `theorem` | [lift_comp_residue](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/lift-comp-residue--e93dd20e1d994b9f7c3973ae.md) | 84 | `result-track:e93dd20e1d994b9f7c3973aeeef9486063bf5046c742016adf3f6cb0e66c5cd4` |
| 13 | `theorem` | [lift_residue_apply](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/lift-residue-apply--1ce447cc74088ef352253c8f.md) | 89 | `result-track:1ce447cc74088ef352253c8f1b6be0ed74ddd46d7160051cc5915232bca07f84` |
| 14 | `def` | [map](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/map--d585bf96c3e0a6a9ae7a927b.md) | 94 | `declaration-track:d585bf96c3e0a6a9ae7a927b73782f1a9589cec5808f916e6a145dc4ea8782d5` |
| 15 | `theorem` | [map_id](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/map-id--fe2402effdf40287a214333d.md) | 103 | `result-track:fe2402effdf40287a214333d565194345d59093dcb15801dac56f55befcc4224` |
| 16 | `theorem` | [map_comp](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/map-comp--1ae3abd107d41d631b5089fe.md) | 109 | `result-track:1ae3abd107d41d631b5089fe5973cbefd16b019def94a12b4fda932a77068155` |
| 17 | `theorem` | [map_comp_residue](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/map-comp-residue--b8e16f7b647abf3d0da46435.md) | 114 | `result-track:b8e16f7b647abf3d0da464351b0e1db5d5f043cde2e098be289bfb0bc3d16cf6` |
| 18 | `theorem` | [map_residue](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/map-residue--5dc0c2a1bd381c49b509cba7.md) | 118 | `result-track:5dc0c2a1bd381c49b509cba7ac992ad307e9a09a4285383cf2b38337b798bd77` |
| 19 | `theorem` | [map_id_apply](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/map-id-apply--65d2d3136e23b8daeda6d51b.md) | 122 | `result-track:65d2d3136e23b8daeda6d51b773cdab69690a79f7fc40aec8900297f247dd949` |
| 20 | `theorem` | [map_map](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/map-map--90551314e3007bfaaecacd76.md) | 126 | `result-track:90551314e3007bfaaecacd76b2f7046ad72f43974bcc391d649a8a18f7318ba0` |
| 21 | `def` | [mapEquiv](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/mapequiv--ba00ea4f73afbf20fcbe20ad.md) | 132 | `declaration-track:ba00ea4f73afbf20fcbe20adf5d1aac5b74a12fd9b63360ac99e703381083ce2` |
| 22 | `theorem` | [mapEquiv.symm](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/mapequiv-symm--b316c145dca6678e76fc44c0.md) | 142 | `result-track:b316c145dca6678e76fc44c0122b8bd5026a39eb6c27ea6058a364fc6b8dc900` |
| 23 | `theorem` | [mapEquiv_trans](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/mapequiv-trans--b2f820f67c4b11aab7bb2052.md) | 146 | `result-track:b2f820f67c4b11aab7bb2052a4fbd2685336f5f75387b7138f9c8d945c0349a5` |
| 24 | `theorem` | [mapEquiv_refl](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/mapequiv-refl--a3c6e9a861d8d095e04e3dcc.md) | 151 | `result-track:a3c6e9a861d8d095e04e3dccd4290a4c736b9cfc236bf9e09fef85e0b0e5fef6` |
| 25 | `def` | [mapAut](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/mapaut--4f30302acd52a8ab4cc7c27a.md) | 157 | `declaration-track:4f30302acd52a8ab4cc7c27a73657debc6c22570882caec8e4eaea106211a6c0` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/instance--4b194740d7d146de078b79aa.md) | 168 | `declaration-track:4b194740d7d146de078b79aa68760d1e29a03ad89306fca3860140a134d67ed0` |
| 27 | `theorem` | [residue_smul](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/residue-smul--2ab6237f59f61782e5f215f2.md) | 172 | `result-track:2ab6237f59f61782e5f215f25763565ce7814bb5606fc20d00d31e89e8de2abd` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/instance--0f6ede364e1b71cc32cd98af.md) | 181 | `declaration-track:0f6ede364e1b71cc32cd98afa5142bd4699bc3d1d8279d2234147a456b39db84` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/instance--9230d32fc66257f18aa579ae.md) | 184 | `declaration-track:9230d32fc66257f18aa579ae91d7a904e3ef1ee866dde0f4f2d3225ee784230c` |
| 30 | `instance` | [finite_of_module_finite](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/finite-of-module-finite--392e0b62f40476eb71ab90b4.md) | 187 | `declaration-track:392e0b62f40476eb71ab90b42a73f6491aa6a06a983e5294584b739ca3177ad8` |
| 31 | `lemma` | [finite_of_finite](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/finite-of-finite--212f1501df64c5477aea1bc1.md) | 196 | `result-track:212f1501df64c5477aea1bc125af46dc5fee0fe41fe3c294b17b54030adb4be2` |
| 32 | `theorem` | [isLocalHom_residue](../../../../mathematics/Algebra/Basic/Variant8f5925c1dfc6f84f1c5f5521db7f8bc5e892671d1d63fc25e75f834f56261f62.lean/declarations/islocalhom-residue--6e313eb62fa5180216f83f1b.md) | 203 | `result-track:6e313eb62fa5180216f83f1bb4102aad0355faa6d0d2f89d73652cd5fad9d51d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
