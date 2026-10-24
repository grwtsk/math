# Verification target: GRWTSK.Algebra.RingTheory.Radical.Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae86041ceef2865c22a454549179aa9ab1a63067",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae86041ceef2865c22a454549179aa9ab1a63067`.

Source path: `GRWTSK/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFactors](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/primefactors--ebb9bd6550b7b9c5f2f6599f.md) | 58 | `declaration-track:ebb9bd6550b7b9c5f2f6599f3c9b348508a0d06478f3d0360d150ddc32638d09` |
| 2 | `theorem` | [_root_.Associated.primeFactors_eq](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/root-associated-primefactors-eq--86d6f4ce6d05db024728b619.md) | 61 | `result-track:86d6f4ce6d05db024728b619ec7320463abf4a081cb5c981d43ba6eb19d5f7c8` |
| 3 | `def` | [radical](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical--6387b45021878b21aceb2079.md) | 71 | `declaration-track:6387b45021878b21aceb20792c63761c23a578872ac6d643ac066844abe6ad2f` |
| 4 | `theorem` | [radical_zero_eq](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-zero-eq--4446de5faac42f43557c21d8.md) | 75 | `result-track:4446de5faac42f43557c21d8d50cbe9ff75a30315c8a6b33912b11cf7f703469` |
| 5 | `theorem` | [radical_one_eq](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-one-eq--ed62485d0be69b28d00af54f.md) | 80 | `result-track:ed62485d0be69b28d00af54f44fca15b1301db3680ae317e974808dbccfab274` |
| 6 | `theorem` | [radical_eq_of_associated](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-eq-of-associated--c49e55a3ba8e0e5379847356.md) | 84 | `result-track:c49e55a3ba8e0e537984735694fcca10f13ee093c3ee45826de5914484db05a7` |
| 7 | `theorem` | [radical_of_isUnit](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-of-isunit--18055ef23f596fa0ebe6a7c9.md) | 88 | `result-track:18055ef23f596fa0ebe6a7c9ba0ee03afd4aa600957edbc17f237d06a5db69f1` |
| 8 | `theorem` | [radical_mul_of_isUnit_left](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-mul-of-isunit-left--84b65806b429a01d3830ea27.md) | 91 | `result-track:84b65806b429a01d3830ea2771fc9749d060277da70fec5b03e20092b81ae80c` |
| 9 | `theorem` | [radical_mul_of_isUnit_right](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-mul-of-isunit-right--84f138801bb3be271c44decb.md) | 94 | `result-track:84f138801bb3be271c44decb2ceb169ffc9cb5bd2427308f7a3a58bd2fa94ee0` |
| 10 | `theorem` | [primeFactors_pow](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/primefactors-pow--10546aae40b06f74b1b69a5d.md) | 97 | `result-track:10546aae40b06f74b1b69a5dbdaebf424dea261731dfe86aa1069b7a8f45132b` |
| 11 | `theorem` | [radical_pow](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-pow--d7b5009c16e5b48126d9aeb1.md) | 100 | `result-track:d7b5009c16e5b48126d9aeb1fc31c36471595e63aae97c2da8640b685605cacd` |
| 12 | `theorem` | [radical_dvd_self](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-dvd-self--dd71a8c3f5f53b448cf9044a.md) | 103 | `result-track:dd71a8c3f5f53b448cf9044a5d1a186e70ace00ce804c18a800032b728934a8f` |
| 13 | `theorem` | [radical_of_prime](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-of-prime--9f4ef08dbe486ec9ea49992f.md) | 113 | `result-track:9f4ef08dbe486ec9ea49992f89576b05fde80eb9d827962d0fbf49b3ae6d5d31` |
| 14 | `theorem` | [radical_pow_of_prime](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-pow-of-prime--19a8758215f9586177911f8d.md) | 118 | `result-track:19a8758215f9586177911f8dbf93d5c0cad48baaf209a9fb76df1decd05de55e` |
| 15 | `theorem` | [radical_ne_zero](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-ne-zero--4b4eb4583b459d35e94e4419.md) | 123 | `result-track:4b4eb4583b459d35e94e44195e16b126b0937f98532b51f270102493c91c9a57` |
| 16 | `theorem` | [disjoint_normalizedFactors](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/disjoint-normalizedfactors--2dba94263274dbe5a0a24e5f.md) | 141 | `result-track:2dba94263274dbe5a0a24e5f0db01c4e4b4c8efe1c429ba528aa9f6da5a441ff` |
| 17 | `theorem` | [disjoint_primeFactors](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/disjoint-primefactors--ce833eb7ec65e3157aabbaf2.md) | 151 | `result-track:ce833eb7ec65e3157aabbaf29cdea5aa074f7165f25964b87e94cbf07ed03d42` |
| 18 | `theorem` | [mul_primeFactors_disjUnion](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/mul-primefactors-disjunion--17c5e538b34b69aff070a614.md) | 156 | `result-track:17c5e538b34b69aff070a614ea8007249bce91f1f2b490dd1657d2bb36f996d8` |
| 19 | `theorem` | [radical_neg_one](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-neg-one--150c40f0f5ae9960178b67ad.md) | 166 | `result-track:150c40f0f5ae9960178b67ad2a2315cb18f4ca96e807c780eb6229945f212ed8` |
| 20 | `theorem` | [radical_mul](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-mul--700afacdbae78e33d378245f.md) | 170 | `result-track:700afacdbae78e33d378245ff3184cc8428c3a2bf0fdda3d73f8b6381119410c` |
| 21 | `theorem` | [radical_neg](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-neg--fcd5cd8d7db07017a9e86c21.md) | 182 | `result-track:fcd5cd8d7db07017a9e86c2168e84c33b2a2f32e94d12162d7735ee9de3161d5` |
| 22 | `def` | [divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/divradical--525ca8349ffabf75ff8a25c7.md) | 193 | `declaration-track:525ca8349ffabf75ff8a25c760c5a9da9334cf7aab73b7ef6b7ff94303eb5c9e` |
| 23 | `theorem` | [radical_mul_divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/radical-mul-divradical--0de88db2793a5e3e258e222c.md) | 195 | `result-track:0de88db2793a5e3e258e222cf677ab236d65da56b3e36b848f257554736d0064` |
| 24 | `theorem` | [divRadical_mul_radical](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/divradical-mul-radical--2d25792e16004cbd06d77443.md) | 199 | `result-track:2d25792e16004cbd06d77443b1469a873a8429c13655657fc5fb9729b7949002` |
| 25 | `theorem` | [divRadical_ne_zero](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/divradical-ne-zero--3e66d45f5fa51ca64e549bf3.md) | 203 | `result-track:3e66d45f5fa51ca64e549bf36f2b0cac2eee22cee957221e503b432708643343` |
| 26 | `theorem` | [divRadical_isUnit](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/divradical-isunit--8dc7943cde5ef1c42560486e.md) | 207 | `result-track:8dc7943cde5ef1c42560486e3754b296abde198618522200bb7a42b55819926c` |
| 27 | `theorem` | [eq_divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/eq-divradical--e9acb12c6664dffab73edcda.md) | 210 | `result-track:e9acb12c6664dffab73edcda40d9445a022b1d3ae00d9389a03c76df41b7bd52` |
| 28 | `theorem` | [divRadical_mul](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/divradical-mul--d392356263b357bc801d3dd2.md) | 214 | `result-track:d392356263b357bc801d3dd289de89c7839834cb562f0691f951b242e5207e3b` |
| 29 | `theorem` | [divRadical_dvd_self](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/divradical-dvd-self--3613a2c6f639685a9d64558c.md) | 220 | `result-track:3613a2c6f639685a9d64558cc35fdae43950fe804fc680487d0fe85de609abd2` |
| 30 | `theorem` | [_root_.IsCoprime.divRadical](../../../../../mathematics/Algebra/RingTheory/Radical/Variant484547e188f6e204f7b85e4c1af50fed75ec72ad813e4abd40245eeb13cff062.lean/declarations/root-iscoprime-divradical--d6539b14e4f31de9d4608111.md) | 223 | `result-track:d6539b14e4f31de9d4608111f35a8706fa0e1707c2ec86864b37f51d9f892342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
