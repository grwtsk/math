# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grpd.Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfa52fa61565c4a5efa412e0cde947c155c26133",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfa52fa61565c4a5efa412e0cde947c155c26133`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SingleObj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Grpd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/grpd--a77781c5e92ab58965e84c3b.md) | 42 | `declaration-track:a77781c5e92ab58965e84c3bad7312877a8d075445b5e00be65bbc562e09b196` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/instance--94b7a168be5f77c819a0e657.md) | 47 | `declaration-track:94b7a168be5f77c819a0e657ea9e6811ede80fda91f0630ea246b74361855925` |
| 3 | `instance` | [str'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/str--0f99d11856e381a3f9427358.md) | 51 | `declaration-track:0f99d11856e381a3f9427358bab7d656d1058f1c095e913761fb8e78e05404ed` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/instance--61e9b75761c0715bca636cd0.md) | 54 | `declaration-track:61e9b75761c0715bca636cd08c0d70fee8c8d23b38b7c0869e682eea1565f1ae` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/of--766b6adcdbd877569a749300.md) | 58 | `declaration-track:766b6adcdbd877569a749300a600964e58f6e73d9321df69cb0fe71c0369dff7` |
| 6 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/coe-of--16da9d976c895f7d7cd65cab.md) | 62 | `result-track:16da9d976c895f7d7cd65cab74f8371ced0d91e755a6856aeaa33aaedf034bd4` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/category--743b63cea7cab4a19df3912d.md) | 66 | `declaration-track:743b63cea7cab4a19df3912d322757894fe0265ef6aceb7a5fab2d731b1f2d1d` |
| 8 | `def` | [objects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/objects--03698c34d7f70b6bb7360f3e.md) | 76 | `declaration-track:03698c34d7f70b6bb7360f3e6057e0fe2e366334e0b9c3bf61a26c15ba6e3c38` |
| 9 | `def` | [forgetToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/forgettocat--d74f4fae9472eab01ccb51ac.md) | 81 | `declaration-track:d74f4fae9472eab01ccb51ac921e6c91743816d792497ad2a57295dd4ea92f24` |
| 10 | `instance` | [forgetToCat_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/forgettocat-full--6896306aa9e06d38fb56b04c.md) | 85 | `declaration-track:6896306aa9e06d38fb56b04cb2564eac7bac46805695830f80808777b883884d` |
| 11 | `instance` | [forgetToCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/forgettocat-faithful--954b778b518d142c3a32df1f.md) | 87 | `declaration-track:954b778b518d142c3a32df1faddb4bedf6bbd129353fd142988f9af50e356eb1` |
| 12 | `theorem` | [hom_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/hom-to-functor--aaa3bc469c198e1062dc8d56.md) | 91 | `result-track:aaa3bc469c198e1062dc8d56252cc2544535646ac90ed9031f81b1d8695c9ba6` |
| 13 | `theorem` | [id_to_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/id-to-functor--a71541022074a6a99d44f635.md) | 95 | `result-track:a71541022074a6a99d44f635fca5b5b5e0de8465823557166f8878ad913d076f` |
| 14 | `def` | [piLimitFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/pilimitfan--3a48de840ba78790b2138f5a.md) | 101 | `declaration-track:3a48de840ba78790b2138f5af05ffdfc5e99d7628a4811e09b6e35d78ae1d529` |
| 15 | `def` | [piLimitFanIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/pilimitfanislimit--198ae94f0a5fa973f77e979b.md) | 105 | `declaration-track:198ae94f0a5fa973f77e979b789960d9b0c7588d9ba493e37a12d16f5d0d97df` |
| 16 | `instance` | [has_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/has-pi--bbdc5caefe359c04f4c55986.md) | 117 | `declaration-track:bbdc5caefe359c04f4c55986a1489f83b25dcd20a33bbdf3c1505742e1c94778` |
| 17 | `def` | [piIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/piisopi--1b1fccfe0e532b41a59ae989.md) | 122 | `declaration-track:1b1fccfe0e532b41a59ae989570e9bdb02e42f7759dcd110d6280b769b0cb78a` |
| 18 | `theorem` | [piIsoPi_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grpd/Variant61da9a26b0db034ab1361583a9d0a5c49d5207bbe112baf7de3ecac8b363d5a9.lean/declarations/piisopi-hom--def0a4add3b166469d856810.md) | 127 | `result-track:def0a4add3b166469d8568103abbba6986d497deee884e4c9020d5e4cf13bd38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
