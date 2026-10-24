# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baabbf945f4db2b45b76702012e958b1a5eec417",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baabbf945f4db2b45b76702012e958b1a5eec417`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Basic.Finite.Prod` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [toOrderBot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/toorderbot--1ec24d720c596f026b534f3d.md) | 73 | `declaration-track:1ec24d720c596f026b534f3df2f30d03a57402b7f784f5277f4215db7f47467c` |
| 2 | `abbrev` | [toOrderTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/toordertop--b3f1e31f01fdbbf4490353e1.md) | 79 | `declaration-track:b3f1e31f01fdbbf4490353e181312c7401d9e8dca463de6da86205c9d8f9e52c` |
| 3 | `abbrev` | [toBoundedOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/toboundedorder--a0eabc41083d62e6dd321ae9.md) | 85 | `declaration-track:a0eabc41083d62e6dd321ae9d361e5f9a156ecda501c7a94581c59f7ef754e1c` |
| 4 | `abbrev` | [toCompleteLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompletelattice--dc106e27eba1f5df3fbbd477.md) | 97 | `declaration-track:dc106e27eba1f5df3fbbd47728cfba1ac7aac4b4affd75238cf033c04632e60d` |
| 5 | `abbrev` | [toCompleteDistribLatticeMinimalAxioms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompletedistriblatticeminimalaxioms--e6efc720a2c3cb3a69fea8b4.md) | 108 | `declaration-track:e6efc720a2c3cb3a69fea8b4b1321f39c04d2eeab4ec390d00b91ed622ec26c1` |
| 6 | `abbrev` | [toCompleteDistribLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompletedistriblattice--d40a59c8e9983d37cedcad5a.md) | 124 | `declaration-track:d40a59c8e9983d37cedcad5a0fa3a6040db74620932c84a88f1c6398e9c420cc` |
| 7 | `abbrev` | [toCompleteLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompletelinearorder--0848880502a1b5f1013edd14.md) | 133 | `declaration-track:0848880502a1b5f1013edd141f6ecc8d956fb769e74e36f265c469dc2c160fbe` |
| 8 | `abbrev` | [toCompleteBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompletebooleanalgebra--c90c641361119c03c9ec71bd.md) | 139 | `declaration-track:c90c641361119c03c9ec71bd9e350b00246ea8e6336ecd3d40b1842c06ea5456` |
| 9 | `abbrev` | [toCompleteAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompleteatomicbooleanalgebra--568fd69595a4719f91b4d4a8.md) | 145 | `declaration-track:568fd69595a4719f91b4d4a821229b5dada207bd5aed2025be8679d19355933b` |
| 10 | `abbrev` | [toCompleteLatticeOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompletelatticeofnonempty--b09a644d9da6e3edcfcf8be8.md) | 158 | `declaration-track:b09a644d9da6e3edcfcf8be8b57ab6f06bc39c052541c0ec31aa6f6217209541` |
| 11 | `abbrev` | [toCompleteLinearOrderOfNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/tocompletelinearorderofnonempty--d33193f11182fe93a8cfedf5.md) | 165 | `declaration-track:d33193f11182fe93a8cfedf5654578ddd05f593f61f36241d53e2636116db544` |
| 12 | `instance` | [Fin.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/fin-completelinearorder--a5c5a065542e2213064c9be8.md) | 174 | `declaration-track:a5c5a065542e2213064c9be8479a7ecf8c77da2f6f8807f7e5385a5aaa1bb6c9` |
| 13 | `instance` | [Bool.completeBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/bool-completebooleanalgebra--46d19ba5756f4fd6f679ac7f.md) | 177 | `declaration-track:46d19ba5756f4fd6f679ac7f4ddce858a170e38280ded82b387b016f148a3edd` |
| 14 | `instance` | [Bool.completeLinearOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/bool-completelinearorder--975d8612a887a661cfd4bfc4.md) | 180 | `declaration-track:975d8612a887a661cfd4bfc4ddf019541470955feec559d2b9234fb4657b14a2` |
| 15 | `instance` | [Bool.completeAtomicBooleanAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/bool-completeatomicbooleanalgebra--2ed5f234edfab4df0a4ffa13.md) | 185 | `declaration-track:2ed5f234edfab4df0a4ffa13b94e526dcae30e297c03cfb44b56a1a8ffa2ee85` |
| 16 | `theorem` | [Directed.finite_set_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/directed-finite-set-le--92881721f7de2d2dde8f37f2.md) | 195 | `result-track:92881721f7de2d2dde8f37f24c99adf3bf703d81c37193ad7bc3ff7cbf5a87a2` |
| 17 | `lemma` | [Directed.finite_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/directed-finite-le--4a15c99da0eb421da67eef7d.md) | 199 | `result-track:4a15c99da0eb421da67eef7d5769e9b590f92c1212c7253dd210fcfc748e93d1` |
| 18 | `theorem` | [Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/finite-exists-le--5bb7058078b431f2211ff4e7.md) | 206 | `result-track:5bb7058078b431f2211ff4e7b5f852adbd31d06975026004389ba4033f40202d` |
| 19 | `theorem` | [Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/finite-exists-ge--b395323aab58ed8a037c1477.md) | 209 | `result-track:b395323aab58ed8a037c14777d55505f7a1ea2b92d04a59f4701f92ed9625c30` |
| 20 | `theorem` | [Set.Finite.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/set-finite-exists-le--a218e3f66ef2b2f728d5ed52.md) | 212 | `result-track:a218e3f66ef2b2f728d5ed52d48aa4fabf706830ecdf3e3e36d209c8b22734a5` |
| 21 | `theorem` | [Set.Finite.exists_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/set-finite-exists-ge--61539f9ffc03f989f2e7bfd8.md) | 216 | `result-track:61539f9ffc03f989f2e7bfd86158e46952fe782f45150d80e518a2ae20d4a273` |
| 22 | `theorem` | [Finite.bddAbove_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/finite-bddabove-range--0df566483caf3e3384057505.md) | 221 | `result-track:0df566483caf3e33840575051bcc5e28df3c74761d0c54bbede87780ff7d1e8e` |
| 23 | `theorem` | [Finite.bddBelow_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/finite-bddbelow-range--7a67d27bdcb8f48665eaac15.md) | 228 | `result-track:7a67d27bdcb8f48665eaac1585a86ac0f5b2b662c1f026b01bbef258695241a9` |
| 24 | `lemma` | [le_iSup_iff_of_directed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/le-isup-iff-of-directed--9bc92f0a6521553bcd314cf9.md) | 239 | `result-track:9bc92f0a6521553bcd314cf995cad41771d17d603e6fffce753dc21d6861ba0c` |
| 25 | `lemma` | [le_sSup_iff_of_directedOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/le-ssup-iff-of-directedon--2372ca74e59d543fffc05404.md) | 244 | `result-track:2372ca74e59d543fffc05404245b69f5cb2a6bd7675e380a69ec2425d5f96649` |
| 26 | `lemma` | [subset_iUnion_iff_of_directed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/subset-iunion-iff-of-directed--e05ccb42c273630df0eb1d4f.md) | 255 | `result-track:e05ccb42c273630df0eb1d4fd06ebb486ef066ff421c6a625d5c6d28ceca4739` |
| 27 | `lemma` | [subset_sUnion_iff_of_directed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/subset-sunion-iff-of-directed--61d99c92025fd18072203298.md) | 258 | `result-track:61d99c92025fd180722032982dc821abc71f1cb0e48a5cb9de7d3fba8c0e9176` |
| 28 | `lemma` | [le_ciSup_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/le-cisup-of-le--5635571f14c58ee227c92d7e.md) | 281 | `result-track:5635571f14c58ee227c92d7e73bf65a36131da8a8eeec6ef13fe6bc953d8c656` |
| 29 | `lemma` | [ciInf_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/ciinf-le-of-le--53c5257893d208e76abc6b06.md) | 284 | `result-track:53c5257893d208e76abc6b060514f387cac13a5b6bf01bd68b5c50e623957c99` |
| 30 | `lemma` | [ciSup_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/cisup-mono--d09763eba8f193f1d5cab404.md) | 287 | `result-track:d09763eba8f193f1d5cab404eb28e2f938c579c1cc3b7d812c20419bc36642f9` |
| 31 | `lemma` | [ciInf_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/ciinf-mono--d07a0ac5ec49e6f7c16256c8.md) | 290 | `result-track:d07a0ac5ec49e6f7c16256c8898a26934c6323f788f994c89754af7931bc41fe` |
| 32 | `lemma` | [le_ciSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/le-cisup--90ecdde0d3e92aa33c81ce68.md) | 293 | `result-track:90ecdde0d3e92aa33c81ce68973656201df54a049f954c2d2386be081ca431a9` |
| 33 | `lemma` | [ciInf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/ciinf-le--f51eb4d3b5884f12dd57913d.md) | 296 | `result-track:f51eb4d3b5884f12dd57913dae70ba4dd66bb3ca04f71c121d0c2164c61fd9f7` |
| 34 | `lemma` | [ciSup_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/cisup-sup--208fd1666e726bc3dae463e0.md) | 299 | `result-track:208fd1666e726bc3dae463e0122c4c516f6f29e3dae9edf179263d09e7961d24` |
| 35 | `lemma` | [ciInf_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/ciinf-inf--f44243f2a7d76bf8384313fa.md) | 305 | `result-track:f44243f2a7d76bf8384313fa532d2a56b8a9729856f676da76f447ef1bac66d6` |
| 36 | `lemma` | [ciSup_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/cisup-prod--24e633de2ac878fdd3292bb1.md) | 309 | `result-track:24e633de2ac878fdd3292bb15078210732288a27568037d50c14fce785153ee8` |
| 37 | `lemma` | [ciInf_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/ciinf-prod--c7939f8b191c5d6e46cce516.md) | 313 | `result-track:c7939f8b191c5d6e46cce516478448a1f200373cd95db777a5a70818e1ffae2a` |
| 38 | `lemma` | [map_iSup_of_monotoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-isup-of-monotoneon--fab2e32d85c1749df53bedbb.md) | 324 | `result-track:fab2e32d85c1749df53bedbb328806f66e439d8ba39f1da54d1778359a81f55b` |
| 39 | `lemma` | [map_iInf_of_monotoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-iinf-of-monotoneon--4ced7104ad8ff8946714f6e7.md) | 332 | `result-track:4ced7104ad8ff8946714f6e7dc857970ea120d6a0997ca62dd6d8b2a633424bd` |
| 40 | `lemma` | [map_iSup_of_antitoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-isup-of-antitoneon--20ec4106aa4b6b18e95eff38.md) | 337 | `result-track:20ec4106aa4b6b18e95eff386741729aeae6bdf89659dbfc393ab824dd58f229` |
| 41 | `lemma` | [map_iInf_of_antitoneOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-iinf-of-antitoneon--221deaa51f40d6acc3c630bf.md) | 342 | `result-track:221deaa51f40d6acc3c630bf4acfd206b0f36a1e55d46a5b526daf738c568189` |
| 42 | `lemma` | [map_iSup_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-isup-of-monotone--33a00ed629789f1d29e05051.md) | 347 | `result-track:33a00ed629789f1d29e05051c3e6c166133b8a065b3bb9051fcdef735319e61c` |
| 43 | `lemma` | [map_iInf_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-iinf-of-monotone--d36edacf4dc1859b80a66f1a.md) | 351 | `result-track:d36edacf4dc1859b80a66f1a2b0fbad4c85d8a5471edfe8cb55dd9b8aa6dc441` |
| 44 | `lemma` | [map_iSup_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-isup-of-antitone--91ad64a6ddb5795fcdc85199.md) | 355 | `result-track:91ad64a6ddb5795fcdc8519969dd1fe90c9472195298dadc5dde312a43e09c30` |
| 45 | `lemma` | [map_iInf_of_antitone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/map-iinf-of-antitone--90286195e5a18c11779386a8.md) | 359 | `result-track:90286195e5a18c11779386a89c9a4212db8c4153929138f4d604c57c8f800c0a` |
| 46 | `theorem` | [le_ciSup_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/le-cisup-iff--b3873ad7481f7510a916923a.md) | 364 | `result-track:b3873ad7481f7510a916923a1309b66e7dbb38e2ecacfc05560d47735fa7ce54` |
| 47 | `theorem` | [ciSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant4194e4b109b369f3f26586136e4f728a52309712d5bce7f4c993e170cb683132.lean/declarations/cisup-lt-iff--351c62b3c604e75a6f281593.md) | 368 | `result-track:351c62b3c604e75a6f281593b419969030503060d3b4ac919c2b91e6066bbc63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
