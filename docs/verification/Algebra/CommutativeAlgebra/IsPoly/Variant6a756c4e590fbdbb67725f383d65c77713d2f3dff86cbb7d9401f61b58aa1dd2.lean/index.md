# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsPoly.Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06c3a48d961f5fe5edab2d399be3bfecd4087a42",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06c3a48d961f5fe5edab2d399be3bfecd4087a42`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Funext` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--044111a8f5f986ed4725cbb4.md) | 120 | `result-track:044111a8f5f986ed4725cbb41f55184cb2f04cd0c6ddb976d2ac9414516b0587` |
| 2 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--669f506c19f87c619a4fa323.md) | 130 | `result-track:669f506c19f87c619a4fa3238c79a7ccdadfa34a625774117b657580237f5571` |
| 3 | `class` | [IsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ispoly--5ed67bd6e3f897bc325ccd99.md) | 154 | `declaration-track:5ed67bd6e3f897bc325ccd99f540d99b820e7cb560b1fa47c465e47d8326b843` |
| 4 | `instance` | [idIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/idispoly--c9cae25c8fc4f4afe78a482e.md) | 160 | `declaration-track:c9cae25c8fc4f4afe78a482e2e128c4f0878fb2d6428e21aa67349e247dbe36e` |
| 5 | `instance` | [idIsPolyI'](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/idispolyi--c10e22260443e03a33cb105d.md) | 163 | `declaration-track:c10e22260443e03a33cb105d4ade6bf8144fd57d60e863fa7cb6e6193a380354` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/instance--f425e5a61d5a8d339dc88c6d.md) | 168 | `declaration-track:f425e5a61d5a8d339dc88c6d56bf79a6c9f2b908573ed260370fec133da57f44` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ext--2b976539939f5e04dbdca3c3.md) | 173 | `result-track:2b976539939f5e04dbdca3c301a14466d13f12e284a78bbfab97a1904131bcea` |
| 8 | `instance` | [comp](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/comp--eaaa83142f420bd60a70bb66.md) | 200 | `declaration-track:eaaa83142f420bd60a70bb66cd8f45f5c32728696238d63cad75d5b7624c4846` |
| 9 | `class` | [IsPoly₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ispoly--5dd883e081cf07ed78838062.md) | 221 | `declaration-track:5dd883e081cf07ed788380628e2bed428010def5d6ebf343dc2c9f869efeddb0` |
| 10 | `instance` | [IsPoly₂.comp](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ispoly-comp--2de046419e5df94dcb0cb3e4.md) | 230 | `declaration-track:2de046419e5df94dcb0cb3e4ac20fea22d523f9cb85881001435939ba5bd91f8` |
| 11 | `instance` | [IsPoly.comp₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ispoly-comp--6ac7b710b8f262b8b5ea0a97.md) | 248 | `declaration-track:6ac7b710b8f262b8b5ea0a974121a26fcdc658731fa116d368d89cd297376ba8` |
| 12 | `instance` | [IsPoly₂.diag](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ispoly-diag--09fd8211b2ee98eb972df156.md) | 258 | `declaration-track:09fd8211b2ee98eb972df15672e5d6d9658bd62425b9dec5d1efc83849f36db7` |
| 13 | `instance` | [negIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/negispoly--76932a878ec1d53b25c22aae.md) | 273 | `declaration-track:76932a878ec1d53b25c22aaea9868977cfd210a7dc36ba18e39d6bfe71032f33` |
| 14 | `instance` | [zeroIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/zeroispoly--08fe485f308601e953737035.md) | 285 | `declaration-track:08fe485f308601e95373703550374db4b414bc9a54158e3ad948e9bcf21d4f25` |
| 15 | `theorem` | [bind₁_zero_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/bind-zero-wittpolynomial--4cc9f12807df0ca3ec371545.md) | 289 | `result-track:4cc9f12807df0ca3ec371545056979d50077f4ac281d87f66c88b6b59bcdb933` |
| 16 | `def` | [onePoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/onepoly--f37ccc801bf8cc9c2ce48514.md) | 294 | `declaration-track:f37ccc801bf8cc9c2ce4851402d3975bb24b5dfd705abc01e9b2c51e21e450e1` |
| 17 | `theorem` | [bind₁_onePoly_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/bind-onepoly-wittpolynomial--35e72e819139cad9f145c552.md) | 298 | `result-track:35e72e819139cad9f145c552079502c7b6093ae83fe1fa611924081befe49ad4` |
| 18 | `instance` | [oneIsPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/oneispoly--3f51a5291501ac638e2960e7.md) | 309 | `declaration-track:3f51a5291501ac638e2960e7b32892ef794dd81d3c7ae4c3f01f05e1ea6d220c` |
| 19 | `instance` | [addIsPoly₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/addispoly--21ebdb52fd4a8fa8d433b6ed.md) | 321 | `declaration-track:21ebdb52fd4a8fa8d433b6ed164e7c39bfa8618e0a749b1daac7c9591a6003ae` |
| 20 | `instance` | [mulIsPoly₂](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/mulispoly--5f725da9a43de98ee4ee918c.md) | 326 | `declaration-track:5f725da9a43de98ee4ee918cd271613de251cc4ac4262a23d8083b7fc13363c1` |
| 21 | `theorem` | [IsPoly.map](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ispoly-map--7001dc097ec6b95d18be47ff.md) | 330 | `result-track:7001dc097ec6b95d18be47ff7135a59c66909f19fdc0d0068da2c98bf4fe0c1f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/instance--253d8f3ade776293cf97ab48.md) | 343 | `declaration-track:253d8f3ade776293cf97ab48708bc19f53a838ad024e62d7749f3655bbc64257` |
| 23 | `theorem` | [ext](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/ext--4672f8784da8fff2f67ada08.md) | 346 | `result-track:4672f8784da8fff2f67ada0800381595b3366e14c73997879f604fe60afed996` |
| 24 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/map--65ce4bdd4dd715898fc1ff4b.md) | 373 | `result-track:65ce4bdd4dd715898fc1ff4bae27bc30dbd97cf651d47079f2339cb583acd0bf` |
| 25 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/syntax--a167e4340f1eb77b932d376c.md) | 398 | `declaration-track:a167e4340f1eb77b932d376c6a510ffb92941c25e8222691534079a285791c61` |
| 26 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/macro-rules--b2ec0c76397b16e94d0f6f3d.md) | 400 | `declaration-track:b2ec0c76397b16e94d0f6f3dcf5a27c5bdbe1688afc98435d09e52f10e22b09d` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/syntax--351cee07213ac94b311b10c0.md) | 430 | `declaration-track:351cee07213ac94b311b10c07ef703a46403c4a8e49ee2b84191ef47da36d0d8` |
| 28 | `def` | [runIntro](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/runintro--9d6aaaefaebf23d38762d058.md) | 432 | `declaration-track:9d6aaaefaebf23d38762d05836c763ed486a2c81ec66a0d58c49969006a2757d` |
| 29 | `def` | [getLocalOrIntro](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/getlocalorintro--0edc981803a1dcb8441716fb.md) | 440 | `declaration-track:0edc981803a1dcb8441716fb9f58a43f6443c20abd228559690fa3b6672f015c` |
| 30 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean/declarations/elab-rules--dae5b53dddaea79e89d30ce0.md) | 446 | `declaration-track:dae5b53dddaea79e89d30ce09cf7b39838ff4b887f25320328c2e39c0b5c00fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
