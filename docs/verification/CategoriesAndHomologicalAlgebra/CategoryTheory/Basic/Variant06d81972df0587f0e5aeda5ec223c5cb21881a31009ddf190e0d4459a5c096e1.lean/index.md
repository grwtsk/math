# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c77a2be70418b9b5a53bfba478b046466f63b4db",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c77a2be70418b9b5a53bfba478b046466f63b4db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Univariate.M` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Qpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/qpf--c13d1152eabc176160250477.md) | 59 | `declaration-track:c13d1152eabc176160250477b29d62b8681d7f4eb636d64d6f1f3bd117785686` |
| 2 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/id-map--b7111f33842f64d691866e1c.md) | 79 | `result-track:b7111f33842f64d691866e1cbd6ef396d32d6f241f220c4333032de32c9f1f5d` |
| 3 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/comp-map--ddc17d4d69dbcbfb5bf498f0.md) | 86 | `result-track:ddc17d4d69dbcbfb5bf498f08b19fd5156a3dac51d33069354bc7cdafd9f012f` |
| 4 | `theorem` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/lawfulfunctor--59f19fac3ff93504789626af.md) | 94 | `result-track:59f19fac3ff93504789626af25776e2a3f4764c7a3c010c8f62b6435d108d9be` |
| 5 | `theorem` | [liftp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/liftp-iff--adb7824afdab79c1f776d8a9.md) | 109 | `result-track:adb7824afdab79c1f776d8a91bf1244af123765769bf059bb4d2510c21b89c76` |
| 6 | `theorem` | [liftp_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/liftp-iff--20c15221f17170bdb8d76a1f.md) | 125 | `result-track:20c15221f17170bdb8d76a1f6553b6377e0642123e525334043102fde7866204` |
| 7 | `theorem` | [liftr_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/liftr-iff--aa0304bcd640721c0153222d.md) | 142 | `result-track:aa0304bcd640721c0153222dfb883dbcc60a5c2f37498b74648eccfc2643be15` |
| 8 | `def` | [recF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/recf--0e7ff5576982e4c82ccb2e7a.md) | 172 | `declaration-track:0e7ff5576982e4c82ccb2e7afe936541e1cd4f9840fdca4772add59cb5d3dcfc` |
| 9 | `theorem` | [recF_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/recf-eq--66109932d505a0673fcfc155.md) | 177 | `result-track:66109932d505a0673fcfc1558e1ec3843f4f8718c4fb80c2372650e3a1cbaad9` |
| 10 | `theorem` | [recF_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/recf-eq--525adc694e211a5e5603566e.md) | 184 | `result-track:525adc694e211a5e5603566e71de29c05bf6a30053674d6525191ba7b3d7d623` |
| 11 | `inductive` | [Wequiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/wequiv--b960e46ea38e1d70688bd34d.md) | 191 | `declaration-track:b960e46ea38e1d70688bd34db5af44bea3cdd3f101582889c923b848e818df80` |
| 12 | `theorem` | [recF_eq_of_Wequiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/recf-eq-of-wequiv--d70afccd9d02d738b0d9dd87.md) | 200 | `result-track:d70afccd9d02d738b0d9dd8755564160689dcfb14f634f44dfd7b687acd0205e` |
| 13 | `theorem` | [Wequiv.abs'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/wequiv-abs--7b3d4989c38e151ee22c45a7.md) | 210 | `result-track:7b3d4989c38e151ee22c45a7d3c7c539a5d4ed74018cae9046ef52371daac816` |
| 14 | `theorem` | [Wequiv.refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/wequiv-refl--2171554493838ce48244d94b.md) | 218 | `result-track:2171554493838ce48244d94bd8010515c13aea361e5e9fc09b4db22143f908be` |
| 15 | `theorem` | [Wequiv.symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/wequiv-symm--b6acfbec0ffba09b3f7f10f0.md) | 224 | `result-track:b6acfbec0ffba09b3f7f10f066c1985f64ccb8416a7cd8be2af923912fd0bb16` |
| 16 | `def` | [Wrepr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/wrepr--2ad6f3fd2acdafc000eac988.md) | 234 | `declaration-track:2ad6f3fd2acdafc000eac988009d174f74ee24db1f442d08ee769589feea4f7b` |
| 17 | `theorem` | [Wrepr_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/wrepr-equiv--22d6a54d1c4818322fc06d52.md) | 239 | `result-track:22d6a54d1c4818322fc06d523bc66f3e703f6e95e41d693a5d3bc292ad0ab70c` |
| 18 | `def` | [Wsetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/wsetoid--51b51b00f0ef9b9da294c45e.md) | 252 | `declaration-track:51b51b00f0ef9b9da294c45e05b36ae82a5751f48a6e7e1432ce6dd97c07a1e7` |
| 19 | `def` | [Fix](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix--c655794b6545dc0938e9f891.md) | 261 | `declaration-track:c655794b6545dc0938e9f891f78460292350fdc897788f6c8cfe58817838ca8f` |
| 20 | `def` | [Fix.rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-rec--c26e49b1192412da8fabe091.md) | 266 | `declaration-track:c26e49b1192412da8fabe091c151d652dae30a901aac8629db746719001a9bee` |
| 21 | `def` | [fixToW](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fixtow--2a2aa5dbc3b5d0abfea07a1d.md) | 271 | `declaration-track:2a2aa5dbc3b5d0abfea07a1dd2af70f3b9a01b435dbb7b72110b424a401fb0ff` |
| 22 | `def` | [Fix.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-mk--d20372968648e7169fe0f207.md) | 277 | `declaration-track:d20372968648e7169fe0f2079f8d25521998bf203bcca16b502689aaca07c42b` |
| 23 | `def` | [Fix.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-dest--8e2f4c498e922114dd0faebb.md) | 282 | `declaration-track:8e2f4c498e922114dd0faebbd35382a797982d7ec84b3fd17c7fcd08cb2482ba` |
| 24 | `theorem` | [Fix.rec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-rec-eq--3e2ed5e306d22ba885473fb9.md) | 286 | `result-track:3e2ed5e306d22ba885473fb9f6a5791fc699964eb2d273d948959be9599b7b5d` |
| 25 | `theorem` | [Fix.ind_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-ind-aux--a1223cc983c8e414c34d38ac.md) | 304 | `result-track:a1223cc983c8e414c34d38acfa40916b99c1d4ac0fa3a36d0ba3609f5b6cc444` |
| 26 | `theorem` | [Fix.ind_rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-ind-rec--2a5a4ad83503656d021680e9.md) | 317 | `result-track:2a5a4ad83503656d021680e980af7c48d2681a57829f825a380084d4cfa1c1a1` |
| 27 | `theorem` | [Fix.rec_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-rec-unique--b77a0de101397d797d569a85.md) | 330 | `result-track:b77a0de101397d797d569a85b9b465fbaa60d1921db4482d16679994cd1d83d6` |
| 28 | `theorem` | [Fix.mk_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-mk-dest--48be8583796662d28dd16e1a.md) | 338 | `result-track:48be8583796662d28dd16e1a6e56f059a4cfa597019881cbe0ccf4aa07c4763d` |
| 29 | `theorem` | [Fix.dest_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-dest-mk--d00c29817aad8785bab99db5.md) | 347 | `result-track:d00c29817aad8785bab99db503888823d00eaa08aeb3b3f879956d0fba584b55` |
| 30 | `theorem` | [Fix.ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/fix-ind--cc6e5033228379fb47d71533.md) | 356 | `result-track:cc6e5033228379fb47d7153373ac109de09cbc285362952a93b2da3c48b84e79` |
| 31 | `def` | [corecF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/corecf--312cea706d197c3b71b60609.md) | 380 | `declaration-track:312cea706d197c3b71b60609ab94c6a1dafbb2e35d5710c443a7b868e98caff3` |
| 32 | `theorem` | [corecF_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/corecf-eq--7f5ae56d3d6920335ad22f83.md) | 385 | `result-track:7f5ae56d3d6920335ad22f837fcaa9ad153a4efc0e86e505c6e79577ad4302b9` |
| 33 | `def` | [IsPrecongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/isprecongr--374bf8e3a10c83a8c5dcd7b2.md) | 392 | `declaration-track:374bf8e3a10c83a8c5dcd7b216c0ccdd02819432b8d7d0d13bd75554b2ada80c` |
| 34 | `def` | [Mcongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/mcongr--b8fe9642883d5c318d3b3742.md) | 397 | `declaration-track:b8fe9642883d5c318d3b3742a2fe1d38910c7147f31dcd41809c8988ce56e611` |
| 35 | `def` | [Cofix](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix--145f72c615753fab28a30476.md) | 402 | `declaration-track:145f72c615753fab28a30476e605c7f9dc78c19aa8eac36f0561e40145b23edd` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/instance--ed378e7d00c15f7c50779abd.md) | 406 | `declaration-track:ed378e7d00c15f7c50779abda4940d10172a36aeeef9000c06206f8600795647` |
| 37 | `def` | [Cofix.corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix-corec--2a773dc6ed5add4421b05f28.md) | 410 | `declaration-track:2a773dc6ed5add4421b05f28e18f41c925a0473fb1c028531422a91209d4be3c` |
| 38 | `def` | [Cofix.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix-dest--fcd3233f195d3417a34de73f.md) | 415 | `declaration-track:fcd3233f195d3417a34de73f6d3e0d10571bacd61d4cfa9105e3fca6ee336d0d` |
| 39 | `theorem` | [Cofix.dest_corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix-dest-corec--4e3ef7f51df2d48dde1e5eb9.md) | 429 | `result-track:4e3ef7f51df2d48dde1e5eb90bf124155eae84a5c7d972eae4ab1a39bbb1522c` |
| 40 | `theorem` | [Cofix.bisim_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix-bisim-aux--0c0b916f9c5628799e7e91da.md) | 439 | `result-track:0c0b916f9c5628799e7e91da589ac12758e1e0f1cf97260b7c17bd02dc179f18` |
| 41 | `theorem` | [Cofix.bisim_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix-bisim-rel--deb2d0c10fc4ac126d7fa841.md) | 475 | `result-track:deb2d0c10fc4ac126d7fa841f4b6d69c92e89b03bb893c5e57b7a37edf8e648a` |
| 42 | `theorem` | [Cofix.bisim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix-bisim--96deb7d3c50f06dac7fde3e1.md) | 495 | `result-track:96deb7d3c50f06dac7fde3e15cf3f835b92033e326b5b9e7ab9658877ab495e0` |
| 43 | `theorem` | [Cofix.bisim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/cofix-bisim--e099049990b6e2ab3f153213.md) | 506 | `result-track:e099049990b6e2ab3f1532134f6f2408bc0fdf438afbfba03422368f59323b62` |
| 44 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/comp--7b28c4c8b953ba5655d097a6.md) | 531 | `declaration-track:7b28c4c8b953ba5655d097a6cf2aaa8dc541340a314e5a0ec2a8a89b80a13edd` |
| 45 | `def` | [quotientQpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/quotientqpf--d4d66346ae1f288c1fe5e672.md) | 594 | `declaration-track:d4d66346ae1f288c1fe5e6726ef63cb811bf93ea16e938406f2bd4c0cc2716af` |
| 46 | `theorem` | [mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/mem-supp--a46dc3b92704b547ca52d5a1.md) | 616 | `result-track:a46dc3b92704b547ca52d5a1d0e76ea22cd3f44e4838e8427e669bc2e6fb65c9` |
| 47 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/supp-eq--bc4588d6ae142b8ab64d71b2.md) | 630 | `result-track:bc4588d6ae142b8ab64d71b2d4b72403e923ea202e9fec606c4926f7e0229871` |
| 48 | `theorem` | [has_good_supp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/has-good-supp-iff--f884ac169d08bff6434e3e99.md) | 636 | `result-track:f884ac169d08bff6434e3e990be157b5dc8125aafa875b8cce367f306ae64440` |
| 49 | `def` | [IsUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/isuniform--a6d63cbf491283e88309a34a.md) | 664 | `declaration-track:a6d63cbf491283e88309a34a290342e259a2e4a09d7e65a1528684da65d0ba96` |
| 50 | `def` | [LiftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/liftppreservation--99ed70bbc02f644e8c219ed8.md) | 670 | `declaration-track:99ed70bbc02f644e8c219ed89e3cdfbff6ed4ffc92b97ffb87fbc7ce3a59bcae` |
| 51 | `def` | [SuppPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/supppreservation--44e8d4d39b67cc67fdc59c1d.md) | 675 | `declaration-track:44e8d4d39b67cc67fdc59c1dd1d8667b4a36f30df143ea9625cb3c856ebb80f6` |
| 52 | `theorem` | [supp_eq_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/supp-eq-of-isuniform--028195480a8ad29d990a9162.md) | 679 | `result-track:028195480a8ad29d990a9162577c5e2f31d600261d42500f4cd2733d97db67c5` |
| 53 | `theorem` | [liftp_iff_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/liftp-iff-of-isuniform--6976f3bb031ffdfcf0e6c3c8.md) | 688 | `result-track:6976f3bb031ffdfcf0e6c3c8c398f1f8ef186b68bf86d84d31da868bc3fa94d0` |
| 54 | `theorem` | [supp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/supp-map--79346fbaece7a7648bd56e58.md) | 703 | `result-track:79346fbaece7a7648bd56e58d2a537addad44aa888e0b9d67da3f94d1d6a5342` |
| 55 | `theorem` | [suppPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/supppreservation-iff-uniform--8b6fffa6406e64a8cc7da35c.md) | 709 | `result-track:8b6fffa6406e64a8cc7da35c8890de98cba60e3b0d8dde553cf47ffe4b8e5251` |
| 56 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/supppreservation-iff-liftppreservation--336aadd51fa2799656bf2995.md) | 717 | `result-track:336aadd51fa2799656bf2995f0e4be64ddce311919a2d4192fb54bc7d914d622` |
| 57 | `theorem` | [liftpPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/declarations/liftppreservation-iff-uniform--9e8881e3aa299e3d0b200f7a.md) | 731 | `result-track:9e8881e3aa299e3d0b200f7ac7188a61b8039a0b599f034209efdc0a3667f0b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
