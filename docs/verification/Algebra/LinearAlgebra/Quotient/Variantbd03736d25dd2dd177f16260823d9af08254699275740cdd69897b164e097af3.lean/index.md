# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72eae8a98c8693074c0dfe8bfc847148cf09b722",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72eae8a98c8693074c0dfe8bfc847148cf09b722`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_aux](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-aux--0cfc719a8f0d8062819f75bc.md) | 118 | `result-track:0cfc719a8f0d8062819f75bcef45c625ef4b6674c1329fa67f817a13199bff07` |
| 2 | `def` | [groupSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/groupseminorm--d17798edc68e93d2efc5ce7d.md) | 125 | `declaration-track:d17798edc68e93d2efc5ce7d7712f75bd292ad8a028c773c079ac0b4de2406e2` |
| 3 | `instance` | [instNorm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/instnorm--c06ec3d2d91d41016d5a2ec5.md) | 145 | `declaration-track:c06ec3d2d91d41016d5a2ec58010b7a5fe943daee6c4f337ea8146cb06114a66` |
| 4 | `lemma` | [norm_eq_groupSeminorm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-eq-groupseminorm--03948bacff1ab488e72bef32.md) | 148 | `result-track:03948bacff1ab488e72bef3293d70744d76b00885502873c63f1b256b2e5d36c` |
| 5 | `lemma` | [norm_eq_infDist](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-eq-infdist--f4d23e10e02c3db97f3579c8.md) | 151 | `result-track:f4d23e10e02c3db97f3579c8cb871072939763e5ae7e022436156cfd7b48db23` |
| 6 | `lemma` | [le_norm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/le-norm-iff--909a24c881909b1642774c0f.md) | 154 | `result-track:909a24c881909b1642774c0f45f805eac55b0609c7db8cda352b9006069879e7` |
| 7 | `lemma` | [norm_lt_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-lt-iff--3dc07e4a9414c750daa102a8.md) | 158 | `result-track:3dc07e4a9414c750daa102a88e696a8619f8268bd6773f9f96c2247ef9cc7a6d` |
| 8 | `lemma` | [nhds_one_hasBasis](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/nhds-one-hasbasis--ed14a2fec90130ce89a3d24c.md) | 162 | `result-track:ed14a2fec90130ce89a3d24cd28c0628d2be9fb4d4f51344bffaf7bfac66bb83` |
| 9 | `lemma` | [norm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-mk--5be883314bb2f72c9aaaa994.md) | 175 | `result-track:5be883314bb2f72c9aaaa9944205041a9d9b2e97c4d6bfbbe9fa05eb7a4bb288` |
| 10 | `lemma` | [norm_mk_le_norm](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-mk-le-norm--08cd76e5383a32738848f2c3.md) | 183 | `result-track:08cd76e5383a32738848f2c3ae6584d5fc4e81dfc6795a85532463a63ffeea60` |
| 11 | `lemma` | [norm_mk_eq_zero_iff_mem_closure](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-mk-eq-zero-iff-mem-closure--357e92991054b984c06ec6e0.md) | 190 | `result-track:357e92991054b984c06ec6e0b164f68e65f4d3880e3a8774be79bf00a8f78d42` |
| 12 | `lemma` | [norm_mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-mk-eq-zero--1f0d9944faff6e9c5cb10d92.md) | 198 | `result-track:1f0d9944faff6e9c5cb10d9261163caae108935ff5714cfe02d105162d7a5584` |
| 13 | `lemma` | [exists_norm_mk_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/exists-norm-mk-lt--99fa1b518d0b786320dc6351.md) | 205 | `result-track:99fa1b518d0b786320dc635120fba93c593f678f9c1de884e2f5f0acaa7ae24d` |
| 14 | `lemma` | [exists_norm_mul_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/exists-norm-mul-lt--91fd386f7d2029affcbde0ad.md) | 211 | `result-track:91fd386f7d2029affcbde0adce351523015fd88fb344cc55940a97a294505724` |
| 15 | `instance` | [instSeminormedCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/instseminormedcommgroup--99aa52e572987afafe014b2e.md) | 219 | `declaration-track:99aa52e572987afafe014b2e27dc652f9107e1045658555ecbfc16aec33e3b95` |
| 16 | `instance` | [instNormedCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/instnormedcommgroup--1e7fcae0355ae0af26ea1e79.md) | 229 | `declaration-track:1e7fcae0355ae0af26ea1e7966d571802ad4e4972b94d1ad5d07f64d6ae50210` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/example--e7d13a07c56928b7b24f158b.md) | 235 | `declaration-track:e7d13a07c56928b7b24f158b235e7b6bef13a8f1be772e7c427940c31c9c5673` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/example--a5397f895364ef8cf3c542ca.md) | 239 | `declaration-track:a5397f895364ef8cf3c542ca8df29bf3dd66a72729bca5bc6ae25b5c0c3badfb` |
| 19 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsQuotient.Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.Subgroup.quotientIsometryEquivOfEq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/root-grwtsk-algebra-linearalgebra-isquotient-variant8ef997e842b043b9d19b--91905bf92899817e6ea1b134.md) | 244 | `declaration-track:91905bf92899817e6ea1b1348087025c53e72ff755a15f2f003baaf48d517daa` |
| 20 | `def` | [quotientBotIsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/quotientbotisometryequiv--ae0ee1b698ce9dd66e4f2865.md) | 250 | `declaration-track:ae0ee1b698ce9dd66e4f28657650a95280e00605af3e7b260ca2673db0b23843` |
| 21 | `def` | [quotientQuotientIsometryEquivQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/quotientquotientisometryequivquotient--c34209abc15fe08c300b3d09.md) | 260 | `declaration-track:c34209abc15fe08c300b3d0919362ba4e9e6a0e94fbe631f7ecdea082e47b203` |
| 22 | `theorem` | [quotient_norm_mk_eq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/quotient-norm-mk-eq--5d8d2f0d8e20ad890a69d364.md) | 277 | `result-track:5d8d2f0d8e20ad890a69d364c1d3b527f249c7fc1e61d724a16a021f42055079` |
| 23 | `theorem` | [quotient_norm_add_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/quotient-norm-add-le--709a390f56b62ad003bb09ad.md) | 284 | `result-track:709a390f56b62ad003bb09ad0e67c39c8dbc27b884bd7c45965f4c9d8905f281` |
| 24 | `def` | [normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/normedmk--aa07b64a392ff6d554ca5de2.md) | 292 | `declaration-track:aa07b64a392ff6d554ca5de209e62aa4c6f8b748e6b71d01aed66536f7dea218` |
| 25 | `theorem` | [normedMk.apply](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/normedmk-apply--a011edc1feaa0db59e5b1fb9.md) | 298 | `result-track:a011edc1feaa0db59e5b1fb9e89b3bd56189c35a0d5ecb2e7196742d3731a362` |
| 26 | `theorem` | [surjective_normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/surjective-normedmk--c2da111dc1c0c4223c523b47.md) | 302 | `result-track:c2da111dc1c0c4223c523b47857f05bd343119e3d5cd608bd6ccbc64cce16cc5` |
| 27 | `theorem` | [ker_normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/ker-normedmk--0c0c9f6da4defd6e0ee87dc6.md) | 306 | `result-track:0c0c9f6da4defd6e0ee87dc6bde31624ad735e37ea0ed79d9c724e7a38644c0d` |
| 28 | `theorem` | [norm_normedMk_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-normedmk-le--6ac3e1c43fcc4e74dcb937cd.md) | 310 | `result-track:6ac3e1c43fcc4e74dcb937cd50a9e1a16ef2696529dde3b3c8a9046aa4ed96ad` |
| 29 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsQuotient.Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.QuotientAddGroup.norm_lift_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/root-grwtsk-algebra-linearalgebra-isquotient-variant8ef997e842b043b9d19b--e82b95c79b564fbb65fa9ef4.md) | 314 | `result-track:e82b95c79b564fbb65fa9ef40cae8720a09b273ee55b22e478fe4db32e7ee948` |
| 30 | `theorem` | [norm_normedMk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-normedmk--88ddde091fd129c2745b4324.md) | 326 | `result-track:88ddde091fd129c2745b43244a3e33cc9cd7ef102a971c39fc597f9254c6e464` |
| 31 | `theorem` | [norm_trivial_quotient_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-trivial-quotient-mk--c8c1f2c3dbca3cdac17bc022.md) | 336 | `result-track:c8c1f2c3dbca3cdac17bc02255455bdc0e52f2a882d69ba6e529253c8fea4720` |
| 32 | `structure` | [IsQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/isquotient--dbba5f6e2358d3a399790378.md) | 351 | `declaration-track:dbba5f6e2358d3a399790378cd052b4f494391bf843908c925c3bdee4ace0158` |
| 33 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/lift--241388f7d113914cff8c62b4.md) | 357 | `declaration-track:241388f7d113914cff8c62b448d97c478edcd9075209c224256b69dbb7d6bfa5` |
| 34 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/lift-mk--602b46eef551aa8aa55013cf.md) | 362 | `result-track:602b46eef551aa8aa55013cf204df4f4e5a1164b6b726965d2aa78fc0acb2fab` |
| 35 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/lift-unique--a7d9c646f4cca341f5e7e0ba.md) | 367 | `result-track:a7d9c646f4cca341f5e7e0baaf63d68527b8fefc63e53e8058239f0b351ab0d0` |
| 36 | `theorem` | [isQuotientQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/isquotientquotient--77ce9fa0baf5d4d38499e28d.md) | 377 | `result-track:77ce9fa0baf5d4d38499e28d76c1bc1f7722e7c0398c60745a6cb5810c1b085d` |
| 37 | `theorem` | [IsQuotient.norm_lift](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/isquotient-norm-lift--b9da2ffd7174b1f6c06a8dbf.md) | 380 | `result-track:b9da2ffd7174b1f6c06a8dbf682f81b1f144402dcbc5af004bb2c511b8041d8e` |
| 38 | `theorem` | [IsQuotient.norm_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/isquotient-norm-le--5713cc263a394272c693a1de.md) | 391 | `result-track:5713cc263a394272c693a1def628dd898b1990666d0f013ef59e56dfcbaeb263` |
| 39 | `theorem` | [norm_lift_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/norm-lift-le--c2004f7667f78123ea92e471.md) | 400 | `result-track:c2004f7667f78123ea92e4711c2907ba6fb272e7d3e25dcfb8fb4c3dfb8f34f4` |
| 40 | `theorem` | [lift_norm_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/lift-norm-le--4d5935a0e949fbcaafe9deea.md) | 406 | `result-track:4d5935a0e949fbcaafe9deea36bf584cc6fb9ae73718cad944fb9afdba60d2dd` |
| 41 | `theorem` | [lift_normNoninc](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/lift-normnoninc--7f647f73378de77b1b87d147.md) | 411 | `result-track:7f647f73378de77b1b87d147acc518dfb53bb359e73ed5e4c7b59f63070eefdc` |
| 42 | `instance` | [Submodule.Quotient.seminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotient-seminormedaddcommgroup--03397e3f2e20f0613c0380f9.md) | 437 | `declaration-track:03397e3f2e20f0613c0380f948263fbcf5ba3617dfd2297789ae76f2e4455d7c` |
| 43 | `instance` | [Submodule.Quotient.normedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotient-normedaddcommgroup--8721e587eee0a9d0af8051c4.md) | 440 | `declaration-track:8721e587eee0a9d0af8051c48c079b768b4d2721d1fba9d3485361230b00d388` |
| 44 | `instance` | [Submodule.Quotient.completeSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotient-completespace--085c42fca158f0e8d0b8fe3c.md) | 444 | `declaration-track:085c42fca158f0e8d0b8fe3cd23aaff8a939f1a15794b6c5c585d02dfc08eb11` |
| 45 | `theorem` | [Submodule.Quotient.norm_mk_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotient-norm-mk-lt--5b184bf1cb8f2855d9ed3d91.md) | 449 | `result-track:5b184bf1cb8f2855d9ed3d91368027602e8a062ff3ccd62381f861d80695bcc5` |
| 46 | `theorem` | [Submodule.Quotient.norm_mk_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotient-norm-mk-le--f50a02432c359873e09ae6b9.md) | 453 | `result-track:f50a02432c359873e09ae6b948609e90c37088746d4ea46909cc293120cbde4c` |
| 47 | `instance` | [Submodule.Quotient.instIsBoundedSMul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotient-instisboundedsmul--d2eb2c32e2a3fb2426c2daf9.md) | 456 | `declaration-track:d2eb2c32e2a3fb2426c2daf95eab785f4628291da1b48720bc0a47cc58ca2199` |
| 48 | `instance` | [Submodule.Quotient.normedSpace](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotient-normedspace--ec6d9806a757ce44093fac42.md) | 473 | `declaration-track:ec6d9806a757ce44093fac42d05becf71478aa2aada1bffcfcc8c2e96c344f7b` |
| 49 | `def` | [Submodule.quotLIEOfEq](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotlieofeq--9f600050bd293c068a17c989.md) | 478 | `declaration-track:9f600050bd293c068a17c989145864f35aa939301296f9cc71a58239e753a63c` |
| 50 | `def` | [Submodule.quotientQuotientLIEQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotientquotientliequotient--d1e1eb2c30cefb97fe57dd6b.md) | 483 | `declaration-track:d1e1eb2c30cefb97fe57dd6bc40a1cb21266300756740b40d1c0fe46911961bc` |
| 51 | `def` | [Submodule.quotientQuotientLIEQuotientSup](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/submodule-quotientquotientliequotientsup--5a151a5ece59bd3fed1f9ea3.md) | 491 | `declaration-track:5a151a5ece59bd3fed1f9ea34cbe42edb90bcb2670b0b049158cf60260ea6664` |
| 52 | `theorem` | [Ideal.Quotient.norm_mk_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/ideal-quotient-norm-mk-lt--937623a0068143ad45defd55.md) | 500 | `result-track:937623a0068143ad45defd552abe91f01880ba98983c861949a7a90f547423d9` |
| 53 | `theorem` | [Ideal.Quotient.norm_mk_le](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/ideal-quotient-norm-mk-le--97f084ec8da8a1399bc8b9c3.md) | 504 | `result-track:97f084ec8da8a1399bc8b9c3d4218b12c5a04e207159b16f99f617aeafe3807c` |
| 54 | `instance` | [Ideal.Quotient.semiNormedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/ideal-quotient-seminormedcommring--a1f5c97683db149c60dfb2bd.md) | 506 | `declaration-track:a1f5c97683db149c60dfb2bd16b86a745ffa4c0781c6056c972bf057a89a2467` |
| 55 | `instance` | [Ideal.Quotient.normedCommRing](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/ideal-quotient-normedcommring--0ecdaae706e13f0daca998c3.md) | 523 | `declaration-track:0ecdaae706e13f0daca998c35df57be28c6997c892919ec5d634d03913e539cb` |
| 56 | `instance` | [Ideal.Quotient.normedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variantbd03736d25dd2dd177f16260823d9af08254699275740cdd69897b164e097af3.lean/declarations/ideal-quotient-normedalgebra--1e66798ce8dfc1345c400296.md) | 528 | `declaration-track:1e66798ce8dfc1345c400296851ecdefea7ae760cfab2e34556cb279aa021c3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
