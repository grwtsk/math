# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Compatibility.Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59cef69095b372f10206483cfd5b0923fa64aeb0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59cef69095b372f10206483cfd5b0923fa64aeb0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalence₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence--94421bf7391b9b4b5be78e08.md) | 64 | `declaration-track:94421bf7391b9b4b5be78e08e8a360e94ed325bd7caeeba2d0652b9e629425db` |
| 2 | `def` | [equivalence₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence--cbb5c9fadca311b96896cfe7.md) | 72 | `declaration-track:cbb5c9fadca311b96896cfe70bba68bf5567195848c42b8b2527d42fa7c7d639` |
| 3 | `theorem` | [equivalence₁_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-inverse--d6ad939a7167fbcf202c36c8.md) | 74 | `result-track:d6ad939a7167fbcf202c36c856e5fb58c64f1daab6c8d8eaa545c26a91fe6217` |
| 4 | `def` | [equivalence₁CounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-counitiso--894d024147503585f740389d.md) | 79 | `declaration-track:894d024147503585f740389d5eb09876e11d505e4808e812946ad3615e8ac777` |
| 5 | `theorem` | [equivalence₁CounitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-counitiso-eq--195c547a8ca8045f3b30b335.md) | 88 | `result-track:195c547a8ca8045f3b30b3351ba55cca45003c0b0a9ecea552cd3f958b756b8a` |
| 6 | `def` | [equivalence₁UnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-unitiso--2862dc3993f3994f5ac1285a.md) | 94 | `declaration-track:2862dc3993f3994f5ac1285a31cdca7432bdbeebdb69ab1fb9860506214ed83d` |
| 7 | `theorem` | [equivalence₁UnitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-unitiso-eq--83f49974ee934bdbda6b29f9.md) | 103 | `result-track:83f49974ee934bdbda6b29f9be7b237111a550316c4e0df50d58bd883c79e22b` |
| 8 | `def` | [equivalence₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence--b8e12c530a58aa97fae15843.md) | 110 | `declaration-track:b8e12c530a58aa97fae1584362063780c2ceea2d693529d7f9a123cdb5178225` |
| 9 | `theorem` | [equivalence₂_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-inverse--5f562ce6caeed762c6649e21.md) | 113 | `result-track:5f562ce6caeed762c6649e214ee581d6de80c8cbc85370f14a530aae16465283` |
| 10 | `def` | [equivalence₂CounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-counitiso--61b1a578a8639ae978de34cd.md) | 119 | `declaration-track:61b1a578a8639ae978de34cde3ce14ffc11cb4b05f093dfdb69ae41db1ece820` |
| 11 | `theorem` | [equivalence₂CounitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-counitiso-eq--9082070bcdcb3b1244064a11.md) | 129 | `result-track:9082070bcdcb3b1244064a1132b7efbe99c8d5d48e6082521c052b9ee203436f` |
| 12 | `def` | [equivalence₂UnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-unitiso--19119ce617ed4a067338ed0a.md) | 138 | `declaration-track:19119ce617ed4a067338ed0a93adf0985d1b05be12546058dc8edc7057dab4fe` |
| 13 | `theorem` | [equivalence₂UnitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-unitiso-eq--742674d2343f91f9000d9a35.md) | 146 | `result-track:742674d2343f91f9000d9a35b1736e17d08f5bc2bcbbfb241f546aee5d8b48cf` |
| 14 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence--f5f0f78fd7564ff8e4074396.md) | 158 | `declaration-track:f5f0f78fd7564ff8e40743961a652036cf18e692fe63e258d214744d675d1f48` |
| 15 | `theorem` | [equivalence_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalence-functor--fd0d271fe4ad5ad73ae3044c.md) | 166 | `result-track:fd0d271fe4ad5ad73ae3044ce4826ac59a99a37f9748510a95eb88c5c6e2c88b` |
| 16 | `def` | [τ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/anonymous--9c32ae1ea451e91fa06719e9.md) | 172 | `declaration-track:9c32ae1ea451e91fa06719e952c05e6981541b9a06cbf8af26c1a76f44d07dbe` |
| 17 | `def` | [τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/anonymous--922cf2c17ffb64b63c0a8ded.md) | 182 | `declaration-track:922cf2c17ffb64b63c0a8ded2cb38c6695cb9dbbaa78675748c050b9eb0c0f16` |
| 18 | `def` | [equivalenceCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalencecounitiso--c021ce044b5e5a502a93c34a.md) | 195 | `declaration-track:c021ce044b5e5a502a93c34a8ea0cb1331ad7e1a2664eec948c7055a1e68f762` |
| 19 | `theorem` | [equivalenceCounitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalencecounitiso-eq--38b3e337458772a77c76f5e8.md) | 203 | `result-track:38b3e337458772a77c76f5e8d29c0508175773ba95887d69049ad4108ede7551` |
| 20 | `def` | [υ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/anonymous--9f53d73ae09d722abfdb1c20.md) | 224 | `declaration-track:9f53d73ae09d722abfdb1c20e9d2f27ecf8edcc05bdc34a81769e1f0b1b5287d` |
| 21 | `def` | [equivalenceUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalenceunitiso--0556474c769ab5692a05b0c3.md) | 235 | `declaration-track:0556474c769ab5692a05b0c3143a887369d5f5d43fbf291d994548efaa357c16` |
| 22 | `theorem` | [equivalenceUnitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean/declarations/equivalenceunitiso-eq--80f3644153bb691b3eab32f8.md) | 251 | `result-track:80f3644153bb691b3eab32f88664707e0122ed96b97897b226635f3434ad3d3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
