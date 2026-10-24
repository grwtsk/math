# Verification target: GRWTSK.Algebra.LinearAlgebra.InstanceDiamonds.Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd08cfeb2eb1b43d51569f7b92ad581c62838e18",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd08cfeb2eb1b43d51569f7b92ad581c62838e18`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.Module` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Pi` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--8ec3f95491c0168587b4fd8d.md) | 35 | `declaration-track:8ec3f95491c0168587b4fd8d295989b9413197b8120fbdb1e58e27eaa5cfa2c5` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--15fdc084b57c8cca22330365.md) | 38 | `declaration-track:15fdc084b57c8cca22330365fbf8295d0074365a3d59629edb4650f4a6a83353` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--77cbda132ed177281d44027a.md) | 42 | `declaration-track:77cbda132ed177281d44027a72d6fd5d6cbfc10f2cef624f18c33c45c2b2e3ce` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--d238b2ca7e2c84ad93aec286.md) | 45 | `declaration-track:d238b2ca7e2c84ad93aec286e3a1e2dd5863f804669e2b42146b79238ca21c41` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--bcc996555b5ba54bd1420d0e.md) | 49 | `declaration-track:bcc996555b5ba54bd1420d0e214535a88dba7079c482a98874da816d4f530d4f` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--90023df51912dc55088a5a21.md) | 53 | `declaration-track:90023df51912dc55088a5a21199ce918166411fa19e084a9f6496eb09715981c` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--a1e510e4bc409fe4e122ebb7.md) | 57 | `declaration-track:a1e510e4bc409fe4e122ebb71016a558b11690ee47c4b53f0c6428f9d4f5f685` |
| 8 | `def` | [f](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/f--5ac52b718b81640e2ed82f51.md) | 71 | `declaration-track:5ac52b718b81640e2ed82f5178e2b881db281ac9f9cde6655378447ab47d0ebd` |
| 9 | `theorem` | [f_apply](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/f-apply--5b2daefbb1f506bd711df16c.md) | 78 | `result-track:5b2daefbb1f506bd711df16c893d7d700a4b269abce7c5b2c73e018897ea55cc` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--353d328e6c4996e04e110a10.md) | 85 | `declaration-track:353d328e6c4996e04e110a10f3685649e7cf93bc1ef2fd6ad34e2950bd7d5847` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--d73132a3fac6e6fadeb68f84.md) | 100 | `declaration-track:d73132a3fac6e6fadeb68f8488fe7eb5174f69566ff9d3499555aec246344d38` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--004e2f066ef1ee6821ef47bd.md) | 104 | `declaration-track:004e2f066ef1ee6821ef47bd6e3bd768615929898e14e746c4050fba786a950f` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--60e1f8b71b9d24741d7aa6c7.md) | 108 | `declaration-track:60e1f8b71b9d24741d7aa6c77238fe726d50288bff9c3cc2e9dfe782c6284033` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--3ac05ce42076242eb31e4cfc.md) | 123 | `declaration-track:3ac05ce42076242eb31e4cfc6d9d9c6d9724ef558ea934196822ea13bb94433c` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--1b9bdadb8d63d2d9add810a9.md) | 134 | `declaration-track:1b9bdadb8d63d2d9add810a9ad5ce4fa1d38a41361c74c6050e59800dd1eb903` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--dfc346d9968549c2bed3d2d9.md) | 148 | `declaration-track:dfc346d9968549c2bed3d2d94573cab482a7162b92ac52209d052f2a36cecb43` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--c9f7c04a630aff9d9aab4735.md) | 161 | `declaration-track:c9f7c04a630aff9d9aab4735a6b8ba0e687d6ded2a0dff7032c4d3251c4526bf` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--b75aef264df91f261c19270a.md) | 187 | `declaration-track:b75aef264df91f261c19270a4adb06a99f44090a2a84d10f2cb2146dcb57caa7` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--7ed9ee389fbf29d97c5b85f4.md) | 194 | `declaration-track:7ed9ee389fbf29d97c5b85f4e1e397b5ec786d1dea7a35c519a40aac22d98a8c` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--d6c15a330c29ab75fd17efb2.md) | 202 | `declaration-track:d6c15a330c29ab75fd17efb286192ff7089f3d85d167e1f22e76ae76ed9a753a` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--1545b88486a6ca72072bd9b4.md) | 208 | `declaration-track:1545b88486a6ca72072bd9b46d65bf56818f688c484c32a2bb1d8d4062a03e35` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--45c6c63f7ec24ecae7769d45.md) | 213 | `declaration-track:45c6c63f7ec24ecae7769d45e9a263e1094ce09bc4c05dadade0e105216b0a24` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--1d65f6a83ba3f49cd434bd2c.md) | 224 | `declaration-track:1d65f6a83ba3f49cd434bd2c1baba5a7652c70f25cda8011b84bb07a4a982699` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--954ecfeb4909783747e1c4fc.md) | 239 | `declaration-track:954ecfeb4909783747e1c4fc5089bc8d9fa4c123318068bdb138c3e0d25601f2` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--66ad838de8170fae3b80572f.md) | 248 | `declaration-track:66ad838de8170fae3b80572f5356966c7b663bddbd0e4d89661646c59b37cc29` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--12a646e65414e343dd6bf42f.md) | 252 | `declaration-track:12a646e65414e343dd6bf42f22c508b6cf9172af5d281b34968247256c206ed1` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--1a4ba6fd02331d1aeed2035a.md) | 270 | `declaration-track:1a4ba6fd02331d1aeed2035a8d3a17c2941a37c66d46b602b0cf01bdffc79c8c` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--00054cf69dabdccda9cf5d8d.md) | 277 | `declaration-track:00054cf69dabdccda9cf5d8d7b7c71d5633a1b3f9ba46e34448282621b247778` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InstanceDiamonds/Variant2fe2bf3d893513f8d0d603fd6ef7f3c698d0ab8f5859f5c6ea2debda6a51e88e.lean/declarations/example--6abba0c0a2092993bbf4c7e7.md) | 289 | `declaration-track:6abba0c0a2092993bbf4c7e73d181e658e10a162b9a78da41fb57f2e61bc95c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
