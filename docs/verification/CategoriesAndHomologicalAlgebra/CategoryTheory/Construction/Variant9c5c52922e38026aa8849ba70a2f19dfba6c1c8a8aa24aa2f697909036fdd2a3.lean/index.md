# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Construction.Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f7e0457b1021ece29c7bdd2b8108157820d4e3d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f7e0457b1021ece29c7bdd2b8108157820d4e3d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.IsInvertedBy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Quiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocQuiver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/locquiver--c8936f378412f83174adc15d.md) | 56 | `declaration-track:c8936f378412f83174adc15dcea2ace9f927f3a5191f54995e20da22ad76ec50` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/instance--96c0ff3991adfda0999cf2b7.md) | 60 | `declaration-track:96c0ff3991adfda0999cf2b7387d075d80c279572b322496f2d59aeca16c3d1f` |
| 3 | `def` | [ιPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/paths--7e87b81ba5b3fc819061aa1a.md) | 64 | `declaration-track:7e87b81ba5b3fc819061aa1aa750d6eb7750ded7877c26a69b362aef3a05636b` |
| 4 | `def` | [ψ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/anonymous--d3d5b7f8783e790d667b02ed.md) | 69 | `declaration-track:d3d5b7f8783e790d667b02ed42599e080ab1bb96b6fed1ec95c15e4df575c1a3` |
| 5 | `def` | [ψ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/anonymous--c285b1e7885c698d989d8f2a.md) | 73 | `declaration-track:c285b1e7885c698d989d8f2aebea2aaa356b66b150225c1c7f1bd2006656e49f` |
| 6 | `inductive` | [relations](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/relations--ff6620b079ba06e8c3bbf208.md) | 77 | `declaration-track:ff6620b079ba06e8c3bbf208631274021fc18c37837f56e6e250fbb2080686bc` |
| 7 | `def` | [Localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/localization--b10c9090cc63c6fd5b1264cd.md) | 93 | `declaration-track:b10c9090cc63c6fd5b1264cd77df53de62f8e438ecdc050eb97199f94fdb601e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/instance--b8e99c6ccea9e92401308937.md) | 96 | `declaration-track:b8e99c6ccea9e924013089373d467d1d2e9adbb2e32db7e348572316d1b51f5d` |
| 9 | `def` | [Q](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/q--7831cfd5039ac0ef5f1a2c6e.md) | 101 | `declaration-track:7831cfd5039ac0ef5f1a2c6e458ad952ae4ca83f4ab07abe903f05be5859d769` |
| 10 | `def` | [wIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/wiso--88b9d3c2f02f614cc538bcd4.md) | 115 | `declaration-track:88b9d3c2f02f614cc538bcd480fff67cae30193c313f56caea79c0a480da6528` |
| 11 | `abbrev` | [wInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/winv--0df02709e5402e2dd3ad3d4b.md) | 122 | `declaration-track:0df02709e5402e2dd3ad3d4b4f45ff82cde9f24f33f7c6e502fdd3c0fb3be0ff` |
| 12 | `theorem` | [_root_.CategoryTheory.MorphismProperty.Q_inverts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/root-categorytheory-morphismproperty-q-inverts--3a0a09427e12e90ad1c4b34c.md) | 126 | `result-track:3a0a09427e12e90ad1c4b34c9ff05ab6a6efbc95d87a62a50a909f87037529dc` |
| 13 | `def` | [liftToPathCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/lifttopathcategory--84f5204e88f68dfd97b09a9d.md) | 133 | `declaration-track:84f5204e88f68dfd97b09a9d653b070192add6905006ef62515b37a6bbdddc3a` |
| 14 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/lift--0a7899b3ad878474c5bbf30e.md) | 145 | `declaration-track:0a7899b3ad878474c5bbf30e009308e675d9644e5bfb0da00c15fdcbf104c5d1` |
| 15 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/fac--5bbb9b5ff1ec78d65f3bd133.md) | 160 | `result-track:5bbb9b5ff1ec78d65f3bd1330183e9c9f32de633cbb0bf2772157fee14ef9726` |
| 16 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/uniq--4219766c889a855101dc3821.md) | 168 | `result-track:4219766c889a855101dc3821ba967d63eedb0cbe8cf8cbd1033c68348e4e79ee` |
| 17 | `def` | [objEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/objequiv--f7c0c750bf8a15e70b36ab14.md) | 191 | `declaration-track:f7c0c750bf8a15e70b36ab1497094c8949c6d205da1379ee57aa9da370de2a1f` |
| 18 | `theorem` | [morphismProperty_is_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/morphismproperty-is-top--5ac63becbcd5197c899a750c.md) | 203 | `result-track:5ac63becbcd5197c899a750c5d23af0c4ef9ea1d863909a6ac4efda0c00c5d04` |
| 19 | `theorem` | [morphismProperty_is_top'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/morphismproperty-is-top--e5e02786026ddba5b38d1d16.md) | 234 | `result-track:e5e02786026ddba5b38d1d16c2285960ea26aabd3353eaa6fde1c244d39a878f` |
| 20 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/app--fe3269e9a4e00fc24603c184.md) | 246 | `declaration-track:fe3269e9a4e00fc24603c184cf5db8cd3770d34a940d73eb024e1b824e7daaeb` |
| 21 | `theorem` | [app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/app-eq--69a7747aa33e7a63a517bb5b.md) | 251 | `result-track:69a7747aa33e7a63a517bb5bebe27c11d8ba214bfc212540827f559c0e341eb9` |
| 22 | `def` | [natTransExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/nattransextension--b6e746e21c04dc7ab4f26c71.md) | 260 | `declaration-track:b6e746e21c04dc7ab4f26c71ceb6f24dc28bbe889661ea5b089005a090402d54` |
| 23 | `theorem` | [whiskerLeft_natTransExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/whiskerleft-nattransextension--f64a15a5de22f3e69bd55044.md) | 274 | `result-track:f64a15a5de22f3e69bd5504456bdd1d2cdffeab91a995ea45f520ee224bd92f5` |
| 24 | `theorem` | [natTransExtension_hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/nattransextension-hcomp--fc0ca7836f9cfd9bf5119ad1.md) | 278 | `result-track:fc0ca7836f9cfd9bf5119ad1a61878b208cb85a5790a6c06d95afaa5114516b5` |
| 25 | `theorem` | [natTrans_hcomp_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/nattrans-hcomp-injective--09a436e1d4ad05b9039468fd.md) | 281 | `result-track:09a436e1d4ad05b9039468fd3d0ca2058d3ef69df804892f70b006ddfc3e500c` |
| 26 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/functor--613d0578542e64a36520d303.md) | 295 | `declaration-track:613d0578542e64a36520d3037d3654575c15661bcd17f2488cc979c20095d6a6` |
| 27 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/inverse--278b9f86f9cf8132706908e4.md) | 302 | `declaration-track:278b9f86f9cf8132706908e4671918f49add8dd60169046ce3ed1e2ab5ded574` |
| 28 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/unitiso--8cf2d18659024473b674f0ed.md) | 324 | `declaration-track:8cf2d18659024473b674f0edd94b7054d1650a13a23dc0aa723220c4477e93f1` |
| 29 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/counitiso--e13f0f7fe32a055475d11b29.md) | 338 | `declaration-track:e13f0f7fe32a055475d11b290bfe3a28c3bc6a54eaa4076396413d011c7ad201` |
| 30 | `def` | [whiskeringLeftEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant9c5c52922e38026aa8849ba70a2f19dfba6c1c8a8aa24aa2f697909036fdd2a3.lean/declarations/whiskeringleftequivalence--4fe656ca03df2487b69c6ef9.md) | 353 | `declaration-track:4fe656ca03df2487b69c6ef920a1c852ab0f078d6ac1ea1af2668ab67eae8b30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
