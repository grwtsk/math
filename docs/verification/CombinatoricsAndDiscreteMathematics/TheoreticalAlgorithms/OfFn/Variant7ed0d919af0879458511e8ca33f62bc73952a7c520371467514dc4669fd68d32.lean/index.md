# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OfFn.Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b8254a6407013800f29135c5700839d2fb0a22f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b8254a6407013800f29135c5700839d2fb0a22f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [get_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/get-offn--0c96a993f4ebfb5a87cb75f2.md) | 33 | `result-track:0c96a993f4ebfb5a87cb75f23561ebd01bbb525cbf00d1e1a9fba3ea30c3a9a2` |
| 2 | `theorem` | [map_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/map-offn--8bac667146ca24420288d9c2.md) | 39 | `result-track:8bac667146ca24420288d9c270d0cdf9d4c1925188ec1ba5ae5802471ac6e922` |
| 3 | `theorem` | [ofFn_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-congr--8327ef54fcddab23ec4f6672.md) | 44 | `result-track:8327ef54fcddab23ec4f6672f2ecf11af01447f159f541e11e090b1662204cb8` |
| 4 | `theorem` | [ofFn_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-succ--e57018cdd029da690f81ed83.md) | 49 | `result-track:e57018cdd029da690f81ed83138f009a8a03854a618bd595770efaec6809cf8b` |
| 5 | `theorem` | [ofFn_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-add--1ad7d3caee633e471657b3d1.md) | 58 | `result-track:1ad7d3caee633e471657b3d118ed48531f3b7394ce78cdec3b9b84b6867217ed` |
| 6 | `theorem` | [ofFn_fin_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-fin-append--46322ad7df5dfd8f6d67d9eb.md) | 68 | `result-track:46322ad7df5dfd8f6d67d9eb5e9198513f44dc57836af67d9076dec4d6739c82` |
| 7 | `theorem` | [ofFn_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-mul--3316e3ea9fdf26da0dd65e31.md) | 73 | `result-track:3316e3ea9fdf26da0dd65e3122ddc4f538ac3ec250575d3267389b21bdd4b971` |
| 8 | `theorem` | [ofFn_mul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-mul--dbb479c60479a6ea44b27a38.md) | 86 | `result-track:dbb479c60479a6ea44b27a382c5b7e18f9a66e19405b39d15939c54653cfed56` |
| 9 | `theorem` | [ofFn_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-get--350103f5f8c8a14dd50a798f.md) | 94 | `result-track:350103f5f8c8a14dd50a798f88a6ae63f13f99c011ad01992588b05e40798c04` |
| 10 | `theorem` | [ofFn_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-getelem--4f7ea54c87fdb076346ab2b1.md) | 102 | `result-track:4f7ea54c87fdb076346ab2b18151833b9054222da003ad1db501a6a5bb9106e8` |
| 11 | `theorem` | [ofFn_getElem_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-getelem-eq-map--5ad946d5f3d28550658e8eb2.md) | 110 | `result-track:5ad946d5f3d28550658e8eb2ce770edea9376d2530266415569246be3f34da73` |
| 12 | `theorem` | [mem_ofFn'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/mem-offn--c00957f2e69b68fbdad8cfdd.md) | 116 | `result-track:c00957f2e69b68fbdad8cfddad8da50f4d8871788f9f202498f1d58be5673484` |
| 13 | `theorem` | [forall_mem_ofFn_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/forall-mem-offn-iff--0d5508c80a3e68dac5febc66.md) | 120 | `result-track:0d5508c80a3e68dac5febc6686e4329f86157b53a6e12ba3efeb5a9ba24d4e4d` |
| 14 | `theorem` | [ofFn_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-const--4cff76b31822fdd4495d8ec7.md) | 124 | `result-track:4cff76b31822fdd4495d8ec7b3e56f927a4e2beaae96ff204571bcf87403ed5d` |
| 15 | `theorem` | [ofFn_fin_repeat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-fin-repeat--ce85866b90c0063baa5ff121.md) | 129 | `result-track:ce85866b90c0063baa5ff121a9c2dbf58edfe86b90c7cc94eab715698422af43` |
| 16 | `theorem` | [pairwise_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/pairwise-offn--ee29898d710b6fc7efd48054.md) | 135 | `result-track:ee29898d710b6fc7efd48054d5bdf62edb599f1122fe80d56114883f60e167ef` |
| 17 | `lemma` | [getLast_ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/getlast-offn-succ--ff14640552fe9162133451b3.md) | 141 | `result-track:ff14640552fe9162133451b3dcc9ba7f44387d143681683bb497fbc422fd690a` |
| 18 | `theorem` | [last_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/last-offn--2b238e968153116c2f23023e.md) | 146 | `result-track:2b238e968153116c2f23023e87b7f2759904c446b557fdd62f3d845be26cf9dc` |
| 19 | `theorem` | [last_ofFn_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/last-offn-succ--5414dd4580d60eed398bbaae.md) | 151 | `result-track:5414dd4580d60eed398bbaae884936ba943460749596830fec772e627ecb5875` |
| 20 | `lemma` | [ofFn_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-cons--5dad986f3ebc0a78ce1476fb.md) | 156 | `result-track:5dad986f3ebc0a78ce1476fbbecedb371247e0b8050f614f0b1a8437c2410ab1` |
| 21 | `lemma` | [find?_ofFn_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/find-offn-eq-some--c0e707c60cf37af27d24c630.md) | 160 | `result-track:c0e707c60cf37af27d24c6301082f5200de5d7f30a61c046bc11b73ab782b898` |
| 22 | `lemma` | [find?_ofFn_eq_some_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/find-offn-eq-some-of-injective--2963e807565a1e3afd0cd4d5.md) | 169 | `result-track:2963e807565a1e3afd0cd4d5dbd2f572b266d8893c0ac76fe369b0d58e18d3ac` |
| 23 | `def` | [equivSigmaTuple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/equivsigmatuple--51dd871052163adc3cec55e7.md) | 176 | `declaration-track:51dd871052163adc3cec55e72dcfd6b092b5b4abbd31c26fc10f9d2df1741102` |
| 24 | `def` | [ofFnRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offnrec--f76c6fa1435ac94f6c79951e.md) | 187 | `declaration-track:f76c6fa1435ac94f6c79951e0e3dcebc377e6f6e97d891a1149a062b2befe8eb` |
| 25 | `theorem` | [ofFnRec_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offnrec-offn--8a599dbd4ab40ccc8d6c7e54.md) | 192 | `result-track:8a599dbd4ab40ccc8d6c7e545795a79c6cf0655642a3bba0aeb092b1cdc8065e` |
| 26 | `theorem` | [exists_iff_exists_tuple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/exists-iff-exists-tuple--d28a99141b41fbe3f2902dbc.md) | 196 | `result-track:d28a99141b41fbe3f2902dbc948897226ae93ee8aac9968eb70cf786b2be7cad` |
| 27 | `theorem` | [forall_iff_forall_tuple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/forall-iff-forall-tuple--645216040ea7eeb43f577997.md) | 200 | `result-track:645216040ea7eeb43f5779979a1cecf37fa0b58219739eae1cdca73d6b171de6` |
| 28 | `theorem` | [ofFn_inj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-inj--5dccfc9f795c3964a3cf4c53.md) | 205 | `result-track:5dccfc9f795c3964a3cf4c53a7824387e537460b11a34cd8b44a5e8f31361300` |
| 29 | `theorem` | [ofFn_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-injective--347e8c2d263c52a4f2dde597.md) | 210 | `result-track:347e8c2d263c52a4f2dde5970101aa2df7077ed67759ff95a5f5de76d2263a29` |
| 30 | `theorem` | [ofFn_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant7ed0d919af0879458511e8ca33f62bc73952a7c520371467514dc4669fd68d32.lean/declarations/offn-inj--4f4986c97824eb51b281f947.md) | 215 | `result-track:4f4986c97824eb51b281f947b9849536ea6636d1dffb7f565e5beaf70a8c23f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
