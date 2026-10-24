# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "065a04c4fa94da2b259b9d65e453a60767f38bd9",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `065a04c4fa94da2b259b9d65e453a60767f38bd9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Univariate.M` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Qpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/qpf--fc18a8c052871ca73d412d3b.md) | 51 | `declaration-track:fc18a8c052871ca73d412d3baee1afcbb031bef68a894a1ab887f8a13195f338` |
| 2 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/id-map--6beb142d8ae1ae462350eadb.md) | 71 | `result-track:6beb142d8ae1ae462350eadbbd8ca45f9d9c3fa08b5ac02da21deb613b26b258` |
| 3 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/comp-map--069d136b420e376013c101df.md) | 78 | `result-track:069d136b420e376013c101df2eddd6bfecf7ca1c76ea2b88d9d506a0849bbae1` |
| 4 | `theorem` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/lawfulfunctor--e57c8d8bbaa3777c6613bdb8.md) | 86 | `result-track:e57c8d8bbaa3777c6613bdb8ec0e43602a6959bb6430a59b3d0dcdcedc397b68` |
| 5 | `theorem` | [liftp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/liftp-iff--8081ec9da93921193573693c.md) | 101 | `result-track:8081ec9da93921193573693c2c3f8d731d79489589855e1a22b266db506b1906` |
| 6 | `theorem` | [liftp_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/liftp-iff--64acd5f721d2e26ea5ad9393.md) | 117 | `result-track:64acd5f721d2e26ea5ad9393c809e507426e1cd4f4c22ddc7ae6229f090582fa` |
| 7 | `theorem` | [liftr_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/liftr-iff--9f3e707663a1297d39337fef.md) | 134 | `result-track:9f3e707663a1297d39337fefb42b5895e87ba14ec963bedfbd8d9aebf27581a2` |
| 8 | `def` | [recF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/recf--8c41fe6827e1689928b0d241.md) | 164 | `declaration-track:8c41fe6827e1689928b0d24184a4a752c1631341049fba370af6ea2d3196b116` |
| 9 | `theorem` | [recF_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/recf-eq--036f7f54a0169da7b3a56bfb.md) | 169 | `result-track:036f7f54a0169da7b3a56bfb68f4df2d48a677c6b433d0694126fc4b0d37ca00` |
| 10 | `theorem` | [recF_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/recf-eq--f62762ff1e98a309ca26e467.md) | 176 | `result-track:f62762ff1e98a309ca26e46742380d232c659089353432640a8df587dfeb5637` |
| 11 | `inductive` | [Wequiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/wequiv--297beff2f8f408baaf3a66fa.md) | 183 | `declaration-track:297beff2f8f408baaf3a66fa0ab37e76e5633ab2bc5045ad23b5c55745099e7d` |
| 12 | `theorem` | [recF_eq_of_Wequiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/recf-eq-of-wequiv--3ad345f369e399bfb880f334.md) | 192 | `result-track:3ad345f369e399bfb880f3341b30c4c30bf8f9594250655228fd4bfc0b4b26f2` |
| 13 | `theorem` | [Wequiv.abs'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/wequiv-abs--1a64bb50067260498f344881.md) | 202 | `result-track:1a64bb50067260498f34488198fc36ec86e7a8d75738bcc449a1d584c4e6a657` |
| 14 | `theorem` | [Wequiv.refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/wequiv-refl--bdfbd5dfc16ed5e25a0f5b85.md) | 210 | `result-track:bdfbd5dfc16ed5e25a0f5b8571a54e74e5c29d1b1da48eea47e54c39f4d3ffbf` |
| 15 | `theorem` | [Wequiv.symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/wequiv-symm--a4a0bf0fa24a1780d7def76c.md) | 216 | `result-track:a4a0bf0fa24a1780d7def76c942be87dcc0e6640040b3947c91a3631656996f8` |
| 16 | `def` | [Wrepr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/wrepr--19254ee0fdaa307bf110f14d.md) | 226 | `declaration-track:19254ee0fdaa307bf110f14d4167b93fb1f6b6103e729affef24d54653779d74` |
| 17 | `theorem` | [Wrepr_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/wrepr-equiv--f6bad0c7c4ad2297980c6e58.md) | 231 | `result-track:f6bad0c7c4ad2297980c6e5893029f204a5700a09833d18b39c03993fa7c1001` |
| 18 | `def` | [Wsetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/wsetoid--d148dbf43184214c944dc4d1.md) | 244 | `declaration-track:d148dbf43184214c944dc4d16c0d9468e732c24373dc0fad5d3da1cbf05a58cc` |
| 19 | `def` | [Fix](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix--f1af5d1d6ec9767c74115f37.md) | 253 | `declaration-track:f1af5d1d6ec9767c74115f370a9f8f933b3b619f06661d3e02ddd3f2feb0b5d6` |
| 20 | `def` | [Fix.rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-rec--1c819885c5356272e8047dd8.md) | 258 | `declaration-track:1c819885c5356272e8047dd8378bb70537ece2fea3f65751e27030609d924faa` |
| 21 | `def` | [fixToW](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fixtow--2188a67aded88f0f4742bbc1.md) | 263 | `declaration-track:2188a67aded88f0f4742bbc1d6c87e3ecf33d3031a18b31d8b7024e2322ca0c1` |
| 22 | `def` | [Fix.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-mk--02c6fe4634d3ede0d376d146.md) | 269 | `declaration-track:02c6fe4634d3ede0d376d146a11aed47a72e4e345008b05878a582af38ac5449` |
| 23 | `def` | [Fix.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-dest--668b93b76458953fba1fb08b.md) | 274 | `declaration-track:668b93b76458953fba1fb08bb44979789360aeffab8b2913a917eabc5f13f447` |
| 24 | `theorem` | [Fix.rec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-rec-eq--aa92318332f1e88c8196e879.md) | 278 | `result-track:aa92318332f1e88c8196e87933baba4d95f62342f731a25e41a7463b26f775c7` |
| 25 | `theorem` | [Fix.ind_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-ind-aux--3ae12f576f217fd029dca800.md) | 296 | `result-track:3ae12f576f217fd029dca8008afb1b5b56417c11ea52b78575698d88d9e2106f` |
| 26 | `theorem` | [Fix.ind_rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-ind-rec--bf49765ffc3c5f0ede6ef6d0.md) | 309 | `result-track:bf49765ffc3c5f0ede6ef6d0854cbf6e4415c5439b5000124bff8aa414fa9123` |
| 27 | `theorem` | [Fix.rec_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-rec-unique--1c9faf2e3626de9dd87eff7b.md) | 322 | `result-track:1c9faf2e3626de9dd87eff7b23fc0cf9b692680939a1dfa4aad64fc31e18c98e` |
| 28 | `theorem` | [Fix.mk_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-mk-dest--45e17dd5d2ce0de731e4951a.md) | 330 | `result-track:45e17dd5d2ce0de731e4951a043b40b0f6eb516c86fc9150bed133608b9929e7` |
| 29 | `theorem` | [Fix.dest_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-dest-mk--87903a01eed6434d7c11e057.md) | 339 | `result-track:87903a01eed6434d7c11e05772061abad200689a75c0fc6d8b03048d95db5bfd` |
| 30 | `theorem` | [Fix.ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/fix-ind--170951490fe7d82279cc4717.md) | 348 | `result-track:170951490fe7d82279cc4717642963a38892db0cc102ece36cc830c09511b213` |
| 31 | `def` | [corecF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/corecf--61ae0f30404eca25854be405.md) | 372 | `declaration-track:61ae0f30404eca25854be405f385f330e486f5d3e186ffb342c487ad7d32cfec` |
| 32 | `theorem` | [corecF_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/corecf-eq--ec197a1ee78886aae44749dc.md) | 377 | `result-track:ec197a1ee78886aae44749dc2a78fa1f10b09aca5f51ab1e85a2bf172e2684e4` |
| 33 | `def` | [IsPrecongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/isprecongr--70c2ea4fa5f54f24577427f7.md) | 384 | `declaration-track:70c2ea4fa5f54f24577427f75851283d8423c83ce4c37f338effa2d8c44253af` |
| 34 | `def` | [Mcongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/mcongr--e2eb9a5ec59e7b487d521a27.md) | 389 | `declaration-track:e2eb9a5ec59e7b487d521a273e0bd399086ed6f65f3fc520dcad6cfce4d55fee` |
| 35 | `def` | [Cofix](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix--3d4cddc96295df3fc0290548.md) | 394 | `declaration-track:3d4cddc96295df3fc02905481c56392ddc64787754502246b6ebf2e211613027` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/instance--73362dd5703400b6f3399768.md) | 398 | `declaration-track:73362dd5703400b6f339976828369ecaefceecc51b0dfa527b9eb36d4a2a37a4` |
| 37 | `def` | [Cofix.corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix-corec--121c2faa0b0f26f74345ebd8.md) | 402 | `declaration-track:121c2faa0b0f26f74345ebd85f954c9d1392e78574cf0744d61adafda78b68c2` |
| 38 | `def` | [Cofix.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix-dest--18c08f3626490169c258e090.md) | 407 | `declaration-track:18c08f3626490169c258e090396d59a820d171b31f2a2498ca0589692bff7318` |
| 39 | `theorem` | [Cofix.dest_corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix-dest-corec--c804bdd57f40ce2fb6bad19b.md) | 421 | `result-track:c804bdd57f40ce2fb6bad19b97e3eac97d159b340f2b4dc314e6fb365cf416f1` |
| 40 | `theorem` | [Cofix.bisim_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix-bisim-aux--17a83e66350d06b226d8af24.md) | 431 | `result-track:17a83e66350d06b226d8af24022c0f36b3c2baae30ae4f967957cb25806b727b` |
| 41 | `theorem` | [Cofix.bisim_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix-bisim-rel--4aa2b3ca1f558bc332d40eb4.md) | 467 | `result-track:4aa2b3ca1f558bc332d40eb47286295d8327104df4e280206479117ef3dd2cab` |
| 42 | `theorem` | [Cofix.bisim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix-bisim--62cef7d629146a4d036a87f9.md) | 487 | `result-track:62cef7d629146a4d036a87f929c31bd1abf528e52c221d470667435a7de69658` |
| 43 | `theorem` | [Cofix.bisim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/cofix-bisim--2785c8fda287fd8604ea3e44.md) | 498 | `result-track:2785c8fda287fd8604ea3e4496e551497b0d78b42f5bebcdcd2cf73cb7e8bdd8` |
| 44 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/comp--a5b21737530a498e77fc9c37.md) | 523 | `declaration-track:a5b21737530a498e77fc9c37206d92dab7f87aecd1bdf479d985c037c81c9e12` |
| 45 | `def` | [quotientQpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/quotientqpf--62cf0df861c03c3838816ac4.md) | 586 | `declaration-track:62cf0df861c03c3838816ac4b9487a51420023ad1ab1b7d1b65fc1cfd3bcaff6` |
| 46 | `theorem` | [mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/mem-supp--2ac7c4d9f8308d1827a01a92.md) | 608 | `result-track:2ac7c4d9f8308d1827a01a92fb74dbbfea76ddb261b19f3b98b460fa06fcf64d` |
| 47 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/supp-eq--0d3f483b54945f56c098b3a2.md) | 622 | `result-track:0d3f483b54945f56c098b3a22fc9bdd612f981e4ff0024acdf404440f0cbf319` |
| 48 | `theorem` | [has_good_supp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/has-good-supp-iff--2a53644c368091f888467535.md) | 628 | `result-track:2a53644c368091f888467535729af7034c334094cc2ecf21a9b41d2f6cb7289a` |
| 49 | `def` | [IsUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/isuniform--ee5b11179d84b4444e2f2b3e.md) | 656 | `declaration-track:ee5b11179d84b4444e2f2b3e64ef791308e24155e2f32d4efc642f806c541510` |
| 50 | `def` | [LiftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/liftppreservation--6e6820bfd9a4725c2f815912.md) | 662 | `declaration-track:6e6820bfd9a4725c2f815912cb2695bb209e3ec01cab922504b98e9918579ed0` |
| 51 | `def` | [SuppPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/supppreservation--3f48a6be29f69422828750b7.md) | 667 | `declaration-track:3f48a6be29f69422828750b7ad5567b7950548f04ae7899f8277eea246ac1f6c` |
| 52 | `theorem` | [supp_eq_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/supp-eq-of-isuniform--68aa84562d209d7d397783b3.md) | 671 | `result-track:68aa84562d209d7d397783b386670f3890a992786c2352ce0ade4e077b52ce8d` |
| 53 | `theorem` | [liftp_iff_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/liftp-iff-of-isuniform--3dea4370787b92a5aba925ca.md) | 680 | `result-track:3dea4370787b92a5aba925ca93e5752e6151a21631a0083b72e9c1d590eddf7a` |
| 54 | `theorem` | [supp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/supp-map--dfc8c563b2aa37502db977f4.md) | 695 | `result-track:dfc8c563b2aa37502db977f496b0094d64dfce989161430e9c58dacb2b5905c2` |
| 55 | `theorem` | [suppPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/supppreservation-iff-uniform--8bda9cf993fcc0765c5a72eb.md) | 701 | `result-track:8bda9cf993fcc0765c5a72ebd1ad7c23a373076a6d372806d995ce00dfc1edae` |
| 56 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/supppreservation-iff-liftppreservation--d5c8c17a9b42830897ebfca8.md) | 709 | `result-track:d5c8c17a9b42830897ebfca8bb1b875032d914361da084d28353576e38e54996` |
| 57 | `theorem` | [liftpPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean/declarations/liftppreservation-iff-uniform--5522ed170b89411deeeedd49.md) | 723 | `result-track:5522ed170b89411deeeedd499443f48ddbaa4e5b3f845b8ecbf1e8c8f08f7748` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
