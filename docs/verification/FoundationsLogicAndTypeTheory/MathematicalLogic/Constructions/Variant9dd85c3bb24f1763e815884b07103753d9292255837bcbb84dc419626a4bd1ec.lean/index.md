# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Constructions.Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04583e7b16719d500af3558c6e248eb74b6a61b0",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04583e7b16719d500af3558c6e248eb74b6a61b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Module.Synonym` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bilipschitz` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--bbf911de558f2e9e9aeb0394.md) | 80 | `declaration-track:bbf911de558f2e9e9aeb03946b7901799e3f3a4137a1aa62603d2f057a9f1925` |
| 2 | `lemma` | [inner_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/inner-def--2510b368665b9e1cf3a947cf.md) | 93 | `result-track:2510b368665b9e1cf3a947cf4932a35bfbae8572a64a73ddf80938520d82e15c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--2e2e48b2eb967eeb2900a98e.md) | 108 | `declaration-track:2e2e48b2eb967eeb2900a98e1e7a52172b9c0e1e90c958a0f82df483559c8b9d` |
| 4 | `lemma` | [prod_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/prod-norm--da483c4e5b2e9d771687b775.md) | 111 | `result-track:da483c4e5b2e9d771687b7757ab10f7bd066b70801908d3d6bc86df37b531800` |
| 5 | `lemma` | [prod_norm_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/prod-norm-sq--9c598cf7da5ce1cfcfacb8a2.md) | 113 | `result-track:9c598cf7da5ce1cfcfacb8a206cb54d36aa63b39e0f61d1cbf8c785e88450918` |
| 6 | `lemma` | [prod_norm_le_norm_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/prod-norm-le-norm-add--bd48fb356c596f0d4fa2bd84.md) | 116 | `result-track:bd48fb356c596f0d4fa2bd84941552c2f54a66fe6352dcb9142f99cba8802c90` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--de15abf1f7567edfbf8bed7b.md) | 125 | `declaration-track:de15abf1f7567edfbf8bed7bf6023bb6c26d75c7072c21e662bc1f55248a7bba` |
| 8 | `lemma` | [prod_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/prod-inner--0193c6d389f6833392c94036.md) | 142 | `result-track:0193c6d389f6833392c94036e9cddcbe61690ed89ae9cfeadc21a35cb1840a33` |
| 9 | `lemma` | [max_le_prod_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/max-le-prod-norm--9aa6d0ccb502bb8deff0539f.md) | 144 | `result-track:9aa6d0ccb502bb8deff0539f7fb13148566931a4b93f62099cfadf2e720c9fab` |
| 10 | `lemma` | [norm_equiv_le_norm_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/norm-equiv-le-norm-prod--41f4b0dc6797a510d682027a.md) | 155 | `result-track:41f4b0dc6797a510d682027ac1bbb5a4a9e6cf78f8ee700fae69e75a0698d8a6` |
| 11 | `def` | [normedAddCommGroupProdAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/normedaddcommgroupprodaux--f92f49d0e3ae2d9348bfe72f.md) | 167 | `declaration-track:f92f49d0e3ae2d9348bfe72f99b02f9a6f2c5248daa9cc9e3e5c2f011e80eda1` |
| 12 | `lemma` | [antilipschitzWith_two_equiv_prod_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/antilipschitzwith-two-equiv-prod-aux--a7a81eecd10274215d99a838.md) | 174 | `result-track:a7a81eecd10274215d99a83849b62a11ba61bc51ea246a23d92ecf913ea3b82c` |
| 13 | `lemma` | [lipschitzWith_one_equiv_prod_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/lipschitzwith-one-equiv-prod-aux--b6e5f07f60deac3c5bdac1a5.md) | 182 | `result-track:b6e5f07f60deac3c5bdac1a58bf708f80c401ff07bb73a27bfeeb9f57211f31d` |
| 14 | `lemma` | [uniformity_prod_eq_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/uniformity-prod-eq-aux--aeebfe8956cec96b8107b6df.md) | 186 | `result-track:aeebfe8956cec96b8107b6df12394e19fd643a20972fe5f63016fe357dd2ed7e` |
| 15 | `lemma` | [isBounded_prod_iff_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/isbounded-prod-iff-aux--35886aab9dcc3e9894c077b6.md) | 190 | `result-track:35886aab9dcc3e9894c077b66124ad92e673161b6d92dc8882c0b8f8e67995ea` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--c010409f0b6e0c8e2093d615.md) | 197 | `declaration-track:c010409f0b6e0c8e2093d6153b7b45b1eb5137c26cfa1b53848dc4f68828417b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--841f721f30436abf49886c5c.md) | 200 | `declaration-track:841f721f30436abf49886c5c762249cfaa06ef65bb7d6827cfd30ce10646d87f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--68d85259167e78ad093835ab.md) | 214 | `declaration-track:68d85259167e78ad093835abd6106e4b2e1327d4ede4ba7f8750fcabdc960d05` |
| 19 | `lemma` | [pi_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/pi-norm--6d8fbf8a73971e39b3d08034.md) | 217 | `result-track:6d8fbf8a73971e39b3d080347b952df18943804a59f3d1db12e47bf6e125a4c8` |
| 20 | `lemma` | [pi_norm_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/pi-norm-sq--f3966de83a50d9f5c980b3c6.md) | 220 | `result-track:f3966de83a50d9f5c980b3c6029a649480bd228c25163d2c6fe1d50543b54a5a` |
| 21 | `lemma` | [pi_norm_le_sum_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/pi-norm-le-sum-norm--b4b1d71ffa3f4e651a5d669f.md) | 224 | `result-track:b4b1d71ffa3f4e651a5d669f6308af18f08c730ecbd95a8a3aeb83add81039de` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--df407f85938b56ddb3ad0ba1.md) | 233 | `declaration-track:df407f85938b56ddb3ad0ba1e86fa398610bbc560a4ba76db273cc60bf59f28a` |
| 23 | `lemma` | [pi_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/pi-inner--4a370530dfbc590fe818c12f.md) | 247 | `result-track:4a370530dfbc590fe818c12f8414d8463040c9bd9051dc2ac971582243626139` |
| 24 | `lemma` | [inner_single_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/inner-single-left--bec502a4231c1505ddac748c.md) | 250 | `result-track:bec502a4231c1505ddac748cfd1034966769652810074a6b3d8553c0a5406586` |
| 25 | `lemma` | [inner_single_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/inner-single-right--54c39b33c75c8dcab92703e3.md) | 257 | `result-track:54c39b33c75c8dcab92703e30208a765830cef366a2718835c3cbb07d6256142` |
| 26 | `lemma` | [norm_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/norm-single--568d9c664d4ac1539c769ead.md) | 264 | `result-track:568d9c664d4ac1539c769ead184be87b3c110845afafe3c38a397997158975fa` |
| 27 | `lemma` | [norm_apply_le_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/norm-apply-le-norm--0b540c940bb95876dc45b016.md) | 270 | `result-track:0b540c940bb95876dc45b0165453dddfd52ff06fe384ae8e6661188d38160096` |
| 28 | `lemma` | [norm_equiv_le_norm_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/norm-equiv-le-norm-pi--975332a517c2c3ed35296a2c.md) | 278 | `result-track:975332a517c2c3ed35296a2c78f2a71adae56f1d49f9487fcdecbd68611a51a8` |
| 29 | `def` | [normedAddCommGroupPiAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/normedaddcommgrouppiaux--5b3a5f5cb960c2b457f208c4.md) | 292 | `declaration-track:5b3a5f5cb960c2b457f208c4184770e591d0e436dea264bcca7487812e6951fc` |
| 30 | `lemma` | [antilipschitzWith_card_equiv_pi_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/antilipschitzwith-card-equiv-pi-aux--f5e85bb3f3c390fc3f4474ff.md) | 299 | `result-track:f5e85bb3f3c390fc3f4474ff061c56560eb5a6b732afb421df629662f3998ff2` |
| 31 | `lemma` | [lipschitzWith_one_equiv_pi_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/lipschitzwith-one-equiv-pi-aux--8a0d0f446532a74e9fccc7d3.md) | 307 | `result-track:8a0d0f446532a74e9fccc7d330c28246f50f7dc4c272f13fbdde036d9573a6dd` |
| 32 | `lemma` | [uniformity_pi_eq_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/uniformity-pi-eq-aux--57769bb3b561a7c649621a46.md) | 311 | `result-track:57769bb3b561a7c649621a469efba54335e234fc8be8dec216fd25dc60c89d3b` |
| 33 | `lemma` | [isBounded_pi_iff_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/isbounded-pi-iff-aux--85c8b3143d54b634e1b2cb36.md) | 315 | `result-track:85c8b3143d54b634e1b2cb368e9d0a7d28daa9f32bf4538a2b2335b78968499a` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--60fb6cc61e6cc588e7eaf6fd.md) | 321 | `declaration-track:60fb6cc61e6cc588e7eaf6fd7b67f0c7ed2c6601440077ca4e171a88219c450d` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instance--12c0c07c8e2689f4dd7814ab.md) | 324 | `declaration-track:12c0c07c8e2689f4dd7814ab99c5ef56ae121211643a33b1e5fd1d97ea6b268b` |
| 36 | `instance` | [instCStarModuleComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/instcstarmodulecomplex--6b4677b34189aab307dbe461.md) | 344 | `declaration-track:6b4677b34189aab307dbe46181f5662b0a77ecb9bd13e355fb0172b280cd895f` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/example--8d12c85f7fef0549543c3a43.md) | 358 | `declaration-track:8d12c85f7fef0549543c3a436cdfd7f4a67b020df74a15e9cead782a1bb400b1` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/declarations/example--568b1bfd6f5d0e2551a4220e.md) | 363 | `declaration-track:568b1bfd6f5d0e2551a4220e175d42adb37e0832ffe1971f907a389f1fb4a970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
