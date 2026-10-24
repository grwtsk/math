# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc1813f94c34693a9084d8a0b8295d9ccdd8851a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc1813f94c34693a9084d8a0b8295d9ccdd8851a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Charpoly.BaseChange` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Zero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Ideal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_tensor_residueField_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/isnilpotent-tensor-residuefield-iff--7d8a8d3fd05ad8f2c628b516.md) | 44 | `result-track:7d8a8d3fd05ad8f2c628b5165de2b2bfdae369bb3b873c89d995da70d78e4c0a` |
| 2 | `lemma` | [mem_image_comap_zeroLocus_sdiff](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/mem-image-comap-zerolocus-sdiff--cabf977dff495629acc44ffc.md) | 78 | `result-track:cabf977dff495629acc44ffc4c2b421a6e163d73c529edc8fb2c547de92a0a94` |
| 3 | `lemma` | [mem_image_comap_basicOpen](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/mem-image-comap-basicopen--6f45edccd230e578746bc263.md) | 113 | `result-track:6f45edccd230e578746bc26304f0855525a09e8feb95f1a03b33ebcd7635671a` |
| 4 | `lemma` | [exists_image_comap_of_finite_of_free](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/exists-image-comap-of-finite-of-free--2a202bcf2adf8ab4a8557cb7.md) | 127 | `result-track:2a202bcf2adf8ab4a8557cb775679e7076322cee04c2d43bfb4da1e5737941c2` |
| 5 | `lemma` | [mem_image_comap_C_basicOpen](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/mem-image-comap-c-basicopen--687fb852c7e2ec4948f3302d.md) | 142 | `result-track:687fb852c7e2ec4948f3302dfd0b10001a57bc6707a4cc700aa891aa98cc951c` |
| 6 | `lemma` | [image_comap_C_basicOpen](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/image-comap-c-basicopen--4f75914dd4ab74d9b6e576c2.md) | 156 | `result-track:4f75914dd4ab74d9b6e576c269ca05b20baad8f3a3ab8a8aea8f1c50b2aeca95` |
| 7 | `lemma` | [isOpenMap_comap_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/isopenmap-comap-c--fc6224a1de621feda41e1137.md) | 162 | `result-track:fc6224a1de621feda41e1137317abf814968fcba48d9b804328cff6b6aefba49` |
| 8 | `lemma` | [comap_C_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/comap-c-surjective--976c70594457de114defa70d.md) | 172 | `result-track:976c70594457de114defa70da92cb24f24c43772f2665147a58896c03204871f` |
| 9 | `lemma` | [exists_image_comap_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/exists-image-comap-of-monic--5f5fc5d37163b84761296017.md) | 178 | `result-track:5f5fc5d37163b8476129601767a36d761f5959ad279fa1cd7a26946889e29b1c` |
| 10 | `lemma` | [isCompact_image_comap_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/iscompact-image-comap-of-monic--a6e147d1a00107d49330693f.md) | 184 | `result-track:a6e147d1a00107d49330693fc782b1ea338537663b49101ca5ac1110c500631c` |
| 11 | `lemma` | [isOpen_image_comap_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/isopen-image-comap-of-monic--230d00d7301f7d72df992c54.md) | 191 | `result-track:230d00d7301f7d72df992c54f31cb5062fac4e60b1f540777ff9d415febb49f9` |
| 12 | `lemma` | [mem_image_comap_C_basicOpen](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/mem-image-comap-c-basicopen--6975e713e047eab29023f180.md) | 203 | `result-track:6975e713e047eab29023f180acff32902d34a9673f9780973bffd5f366567351` |
| 13 | `lemma` | [image_comap_C_basicOpen](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/image-comap-c-basicopen--a4394b1d35a024bd501d263a.md) | 219 | `result-track:a4394b1d35a024bd501d263a252adc921db973dd1363b08fa758a28f0095f01a` |
| 14 | `lemma` | [isOpenMap_comap_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/isopenmap-comap-c--7b9da6b9869ff8389d1d0004.md) | 225 | `result-track:7b9da6b9869ff8389d1d0004d56b948d9b40550a3d8066855bc9b26ee8c16a1e` |
| 15 | `lemma` | [comap_C_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant8ed6ce9050da6cb13f9e573bc7d6bd2403d85ea05ac24264668f3aa16cbc7870.lean/declarations/comap-c-surjective--90e0379994e9fe15371cf4b0.md) | 235 | `result-track:90e0379994e9fe15371cf4b08f1792d63d0e1566ebc66abf45c32aeb32bb1d72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
