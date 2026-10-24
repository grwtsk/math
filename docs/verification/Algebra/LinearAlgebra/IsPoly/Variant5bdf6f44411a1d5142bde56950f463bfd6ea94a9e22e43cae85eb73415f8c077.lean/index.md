# Verification target: GRWTSK.Algebra.LinearAlgebra.IsPoly.Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "861666bb075611901c98f5895c33d0dd1b5f2138",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `861666bb075611901c98f5895c33d0dd1b5f2138`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Funext` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq'](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--7353831a552e79b22e955c4f.md) | 122 | `result-track:7353831a552e79b22e955c4f91bf95ddecd088e322b09f5ab2c48117367ecf73` |
| 2 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--1110672375eb72cba952d7ee.md) | 133 | `result-track:1110672375eb72cba952d7eee5c43feba3a253fab5796abab74aea5e0ae14622` |
| 3 | `class` | [IsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ispoly--5317ae77c5593f62183e8e85.md) | 158 | `declaration-track:5317ae77c5593f62183e8e85f11e60c0075a2672d07fa4b5c8791b8b81d64890` |
| 4 | `instance` | [idIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/idispoly--6a330523a00d0c073f3a8985.md) | 165 | `declaration-track:6a330523a00d0c073f3a8985fd9cf6b52edc1c4acbc0c6b86d666355e2a94ef6` |
| 5 | `instance` | [idIsPolyI'](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/idispolyi--04143ffa7c2c6399c662b2c6.md) | 169 | `declaration-track:04143ffa7c2c6399c662b2c6787bdd9eb4e328bdc236b57fd0e42d0d2b6f002e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/instance--87428cb6ad7dacf82396755a.md) | 175 | `declaration-track:87428cb6ad7dacf82396755a84d30d0bdba7d8fab671c7c5ca8022235aec5b99` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ext--66374e9842d0c5efe7d7d032.md) | 180 | `result-track:66374e9842d0c5efe7d7d032f6fe9fe41487f086870ad67e14b569a6121d16ae` |
| 8 | `instance` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/comp--0c2ac9584b95e94df0bc3a75.md) | 209 | `declaration-track:0c2ac9584b95e94df0bc3a7502bc17f0317f8ae277da61efaa24cb29f186ffaa` |
| 9 | `class` | [IsPoly₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ispoly--1eda38e4ee971d77bc6d0d61.md) | 231 | `declaration-track:1eda38e4ee971d77bc6d0d617b583ba88e81ca2f92c7b87002e343c996537391` |
| 10 | `instance` | [IsPoly₂.comp](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ispoly-comp--5f1c8897c72c8ee650529e70.md) | 241 | `declaration-track:5f1c8897c72c8ee650529e701d767315044d2c2fd1c98b6c523cfed8ba73131a` |
| 11 | `instance` | [IsPoly.comp₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ispoly-comp--0f2010136e295125a6d576b6.md) | 267 | `declaration-track:0f2010136e295125a6d576b6508fa26cdaba5e951247a32e76d636abb213904a` |
| 12 | `instance` | [IsPoly₂.diag](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ispoly-diag--13370320876550f72b4a9880.md) | 278 | `declaration-track:13370320876550f72b4a9880bbdaac66da0301ecba7d7589929adcf8f9984f02` |
| 13 | `instance` | [negIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/negispoly--7f2ff798ca8cdea51d453c93.md) | 299 | `declaration-track:7f2ff798ca8cdea51d453c9322a553dfd38d2de8bcb8b4a233ffebb200ca77bd` |
| 14 | `instance` | [zeroIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/zeroispoly--c2bbe31bfa3984012e315fcf.md) | 312 | `declaration-track:c2bbe31bfa3984012e315fcf05456c63bd2aa92bbbecc38be0931ef8c8927caa` |
| 15 | `theorem` | [bind₁_zero_wittPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/bind-zero-wittpolynomial--372a06e92e3105b58aa7720c.md) | 317 | `result-track:372a06e92e3105b58aa7720c3f95b7d8bc4b690bdcd8df3ac5e96d5898da31da` |
| 16 | `def` | [onePoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/onepoly--3dffc0a0216e58c7a1769060.md) | 323 | `declaration-track:3dffc0a0216e58c7a176906033c081e2f5389bd1fac34767c41813bf8f26638a` |
| 17 | `theorem` | [bind₁_onePoly_wittPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/bind-onepoly-wittpolynomial--fc4f4c797f14cc73e6074fc8.md) | 328 | `result-track:fc4f4c797f14cc73e6074fc8291ac9dd8db29c8b6eabcf3e58b137327f322aad` |
| 18 | `instance` | [oneIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/oneispoly--5b874da1f33a299752084896.md) | 344 | `declaration-track:5b874da1f33a299752084896bbad446eb08625a613b2ee921087ad97306265c1` |
| 19 | `instance` | [addIsPoly₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/addispoly--5fd342c4819b94dd00d806dc.md) | 359 | `declaration-track:5fd342c4819b94dd00d806dc99cb462007878688994366c1a26a4a6b6859e96a` |
| 20 | `instance` | [mulIsPoly₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/mulispoly--a904ae0aee7f3f4ada8552e7.md) | 367 | `declaration-track:a904ae0aee7f3f4ada8552e75e26afef9ce23d9b59d725db9e34ef79ad9d58f3` |
| 21 | `theorem` | [IsPoly.map](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ispoly-map--4e6d6606135ec3961afec1ef.md) | 374 | `result-track:4e6d6606135ec3961afec1efaf2731007a9651eb6e0d23673676b0c19ada2045` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/instance--6484bcc26fdf3f93d349cf31.md) | 390 | `declaration-track:6484bcc26fdf3f93d349cf31993571e91f7af14a067ccd6833c73089026b5205` |
| 23 | `theorem` | [compLeft](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/compleft--2ef883805198168321a50d5d.md) | 396 | `result-track:2ef883805198168321a50d5d896ff224be628a12282669a045a74c613831a08f` |
| 24 | `theorem` | [compRight](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/compright--89747f867888dcace90561b4.md) | 404 | `result-track:89747f867888dcace90561b47755fbf85e79fa91bd7e02999ce80ee52df25697` |
| 25 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/ext--f18013ada5d9e3f5c7ca9350.md) | 409 | `result-track:f18013ada5d9e3f5c7ca93509da56753005d283820c3440a0c83a31283749b6b` |
| 26 | `theorem` | [map](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/map--e43f35e92ac6017404c3aad5.md) | 439 | `result-track:e43f35e92ac6017404c3aad56fa7a3ec3512e04cfcc6798d8957ef749ebe5aa3` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/syntax--11dde3c8f65f4fe9589e1447.md) | 470 | `declaration-track:11dde3c8f65f4fe9589e14475730f997ac21fc4d680af90fbe12257595f5ff39` |
| 28 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/macro-rules--23ca75fa1aaa1d135e6966bd.md) | 472 | `declaration-track:23ca75fa1aaa1d135e6966bda62d04faeb17dc0d446c4bc26e4b338bbbcbe575` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/syntax--464efb472d93a3b91928b69f.md) | 502 | `declaration-track:464efb472d93a3b91928b69f8e391317f2eb7794188635ac2d6341da320885a9` |
| 30 | `def` | [runIntro](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/runintro--d8e053707c4b5960dcbceb9e.md) | 504 | `declaration-track:d8e053707c4b5960dcbceb9ef487c420698432105600b87597adaa687e6176dc` |
| 31 | `def` | [getLocalOrIntro](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/getlocalorintro--be018cd210578a5b04f019c1.md) | 512 | `declaration-track:be018cd210578a5b04f019c19bef53b7a1841f1f4dfd2df186a31715572e4114` |
| 32 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant5bdf6f44411a1d5142bde56950f463bfd6ea94a9e22e43cae85eb73415f8c077.lean/declarations/elab-rules--6c1843e9bbf422bbaaee9f83.md) | 518 | `declaration-track:6c1843e9bbf422bbaaee9f8359b30f05fd0fb1315a1400e37ade4215befe6cde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
