# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "606e7a0a19a5cee7b7ad70d0bd02a5b7b4ced60b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `606e7a0a19a5cee7b7ad70d0bd02a5b7b4ced60b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLeftDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/isleftderivedfunctor--d5c223ae930cef264e22429f.md) | 48 | `declaration-track:d5c223ae930cef264e22429f9fe6ec814450566590e5ce7291dde7dac1711e8e` |
| 2 | `lemma` | [isLeftDerivedFunctor_iff_isRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/isleftderivedfunctor-iff-isrightkanextension--1d9593fc36a5ad19641d9ea3.md) | 52 | `result-track:1d9593fc36a5ad19641d9ea369cd969cbbc9ef1a105e94562c0cc711b5de0e55` |
| 3 | `lemma` | [isLeftDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/isleftderivedfunctor-iff-of-iso--633e1d304790c4ee90fc74df.md) | 59 | `result-track:633e1d304790c4ee90fc74df391d8d7cfa442669fc7e0fb032d33c5eac3b677d` |
| 4 | `def` | [leftDerivedLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivedlift--31eef33f522c43cfb7040819.md) | 70 | `declaration-track:31eef33f522c43cfb70408195586cc5ca94ceea5c1577ffb3043712aec8e7833` |
| 5 | `lemma` | [leftDerived_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderived-fac--5eb47621dde4f432cbd7fe57.md) | 75 | `result-track:5eb47621dde4f432cbd7fe57ddbf43ed2512477da3b173cad3d4946958491ae1` |
| 6 | `lemma` | [leftDerived_fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderived-fac-app--5bd997d2550494d714c1b3d0.md) | 81 | `result-track:5bd997d2550494d714c1b3d06aed94ef17c60349e9abafc5c3378588b201c714` |
| 7 | `lemma` | [leftDerived_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderived-ext--912a3e073b3d3a2835759867.md) | 87 | `result-track:912a3e073b3d3a28357598676c802328e3f8fa58c17a1799432d624ecff912db` |
| 8 | `def` | [leftDerivedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivednattrans--c74747cef1e43ffd540b4158.md) | 94 | `declaration-track:c74747cef1e43ffd540b4158554cb162ea6097e7cd3548b636afb673e37ab598` |
| 9 | `lemma` | [leftDerivedNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivednattrans-fac--996144e56af4432e7720301d.md) | 98 | `result-track:996144e56af4432e7720301d79ce4ccd4e9ff89fb2623f2fb30900fd6671a7a7` |
| 10 | `lemma` | [leftDerivedNatTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivednattrans-app--d062d2853ce79fe6dee17eed.md) | 104 | `result-track:d062d2853ce79fe6dee17eede7fcc7af02d1d2b2ea6d9b58b440dcbf5f12bd8d` |
| 11 | `lemma` | [leftDerivedNatTrans_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivednattrans-id--2205f899a3bb53adb9f63e4c.md) | 111 | `result-track:2205f899a3bb53adb9f63e4c0e8f9072cf1a74ba9ae6c9db5e639fcf23433b00` |
| 12 | `lemma` | [leftDerivedNatTrans_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivednattrans-comp--2da97fd4cb1fb41d11ca17f4.md) | 118 | `result-track:2da97fd4cb1fb41d11ca17f4e3c65e3f8cae668d303a50cc285182dcc8cab2e8` |
| 13 | `def` | [leftDerivedNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivednatiso--97087a78fda664260766b2c8.md) | 126 | `declaration-track:97087a78fda664260766b2c80294f64eddf0d9218a1d3a14b15564b59c284391` |
| 14 | `abbrev` | [leftDerivedUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/leftderivedunique--e1d6a27e84640799bb291b75.md) | 132 | `declaration-track:e1d6a27e84640799bb291b7529b9072da3a0a1392db782d336cbd082d7ec2a44` |
| 15 | `lemma` | [isLeftDerivedFunctor_iff_isIso_leftDerivedLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/isleftderivedfunctor-iff-isiso-leftderivedlift--08e5de6273b91535ce5b1610.md) | 135 | `result-track:08e5de6273b91535ce5b161035efa4cad481b5acdbe214286ed072567f8d02fc` |
| 16 | `class` | [HasLeftDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/hasleftderivedfunctor--d583585b2db113828c4ab27d.md) | 149 | `declaration-track:d583585b2db113828c4ab27d5422b4c9770f39909f4a60af9f1419e92ff8ab59` |
| 17 | `lemma` | [hasLeftDerivedFunctor_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/hasleftderivedfunctor-iff--4d7f932869b3b88af069994b.md) | 155 | `result-track:4d7f932869b3b88af069994be0cd98fed6f7827f51bfbb6c7ad902ddc97973ed` |
| 18 | `lemma` | [hasLeftDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/hasleftderivedfunctor-iff-of-iso--661b45f5ae3e00b4ac018cb4.md) | 164 | `result-track:661b45f5ae3e00b4ac018cb40a384bc1dfe617e35dde61649df0591c86ea628b` |
| 19 | `lemma` | [HasLeftDerivedFunctor.hasRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/hasleftderivedfunctor-hasrightkanextension--e989ab3c21250c35d50f8efe.md) | 171 | `result-track:e989ab3c21250c35d50f8efe584084ab7cb34b698d3d9b2f3a888831e83c3ae3` |
| 20 | `lemma` | [HasLeftDerivedFunctor.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/hasleftderivedfunctor-mk--6197800f42090ab8ab72140a.md) | 177 | `result-track:6197800f42090ab8ab72140ae2fc367e2cea1565369c747c55f24f538c558fdf` |
| 21 | `def` | [totalLeftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/totalleftderived--091625034ff976a3c9a2de08.md) | 189 | `declaration-track:091625034ff976a3c9a2de08b4919e8368c8781fb5a7e595a31a19248640cee7` |
| 22 | `def` | [totalLeftDerivedCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/totalleftderivedcounit--5944e746a70f4594a5fcdb3f.md) | 194 | `declaration-track:5944e746a70f4594a5fcdb3f01fe0ff210543abc0a8df3b56b260223e43100e1` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant0df060a7fbaf14afee7084405acd8eb48962e0de5b2bd65a0055d5f54f7a0c64.lean/declarations/instance--610db8eb583a81b3fb4a9cdf.md) | 198 | `declaration-track:610db8eb583a81b3fb4a9cdfbe8b6b0619cbf9bbdeeb74a050b8fcc59a3ccb31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
