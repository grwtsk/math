# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Roots.Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e20d98d25f1186ae46ebae54afaf6b28d2fa1680",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e20d98d25f1186ae46ebae54afaf6b28d2fa1680`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isRoot_of_unity_of_root_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/isroot-of-unity-of-root-cyclotomic--0fd18eeb726a852a4301acf2.md) | 46 | `result-track:0fd18eeb726a852a4301acf2c308a5d1b4fee402402ed4a03ea4f70dc8225fee` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.isRoot_of_unity_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--b73f451b0d6a4ee8bcadfc96.md) | 61 | `result-track:b73f451b0d6a4ee8bcadfc9605f2729da7dfc7dea93d9c985bc50d455d7d6c08` |
| 3 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.IsPrimitiveRoot.isRoot_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--ea9e67bf27f8166272dfa139.md) | 67 | `result-track:ea9e67bf27f8166272dfa13965ee60b35bbcabe092d6b7e7baaf3d4e6de7bd2c` |
| 4 | `theorem` | [isRoot_cyclotomic_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/isroot-cyclotomic-iff--799efd392893f9ce1c018280.md) | 73 | `result-track:799efd392893f9ce1c01828050dcf94113e9872ee6e4bcfad73b07a9f0e40c5f` |
| 5 | `theorem` | [isRoot_cyclotomic_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/isroot-cyclotomic-iff--5eef38fb398b2684b7160b6f.md) | 102 | `result-track:5eef38fb398b2684b7160b6f874931511f042e3b6dda904c3f54cca608a22a56` |
| 6 | `theorem` | [roots_cyclotomic_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/roots-cyclotomic-nodup--abe4b9fc40ad866146ba9519.md) | 109 | `result-track:abe4b9fc40ad866146ba9519f34290c6a1d51d9f7ea36360c3fc12120df227bf` |
| 7 | `theorem` | [cyclotomic.roots_to_finset_eq_primitiveRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-roots-to-finset-eq-primitiveroots--63234c86b5841730bb89f7cf.md) | 117 | `result-track:63234c86b5841730bb89f7cf150c8eb629decd34b2360b14246bf6b73e542774` |
| 8 | `theorem` | [cyclotomic.roots_eq_primitiveRoots_val](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-roots-eq-primitiveroots-val--1a7bd718ef63acc55c691f38.md) | 127 | `result-track:1a7bd718ef63acc55c691f38c2dccc7f823570793f871f4b0552c3abc048fd8a` |
| 9 | `theorem` | [isRoot_cyclotomic_iff_charZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/isroot-cyclotomic-iff-charzero--7061f1047444df9245f26642.md) | 133 | `result-track:7061f1047444df9245f26642c99f106fc8f66a0298a49b6572ab840c92e99388` |
| 10 | `theorem` | [cyclotomic_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-injective--2ae1c36ff989ec4f90d020db.md) | 141 | `result-track:2ae1c36ff989ec4f90d020db08d23938f2c7665059f5ca8b8dcc38e7ec19304f` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.IsPrimitiveRoot.minpoly_dvd_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--ee01548d7cc4cdb24dd023b7.md) | 162 | `result-track:ee01548d7cc4cdb24dd023b76fe0f47ab8c636c73c7b3904aa3052611834a50c` |
| 12 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsRootOfUnityOfRootCyclotomic.Variant612d54ef67ffcda52fb6fe4933d9fe724a6579f5a8ce5bf917e427362b1b46a3.IsPrimitiveRoot.minpoly_eq_cyclotomic_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/root-grwtsk-algebra-commutativealgebra-isrootofunityofrootcyclotomic-var--56b1c3d96c4acfaa058bfbb9.md) | 171 | `result-track:56b1c3d96c4acfaa058bfbb94742beae4ee3f03f64365dbdc28047f3f7581280` |
| 13 | `theorem` | [cyclotomic_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-eq-minpoly--adc1d0f5b42f00031043a500.md) | 179 | `result-track:adc1d0f5b42f00031043a5006cf783093e3bd5a2487d7bfcc8ed7ba9cdabd083` |
| 14 | `theorem` | [cyclotomic_eq_minpoly_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-eq-minpoly-rat--3b6bdca699eddae70ce7885c.md) | 186 | `result-track:3b6bdca699eddae70ce7885cde030fa12c6d4ffb3af1b170d5844779fa45a733` |
| 15 | `theorem` | [cyclotomic.irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-irreducible--bd42690a38206d3face21bd0.md) | 192 | `result-track:bd42690a38206d3face21bd03b044577e9619147ac2fc9239280618910ea79a5` |
| 16 | `theorem` | [cyclotomic.irreducible_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-irreducible-rat--019c21d08fc7705c9ead5563.md) | 198 | `result-track:019c21d08fc7705c9ead5563a1d6cc8809e3beda9a0bc0b391fde3d51d17e51e` |
| 17 | `theorem` | [cyclotomic.isCoprime_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Roots/Variant6b541f20ce5eb92e09543b2cbb19bf03a4a5b0d6ea9dc96816d4daaef49ac244.lean/declarations/cyclotomic-iscoprime-rat--9bb307f3c2a00ed9cf7091df.md) | 204 | `result-track:9bb307f3c2a00ed9cf7091df4a4d851caee9c7c316ca7356eb212ee904cd56cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
