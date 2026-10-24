# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Field.Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f51f4cd900735bb9f41e1e422d45ecbc8aeefc11",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f51f4cd900735bb9f41e1e422d45ecbc8aeefc11`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.FieldDivision` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_le_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/degree-le-of-ne-zero--e0bf3c9d54b6b2f4e5f67f3a.md) | 37 | `result-track:e0bf3c9d54b6b2f4e5f67f3abd9703e10596815fb0923386b35be607376ef63e` |
| 2 | `theorem` | [ne_zero_of_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/ne-zero-of-finite--827e34e3bd321621177467c8.md) | 45 | `result-track:827e34e3bd321621177467c845bdfacd4912974fc6cdd12ad2207aa1aabbacb2` |
| 3 | `theorem` | [unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/unique--50d2bbdae8d6e3ec10af7f7c.md) | 53 | `result-track:50d2bbdae8d6e3ec10af7f7c0cc69e46705c671c135aa98acd081d12f8ae5f14` |
| 4 | `theorem` | [dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/dvd--fb34de7b31c3b78e38d96042.md) | 69 | `result-track:fb34de7b31c3b78e38d960422268ad2710dd74c30ed16fb50475a11b3b48ff17` |
| 5 | `theorem` | [dvd_map_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/dvd-map-of-isscalartower--ce882e46cc35911d08b0e46e.md) | 83 | `result-track:ce882e46cc35911d08b0e46eb847ba37f59c5a4b05f05153e6cb94d27547479f` |
| 6 | `theorem` | [dvd_map_of_isScalarTower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/dvd-map-of-isscalartower--080bf1ef47337b922802a027.md) | 90 | `result-track:080bf1ef47337b922802a027e97a83b43bdcfc903934f4a39bed96225c855364` |
| 7 | `theorem` | [aeval_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/aeval-of-isscalartower--87334438827389835837f7a1.md) | 100 | `result-track:87334438827389835837f7a1f6a47dc1a657ec5fdcbf09be3c3965c36a6b056a` |
| 8 | `theorem` | [eq_of_irreducible_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/eq-of-irreducible-of-monic--2c6c1b64be618734a092496f.md) | 111 | `result-track:2c6c1b64be618734a092496f937242edfee6362f20ce5f52049f76f031102987` |
| 9 | `theorem` | [eq_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/eq-of-irreducible--a71879eaa20fe9948be4ab8e.md) | 119 | `result-track:a71879eaa20fe9948be4ab8e54aa0b1c87d928299a0ab9adb7bad92230e46914` |
| 10 | `theorem` | [eq_of_algebraMap_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/eq-of-algebramap-eq--61475abe01028413a73513df.md) | 134 | `result-track:61475abe01028413a73513dfb145ef890c9caabd8a64da0e792abfdcb00e51eb` |
| 11 | `theorem` | [add_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/add-algebramap--a6ab4325553f5235fcb0cd6b.md) | 144 | `result-track:a6ab4325553f5235fcb0cd6bb374ee6310adc4e0d48bfc654e263c8d989c0248` |
| 12 | `theorem` | [sub_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/sub-algebramap--f26a07d69bfb4fff81bb585c.md) | 158 | `result-track:f26a07d69bfb4fff81bb585cacd8a4865b28476ea847973fcc72ccdc485e2f39` |
| 13 | `def` | [Fintype.subtypeProd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/fintype-subtypeprod--adb68cc371f4019da7631413.md) | 166 | `declaration-track:adb68cc371f4019da7631413d32ee4b2e76df4de38ec66530569aa246d03638c` |
| 14 | `def` | [rootsOfMinPolyPiType](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/rootsofminpolypitype--c68cdd736c09c67317022f96.md) | 177 | `declaration-track:c68cdd736c09c67317022f96887d7faf3bb2ae73e373e644df2a9dc5f809723d` |
| 15 | `theorem` | [aux_inj_roots_of_min_poly](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/aux-inj-roots-of-min-poly--bca62ab98e4846c61b3b25b6.md) | 185 | `result-track:bca62ab98e4846c61b3b25b6840ae6a2b69470d6975f811da6a66a0643f839a2` |
| 16 | `instance` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/alghom-fintype--89d8169b1a27e2da925fea28.md) | 195 | `declaration-track:89d8169b1a27e2da925fea2863541ce46216cc4f18293f854d6229aef3975d31` |
| 17 | `theorem` | [eq_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/eq-x-sub-c--4d197c2661763485de1e7270.md) | 208 | `result-track:4d197c2661763485de1e7270ff83085e3ec330b354329e5296ef1f205830d575` |
| 18 | `theorem` | [eq_X_sub_C'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/eq-x-sub-c--47112ab44ebf8eeb3ffd47e8.md) | 213 | `result-track:47112ab44ebf8eeb3ffd47e8ff6639c06d34c8b4a4d0b091002533f5759a2cb5` |
| 19 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/zero--2752d24e306557e26b316d07.md) | 222 | `result-track:2752d24e306557e26b316d071bdaa9de818da501ce70d13305362a9a0850966d` |
| 20 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/one--23852b720f8377080c684bab.md) | 228 | `result-track:23852b720f8377080c684bab9587d8f1ab0aefa4e2d6cc3d1794987c3a516f31` |
| 21 | `theorem` | [prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/prime--18c01723a720a20980cb2685.md) | 241 | `result-track:18c01723a720a20980cb2685f552672af9573a49765c7071bde038b04b7816f3` |
| 22 | `theorem` | [root](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/root--59b2738c3c215afda92cfd05.md) | 251 | `result-track:59b2738c3c215afda92cfd05e63fec723620653ad43a13ce21f8f1386839659e` |
| 23 | `theorem` | [coeff_zero_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/coeff-zero-eq-zero--e1c66283d86f3e00cbc215a1.md) | 262 | `result-track:e1c66283d86f3e00cbc215a1e719c23a5ab417010418c835fe8fc4db15ea692c` |
| 24 | `theorem` | [coeff_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantba1ef52f1179db521db7d1493e5560f664e826e3696f208a654da28560808308.lean/declarations/coeff-zero-ne-zero--14abb0bd2c6914728af99ff2.md) | 273 | `result-track:14abb0bd2c6914728af99ff2f5962873bbfb804616cb3d916c82013d163dfb5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
