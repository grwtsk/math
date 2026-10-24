# Verification target: GRWTSK.Algebra.RingTheory.Substitution.Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2547b313a495ab2f0b89d403f145dead834e5bb3",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2547b313a495ab2f0b89d403f145dead834e5bb3`.

Source path: `GRWTSK/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Evaluation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.LinearTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.DiscreteUniformity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasSubst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst--f4b1614e97ca06b99d12106d.md) | 81 | `declaration-track:f4b1614e97ca06b99d12106d53adbe7514383d7ace4da71d0ce4b0ac31a8c097` |
| 2 | `lemma` | [coeff_zero_iff](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/coeff-zero-iff--706ab84594e32f12521320a4.md) | 87 | `result-track:706ab84594e32f12521320a4dcc7b8b320f5a44c2fc8ba09af9e16a393682201` |
| 3 | `lemma` | [hasSubst_iff_hasEval_of_discreteTopology](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-iff-haseval-of-discretetopology--88f2fd4c33b582b83682e126.md) | 94 | `result-track:88f2fd4c33b582b83682e126e7e333bf6a1d71808eba03397386e3b8bf9b325d` |
| 4 | `theorem` | [HasSubst.hasEval](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-haseval--57cd6c1394f638520f854f68.md) | 99 | `result-track:57cd6c1394f638520f854f68c501c4846301c188d30f7fb308a2ce1404793961` |
| 5 | `theorem` | [HasSubst.zero](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-zero--ef67f4a5efdb440e0f37f3a9.md) | 103 | `result-track:ef67f4a5efdb440e0f37f3a943e1391a9c755e0546ecd6d0ec4e966d2aa25ce4` |
| 6 | `theorem` | [HasSubst.add](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-add--a7ed665a20ebbc9dcce3a82f.md) | 107 | `result-track:a7ed665a20ebbc9dcce3a82f6a6b20cc741f8021e6e612f9db4ff9284c3c83f8` |
| 7 | `theorem` | [HasSubst.mul_left](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-mul-left--31ee3956b70d644085f4fa5a.md) | 113 | `result-track:31ee3956b70d644085f4fa5a01c316dc64cfc8f70f723b7f7e2eab044e689c67` |
| 8 | `theorem` | [HasSubst.mul_right](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-mul-right--9d6d656d602bd17bd22d4339.md) | 120 | `result-track:9d6d656d602bd17bd22d4339dd0ab075f286efdaf54c2f8bd45a280d9e10922a` |
| 9 | `theorem` | [HasSubst.smul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-smul--ab59558c374aab00fb1d6797.md) | 125 | `result-track:ab59558c374aab00fb1d6797847369ad8484ce8c4e0fb394a90e80793c42fe54` |
| 10 | `theorem` | [HasSubst.X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-x--c63c08df1032a5870b3bc7f6.md) | 128 | `result-track:c63c08df1032a5870b3bc7f60d04ba22539e3f4f417a0a85fa1679e924646602` |
| 11 | `theorem` | [HasSubst.smul_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-smul-x--3e9e6c02bcc988bc59a0e48b.md) | 132 | `result-track:3e9e6c02bcc988bc59a0e48b0b5a8efd59ceee5c4b5e1e5cfad668f8e5080b71` |
| 12 | `def` | [hasSubstIdeal](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubstideal--d0502e3ae470197c6cb1b3c1.md) | 138 | `declaration-track:d0502e3ae470197c6cb1b3c154af897485bad503d5b0f510b20320d500186482` |
| 13 | `theorem` | [hasSubst_of_constantCoeff_nilpotent](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-of-constantcoeff-nilpotent--b74cf4cda8a7e0d745cd5017.md) | 145 | `result-track:b74cf4cda8a7e0d745cd5017a77360f2c43d158d454b978a7eaa4ed113cf3591` |
| 14 | `theorem` | [hasSubst_of_constantCoeff_zero](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-of-constantcoeff-zero--9c77d37a5b22402bd5efa297.md) | 152 | `result-track:9c77d37a5b22402bd5efa297e061c892348764b1468828b461f45ae3cb283ca8` |
| 15 | `def` | [subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst--51569c86bf6a65c9b7da0629.md) | 161 | `declaration-track:51569c86bf6a65c9b7da0629eb208238f3b42a458a58edb50f6ed47ca6875a98` |
| 16 | `theorem` | [subst_eq_eval₂](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-eq-eval--203cd89ed69e65b2b4444c7e.md) | 167 | `result-track:203cd89ed69e65b2b4444c7e51ab3231a495748962a4130ebf82011531e71c02` |
| 17 | `theorem` | [subst_coe](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-coe--2f686cada2f466a733f3e73e.md) | 172 | `result-track:2f686cada2f466a733f3e73ea366f133d7a90c00a2d4da6a81c736ce14e0ba2f` |
| 18 | `def` | [substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom--329adc566a70356d1c7cd82f.md) | 181 | `declaration-track:329adc566a70356d1c7cd82fa295c5270cac2a7cfa586d0038f5dda0592e3121` |
| 19 | `theorem` | [substAlgHom_eq_aeval](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom-eq-aeval--0e34d60b147ac477f5852628.md) | 191 | `result-track:0e34d60b147ac477f585262838bc1ad38af684aa6dd230ac537e5ba9c179d7eb` |
| 20 | `theorem` | [coe_substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/coe-substalghom--c359633125d41a76b455b5fa.md) | 200 | `result-track:c359633125d41a76b455b5fa3e7458dbad9ebe85ab4f3cd15d944bd5365b4b8d` |
| 21 | `theorem` | [subst_self](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-self--6f8f7cf539845c05f0e26dc4.md) | 206 | `result-track:6f8f7cf539845c05f0e26dc4fe9c0c663bae305df8b3e01c33899e2e252cff46` |
| 22 | `theorem` | [substAlgHom_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom-apply--caf8df754fc9bd5ba6622b1a.md) | 216 | `result-track:caf8df754fc9bd5ba6622b1a5effb86d4316fc25d985c8317018de61de9729de` |
| 23 | `theorem` | [subst_add](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-add--9377604005e5ee1e8ac4f9cc.md) | 220 | `result-track:9377604005e5ee1e8ac4f9cca1687b6e4771ed4f3e4e28477314ac98208cca76` |
| 24 | `theorem` | [subst_mul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-mul--e2e368c93721260b17e5ecac.md) | 224 | `result-track:e2e368c93721260b17e5ecacc1b36603e026216c59705fad056c020aedece519` |
| 25 | `theorem` | [subst_pow](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-pow--752f71eb15320f8fd4e88517.md) | 228 | `result-track:752f71eb15320f8fd4e8851711b4bf62e2ba748f6a05ad1a39b47f59577abe99` |
| 26 | `theorem` | [subst_smul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-smul--b096143db16db39a69e5a899.md) | 232 | `result-track:b096143db16db39a69e5a8999f423570b7c4f3ab3b8fff0ce52c333def2f9971` |
| 27 | `theorem` | [substAlgHom_coe](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom-coe--c9e50157c4d835adeb03260f.md) | 236 | `result-track:c9e50157c4d835adeb03260facad2a4c144a79b821ee3b9736a19fee146cba13` |
| 28 | `theorem` | [substAlgHom_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom-x--9dccf853842fb174f856d9e1.md) | 240 | `result-track:9dccf853842fb174f856d9e1220eadd2bbc2ad1ad43d38357add70fc543d0e9b` |
| 29 | `theorem` | [substAlgHom_monomial](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom-monomial--60e0193a8740dfdf31856000.md) | 244 | `result-track:60e0193a8740dfdf3185600012418741df22be7e07688bfc40091aef39511321` |
| 30 | `theorem` | [subst_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-x--8e59cc1ccf8c42274fc60873.md) | 250 | `result-track:8e59cc1ccf8c42274fc608738c87f51559698d821a59973104a7c8bcde6308fa` |
| 31 | `theorem` | [subst_monomial](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-monomial--50fe68514476389aef3683d1.md) | 254 | `result-track:50fe68514476389aef3683d170578eebcc52c5d12a157d033c58f1ce9e72b3df` |
| 32 | `theorem` | [continuous_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/continuous-subst--8405bbe2b2d85ba86d6b68ac.md) | 259 | `result-track:8405bbe2b2d85ba86d6b68ac474da9bc58fb1bfdc2703fb6ed3003e87eccb53d` |
| 33 | `theorem` | [coeff_subst_finite](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/coeff-subst-finite--9b0c3946c43018bf5939451b.md) | 265 | `result-track:9b0c3946c43018bf5939451bfc9e1a7019e11f055773d5cf46d9b3a350c05985` |
| 34 | `theorem` | [coeff_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/coeff-subst--27af340dff94f78ac124c3f0.md) | 272 | `result-track:27af340dff94f78ac124c3f09245cb7d030977206649c6ed2168caba0fd0d67c` |
| 35 | `theorem` | [constantCoeff_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/constantcoeff-subst--b5626280f74c204924cde09f.md) | 281 | `result-track:b5626280f74c204924cde09f47796b307b5ef5639740dfb0109f2c86a36bc136` |
| 36 | `theorem` | [map_algebraMap_eq_subst_X](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/map-algebramap-eq-subst-x--1e48c639f64d98f5b0eff67d.md) | 286 | `result-track:1e48c639f64d98f5b0eff67dca031244ba228131a7e9314f19322683ca1b79d5` |
| 37 | `theorem` | [comp_substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/comp-substalghom--828bee6f8bd7136ad0786ad7.md) | 301 | `result-track:828bee6f8bd7136ad0786ad78db25265dedfb638fe74a330366810ddc5154571` |
| 38 | `theorem` | [comp_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/comp-subst--edb388c4b8ba3350727fa133.md) | 309 | `result-track:edb388c4b8ba3350727fa133a1569ed8112c64d3e33668c909ff351033218654` |
| 39 | `theorem` | [comp_subst_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/comp-subst-apply--96f1e3ef94b121fef671cbaa.md) | 314 | `result-track:96f1e3ef94b121fef671cbaa3312339c3ac6972b58a03a27aadf6a6194782903` |
| 40 | `theorem` | [eval₂_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/eval-subst--16c6a8829436eba16b67329d.md) | 322 | `result-track:16c6a8829436eba16b67329d5e787cfecab1388a43fcac69d649901804ebccc3` |
| 41 | `theorem` | [IsNilpotent_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/isnilpotent-subst--e167a778d2e9265e05d77f7c.md) | 337 | `result-track:e167a778d2e9265e05d77f7c092db36264b6b5454f260719b2b714aecc95e958` |
| 42 | `theorem` | [HasSubst.comp](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/hassubst-comp--69c7b7ef089e1f5625325941.md) | 360 | `result-track:69c7b7ef089e1f5625325941ff641c1c0ab66af00a118c7b20bf105d936c714f` |
| 43 | `theorem` | [substAlgHom_comp_substAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom-comp-substalghom--80b94dbd56f26ac021b69b6a.md) | 370 | `result-track:80b94dbd56f26ac021b69b6a484b6786321f4de9e58da6b8497afb75b6417b5c` |
| 44 | `theorem` | [substAlgHom_comp_substAlgHom_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/substalghom-comp-substalghom-apply--75a26c64859087b5ee970c3c.md) | 378 | `result-track:75a26c64859087b5ee970c3c666f7f55bfcaca0616ef9e7002a9212aa6b7d83a` |
| 45 | `theorem` | [subst_comp_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-comp-subst--1c232aaa8eae88d1f0bc65a7.md) | 383 | `result-track:1c232aaa8eae88d1f0bc65a7b3d0cc91a33084dc7582bc1a322c9d66377a4b84` |
| 46 | `theorem` | [subst_comp_subst_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/subst-comp-subst-apply--b5cf2e3a1e234730530c819f.md) | 387 | `result-track:b5cf2e3a1e234730530c819fdd2f124409263244ee38244397831ffb7b139471` |
| 47 | `def` | [rescale](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale--1065f288a50344ed887cb785.md) | 401 | `declaration-track:1065f288a50344ed887cb785187b45541dffa20cd82678c54c955b38bb6cb0cf` |
| 48 | `theorem` | [coeff_rescale](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/coeff-rescale--f98c5f4a5f375d2d137b07f7.md) | 440 | `result-track:f98c5f4a5f375d2d137b07f7afebe083c2a71250f443853a9df4f3d8178bfa1a` |
| 49 | `theorem` | [rescale_zero](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale-zero--43b42b5ef292b015c02e2ba8.md) | 445 | `result-track:43b42b5ef292b015c02e2ba86ef5b40d2b9538b9e074744832992b09ce5a98c6` |
| 50 | `theorem` | [rescale_zero_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale-zero-apply--7a9a9477229bd7ad5811544d.md) | 460 | `result-track:7a9a9477229bd7ad5811544dfe867a7936f935ee4272543db2bcca9ba836a5f6` |
| 51 | `theorem` | [rescale_one](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale-one--bcc0a1198a0f39f7c4d3f364.md) | 464 | `result-track:bcc0a1198a0f39f7c4d3f364ac41421392020281f3119bc0cf53b8ecc543d255` |
| 52 | `theorem` | [rescale_rescale](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale-rescale--9e6d27a116a10732b659538f.md) | 468 | `result-track:9e6d27a116a10732b659538f48cfd7c8dcd5f2679371f5472c66f26fc0ddaa8b` |
| 53 | `theorem` | [rescale_mul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale-mul--1168c2da26eb871038c1c8a2.md) | 473 | `result-track:1168c2da26eb871038c1c8a2fa7fc170e635c6e340b2910dddfbbf591fa1122c` |
| 54 | `lemma` | [rescale_homogeneous_eq_smul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale-homogeneous-eq-smul--72fe3892e29316cf1a48548e.md) | 478 | `result-track:72fe3892e29316cf1a48548e92125e56d0b0f7cfcfd9256afa6b3e43f4da9112` |
| 55 | `def` | [rescaleMonoidHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescalemonoidhom--a6da11e42f40c0505ab054ad.md) | 490 | `declaration-track:a6da11e42f40c0505ab054adf8904d716bd769e66c21f948a15103bc257edc98` |
| 56 | `theorem` | [rescale_eq_subst](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescale-eq-subst--4144214f03ff905759b5fe43.md) | 500 | `result-track:4144214f03ff905759b5fe43a56561edb7629cfc92d0bdde9d6b48764b25ecf4` |
| 57 | `def` | [rescaleAlgHom](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescalealghom--d59d31ae390b3d894fa230aa.md) | 517 | `declaration-track:d59d31ae390b3d894fa230aad133cfd24b42811c01731e7b9a56b99e99b296d0` |
| 58 | `theorem` | [rescaleAlgHom_apply](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescalealghom-apply--b2c6219f81bca13f17daf5fb.md) | 521 | `result-track:b2c6219f81bca13f17daf5fbe022a5262db7943549bda830f6a8eac73aa30e0e` |
| 59 | `theorem` | [rescaleAlgHom_mul](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescalealghom-mul--1dff5fbfea2fb1bf232a98ff.md) | 525 | `result-track:1dff5fbfea2fb1bf232a98ff1523f2ccf3ac0f78e70ac48ef487da4c19d11d38` |
| 60 | `theorem` | [rescaleAlgHom_one](../../../../../mathematics/Algebra/RingTheory/Substitution/Variant1f5943807894e32792e6935ae4ddb9c12f69f3b781c2863309c9764ab30b0d09.lean/declarations/rescalealghom-one--99db03ac1dd139713f4ce4a5.md) | 530 | `result-track:99db03ac1dd139713f4ce4a51ecc214229953e5de4eb9c4d26264700ebc5bc0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
