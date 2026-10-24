# Verification target: GRWTSK.Algebra.Basic.Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44c31058cd1ce88476d70fd5eb494caab8b7fa64",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44c31058cd1ce88476d70fd5eb494caab8b7fa64`.

Source path: `GRWTSK/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Fixed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Closure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixingSubgroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois--3ecb152aadf4251ef09d4f2f.md) | 61 | `declaration-track:3ecb152aadf4251ef09d4f2f2b2a6fb43594c63beeb9b653697be63eff0d09a3` |
| 2 | `theorem` | [isGalois_iff](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois-iff--23f17e0c76b0763dd33f4cae.md) | 67 | `result-track:23f17e0c76b0763dd33f4cae64b203a89164d0118ac332ed49fca46799b5da91` |
| 3 | `instance` | [self](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/self--15a946ab729ec02ad28c8151.md) | 79 | `declaration-track:15a946ab729ec02ad28c81516c7c46fae60b3c427632a61c2cd2f7b196bd1f5c` |
| 4 | `theorem` | [integral](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/integral--90b564f9aeb729d53f3589d5.md) | 84 | `result-track:90b564f9aeb729d53f3589d530c293df7c9a5af2901db83cf4d8620bc92f5832` |
| 5 | `theorem` | [separable](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/separable--a9bfbc11cee032d453f60e49.md) | 87 | `result-track:a9bfbc11cee032d453f60e49b5dc02d383434956b75cdb05a434f330c23be6ff` |
| 6 | `theorem` | [splits](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/splits--27272606c9ed3de6072802fb.md) | 90 | `result-track:27272606c9ed3de6072802fb9b26307b49940922542c1064c524b85a150722ad` |
| 7 | `instance` | [of_fixed_field](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/of-fixed-field--8a42102a7ee2e0836e043850.md) | 98 | `declaration-track:8a42102a7ee2e0836e043850d4c8c55cce5a3258c458910cd380824c0b5dd57c` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank--4ac80140fda79b05c860ccaf.md) | 102 | `result-track:4ac80140fda79b05c860ccafb213f35153bf17e905f789cb7edeedb06f47f4c0` |
| 9 | `theorem` | [card_aut_eq_finrank](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/card-aut-eq-finrank--be292e6d4b1813bf855b94a5.md) | 114 | `result-track:be292e6d4b1813bf855b94a5cab99f7942f7d0c38143c8fb42e2833cc0f9c490` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois-tower-top-of-isgalois--d2fa576e7c047e27345c3651.md) | 150 | `result-track:d2fa576e7c047e27345c3651b24d11512211b29af1ffa01a66700fb8011a3154` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/instance--5035311c2751088344d41342.md) | 157 | `declaration-track:5035311c2751088344d413424c781b320c21af1a7b168888157271111f3815a4` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois-iff-isgalois-bot--dfac5311ef1a88b4ec49fbe5.md) | 161 | `result-track:dfac5311ef1a88b4ec49fbe5dd8c3789233a8d458a6fb667f06d197255d51e4b` |
| 13 | `theorem` | [IsGalois.of_algEquiv](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois-of-algequiv--4a71c48826485c5d5905677e.md) | 167 | `result-track:4a71c48826485c5d5905677e3f424c3f4a21182a6f17f7d6bc62d391bb167eb2` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/algequiv-transfer-galois--0ee21b23cc13846559442afe.md) | 171 | `result-track:0ee21b23cc13846559442afeff849cb962376910452a2f0b72d661387658fcd8` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois-iff-isgalois-top--d9e1b051dd062574d9367030.md) | 174 | `result-track:d9e1b051dd062574d936703058c80ea3ff6eb8175c8338aec9c69f109c0da169` |
| 16 | `instance` | [isGalois_bot](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois-bot--905b62820a52b2414241833a.md) | 177 | `declaration-track:905b62820a52b2414241833a504048a071332ec8ff4b0883b4a25344f791961b` |
| 17 | `def` | [FixedPoints.intermediateField](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedpoints-intermediatefield--35e683b3f5d0f3f5ddcf72e4.md) | 189 | `declaration-track:35e683b3f5d0f3f5ddcf72e4769a1ebcdd253213f1e35c433b29160266aeca56` |
| 18 | `def` | [fixedField](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield--5f474477976050c6f55ea067.md) | 198 | `declaration-track:5f474477976050c6f55ea0671c922a9b85b22e8ba652c31092150e2115f62f1e` |
| 19 | `lemma` | [mem_fixedField_iff](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/mem-fixedfield-iff--c9400ad566a26c10141fc53e.md) | 201 | `result-track:c9400ad566a26c10141fc53e1614330e9d0085aede00032d92063cc5d7a61fe4` |
| 20 | `lemma` | [fixedField_bot](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-bot--cdd10e68c97f5b0ddf7765f0.md) | 206 | `result-track:cdd10e68c97f5b0ddf7765f0cf089d73151c0bb9c42bcbb288800a58e0840ca3` |
| 21 | `theorem` | [finrank_fixedField_eq_card](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/finrank-fixedfield-eq-card--c697e9008d2b800c23bb4345.md) | 210 | `result-track:c697e9008d2b800c23bb43454ddd767b46f4bfe062dfe9823277475921eebc34` |
| 22 | `def` | [fixingSubgroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroup--42015654dae23a4a1cc9c9af.md) | 215 | `declaration-track:42015654dae23a4a1cc9c9af315ebba1fae20420cb8d8530ab4a9923a4cc172c` |
| 23 | `theorem` | [le_iff_le](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/le-iff-le--b39aceb36c46b71dda78b131.md) | 218 | `result-track:b39aceb36c46b71dda78b13128b33750d916609f53bc31fcb8bd40f866444c11` |
| 24 | `theorem` | [fixingSubgroup_le](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroup-le--0de2fb26f7d02fa6f74a0064.md) | 222 | `result-track:0de2fb26f7d02fa6f74a0064ff5df1e09f9895e825dbe7862bc65192d6f65c64` |
| 25 | `theorem` | [fixedField_le](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-le--cc9a40528316d40a4db46e33.md) | 228 | `result-track:cc9a40528316d40a4db46e3330609e4a9e7da11d5fa8442b80a454e59ff0bbdb` |
| 26 | `lemma` | [fixingSubgroup_antitone](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroup-antitone--2aa999f762437ae8f2580ce0.md) | 232 | `result-track:2aa999f762437ae8f2580ce00b8def410b17cd180faee20f6a4181c910db55ab` |
| 27 | `lemma` | [fixedField_antitone](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-antitone--246fba36a11269722ff2eb52.md) | 237 | `result-track:246fba36a11269722ff2eb5242b5f474952af6bd472029e7f6dca89555e53a5f` |
| 28 | `lemma` | [mem_fixingSubgroup_iff](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/mem-fixingsubgroup-iff--4b9408e5244870a67014a90f.md) | 240 | `result-track:4b9408e5244870a67014a90f11ca579408ef5bb4fde665dc4bab1a26c7ea52b8` |
| 29 | `lemma` | [fixingSubgroup_top](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroup-top--e5b42749b53613945979ef4a.md) | 243 | `result-track:e5b42749b53613945979ef4a90d7e1aa5749cd095549997c652dd1da5ce27711` |
| 30 | `lemma` | [fixingSubgroup_bot](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroup-bot--e1f4efef7c977aaf92cc1ac7.md) | 247 | `result-track:e1f4efef7c977aaf92cc1ac7ec9531f16fe2a67d2760b80c675725eb94d195b6` |
| 31 | `def` | [fixingSubgroupEquiv](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroupequiv--fa0698dadd8e95b2d642ee04.md) | 252 | `declaration-track:fa0698dadd8e95b2d642ee049fd137353ddcae28e58843748c34ce1c8ef46b05` |
| 32 | `theorem` | [fixingSubgroup_fixedField](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroup-fixedfield--dd128cef4f2d7da7a5894bc0.md) | 259 | `result-track:dd128cef4f2d7da7a5894bc0a9476f8994b46ee25be4333a8ab984d90b9a3c65` |
| 33 | `instance` | [fixedField.smul](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-smul--6a3b0ef808b91226f692e46e.md) | 271 | `declaration-track:6a3b0ef808b91226f692e46e8b2bef3aafb10892596c6720f1f30eb96bfa19bb` |
| 34 | `instance` | [fixedField.algebra](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-algebra--55faa546c1f8fd204abeb53b.md) | 275 | `declaration-track:55faa546c1f8fd204abeb53b720f80d15ed0ebc483f96ce82be7d3630c99c718` |
| 35 | `instance` | [fixedField.isScalarTower](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-isscalartower--8a6456e64e87534b08e924e2.md) | 285 | `declaration-track:8a6456e64e87534b08e924e24abe178dfe9d43cfeb6402a9eaf4422ca8553491` |
| 36 | `theorem` | [fixedField_fixingSubgroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-fixingsubgroup--df25a588a9948896c3a41070.md) | 292 | `result-track:df25a588a9948896c3a41070002cd55e16af8d1f3b5490b797d764ba982ac5a8` |
| 37 | `lemma` | [fixedField_top](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixedfield-top--608233bae0f7973f5ccd381f.md) | 304 | `result-track:608233bae0f7973f5ccd381fbc03ce3e08310b81cd631a6a4f09eb2a790a95e2` |
| 38 | `theorem` | [mem_bot_iff_fixed](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/mem-bot-iff-fixed--6364491bef3656c19b3332f7.md) | 308 | `result-track:6364491bef3656c19b3332f7dd7d4b5017c57ffc662ac9b63ae8d9ccf44ee031` |
| 39 | `theorem` | [mem_range_algebraMap_iff_fixed](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/mem-range-algebramap-iff-fixed--258ce95a2a771650da9ab57e.md) | 313 | `result-track:258ce95a2a771650da9ab57e038e19c1a6bebe431bf1f53b75fa5355a694abaf` |
| 40 | `theorem` | [card_fixingSubgroup_eq_finrank](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/card-fixingsubgroup-eq-finrank--d4bff4702566415a2bb56da8.md) | 317 | `result-track:d4bff4702566415a2bb56da8551ef3209696a1670d1a6cdaec3be454852f2600` |
| 41 | `def` | [intermediateFieldEquivSubgroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/intermediatefieldequivsubgroup--0938a8dd507ecab317b44a86.md) | 324 | `declaration-track:0938a8dd507ecab317b44a869e40c94a81d4e7310b38f3700fd0b7d935dac662` |
| 42 | `def` | [galoisInsertionIntermediateFieldSubgroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/galoisinsertionintermediatefieldsubgroup--a141945ec225b1e0f3779e07.md) | 335 | `declaration-track:a141945ec225b1e0f3779e07c716c0d68294191062a49da0e6f5c76c91012c7f` |
| 43 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/galoiscoinsertionintermediatefieldsubgroup--6472815a0706f1e3fadf838a.md) | 346 | `declaration-track:6472815a0706f1e3fadf838a3e2961ce183f135332f0112d49c8f6694de96bc8` |
| 44 | `lemma` | [IntermediateField.restrictNormalHom_ker](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/intermediatefield-restrictnormalhom-ker--79f43aacaba28809a38cb225.md) | 366 | `result-track:79f43aacaba28809a38cb225305334222cce035b890f0c82c380a481c2b059f8` |
| 45 | `instance` | [of_fixedField_normal_subgroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/of-fixedfield-normal-subgroup--4a0d21cea1f9a39b9bdffa20.md) | 376 | `declaration-track:4a0d21cea1f9a39b9bdffa20df371b3087f610621cfa4a954f061d6cdb3a148e` |
| 46 | `def` | [normalAutEquivQuotient](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/normalautequivquotient--eae2d923c2eab47cd9daec65.md) | 386 | `declaration-track:eae2d923c2eab47cd9daec65aeab105d4936d58b78657fa728ebe9dc94af0a83` |
| 47 | `lemma` | [normalAutEquivQuotient_apply](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/normalautequivquotient-apply--22ae785de925e590e7fdde7f.md) | 394 | `result-track:22ae785de925e590e7fdde7f5ee9a6b9cd3dbd18288f83ff65fd4cb501058f71` |
| 48 | `theorem` | [map_fixingSubgroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/map-fixingsubgroup--0e1694cc5253915470b35be6.md) | 401 | `result-track:0e1694cc5253915470b35be62957f59870a5409f3d75908c0116d22a98014247` |
| 49 | `instance` | [fixingSubgroup_normal_of_isGalois](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/fixingsubgroup-normal-of-isgalois--1e26f19b70cf1341b193a66c.md) | 412 | `declaration-track:1e26f19b70cf1341b193a66c6128aab5a8d47a9dded2a2e9f73a5b5b7f86a84a` |
| 50 | `theorem` | [is_separable_splitting_field](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/is-separable-splitting-field--b6c16e7a3e0827068741ef38.md) | 429 | `result-track:b6c16e7a3e0827068741ef38c834b83d6ac90b761ad20067602e5837f021aef6` |
| 51 | `theorem` | [of_fixedField_eq_bot](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/of-fixedfield-eq-bot--ed1fa6db8709555d5627b37c.md) | 439 | `result-track:ed1fa6db8709555d5627b37c490e35c275eebc571a51f6efe8d43791f073bd17` |
| 52 | `theorem` | [of_card_aut_eq_finrank](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/of-card-aut-eq-finrank--57e3372768afcd07f6bff7b8.md) | 447 | `result-track:57e3372768afcd07f6bff7b8b06199e0e6f563477d3c9226f891e325cc0182c8` |
| 53 | `theorem` | [of_separable_splitting_field_aux](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/of-separable-splitting-field-aux--affa740e8ebb401a7932c0a7.md) | 464 | `result-track:affa740e8ebb401a7932c0a7241888737a5489157ab804b36cbc424ba6c568d8` |
| 54 | `theorem` | [of_separable_splitting_field](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/of-separable-splitting-field--57fc62adc612d5d39d708313.md) | 498 | `result-track:57fc62adc612d5d39d7083134d01df51cc541c0f07c59881cf2f56e5e37a6c00` |
| 55 | `theorem` | [tfae](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/tfae--db196954baaa3464a6873e8c.md) | 532 | `result-track:db196954baaa3464a6873e8ce8ecacaaab671293911e389dd6f7abad8fc3a486` |
| 56 | `instance` | [IsGalois.normalClosure](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isgalois-normalclosure--5cd1712e628bfa8635715add.md) | 557 | `declaration-track:5cd1712e628bfa8635715adda02435ab8550406dff16534b1ac424928c51929c` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/instance--0942a5158cd3d5cbd332d847.md) | 564 | `declaration-track:0942a5158cd3d5cbd332d847219ada5ef35fc9f6d10d06a2fc95a33dd3d2654c` |
| 58 | `instance` | [IsQuadraticExtension.isGalois](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isquadraticextension-isgalois--d36a94689939cf5dab095e47.md) | 576 | `declaration-track:d36a94689939cf5dab095e471772800b18bf72ffcaf4fc35905b8a3c10e92f49` |
| 59 | `instance` | [IsQuadraticExtension.isCyclic](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isquadraticextension-iscyclic--5e2fb09a3f0950dfe25bca22.md) | 581 | `declaration-track:5e2fb09a3f0950dfe25bca220bd558784beb39b9007b5bc265ced17c61348ae6` |
| 60 | `instance` | [IsQuadraticExtension.isMulCommutative_galoisGroup](../../../../mathematics/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean/declarations/isquadraticextension-ismulcommutative-galoisgroup--07b63acb840bb3221df66e5a.md) | 592 | `declaration-track:07b63acb840bb3221df66e5a9ed52e11b0fe42af77727d38e0c5bcb4aa902dc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
