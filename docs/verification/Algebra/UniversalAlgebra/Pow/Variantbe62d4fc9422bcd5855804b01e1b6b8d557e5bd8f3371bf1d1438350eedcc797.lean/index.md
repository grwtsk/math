# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pow.Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01890d19d8432fbab112a17bb2f33bba68dc8297",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01890d19d8432fbab112a17bb2f33bba68dc8297`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Order` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_lt_pow_of_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-lt-pow-of-lt-left--21ee749826b9bfd2b88ae75c.md) | 35 | `result-track:21ee749826b9bfd2b88ae75cfa1488a4669e4b37e1614cc3a78c45d1c26e9c79` |
| 2 | `theorem` | [pow_lt_pow_of_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-lt-pow-of-lt-right--d1766d76358947d6c429ff6b.md) | 39 | `result-track:d1766d76358947d6c429ff6b3bdd373e7cbf85ff03652ef9d8574b1cc7cb29f6` |
| 3 | `theorem` | [pow_lt_pow_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-lt-pow-succ--05a1a0e3c3032c594d1accb9.md) | 43 | `result-track:05a1a0e3c3032c594d1accb946a0b283eeedf6ed9ae69a0c7353de94af5f90d9` |
| 4 | `theorem` | [le_self_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/le-self-pow--a00f4b1786288d32e4fe9ecd.md) | 47 | `result-track:a00f4b1786288d32e4fe9ecd918621f6b872b712d353a385e7e4ef64253c61fe` |
| 5 | `theorem` | [lt_pow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/lt-pow-self--1e0e868e6a88a60d604e629b.md) | 52 | `result-track:1e0e868e6a88a60d604e629b5a5d8557c26caac9c7607e43a10b5390ec7bb47e` |
| 6 | `theorem` | [lt_two_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/lt-two-pow--63d1c06604ce8fc31ad40a9e.md) | 60 | `result-track:63d1c06604ce8fc31ad40a9efe31f6f95bfaecb3174ab6f89d76848a753dd629` |
| 7 | `theorem` | [one_le_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-le-pow--b1e77964e05e640e70cf91c0.md) | 64 | `result-track:b1e77964e05e640e70cf91c0e75c38353a2f5ad1ed15d51b651207fcd26c211d` |
| 8 | `theorem` | [one_le_pow'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-le-pow--ab6e8692cde9a141abfc352f.md) | 69 | `result-track:ab6e8692cde9a141abfc352fdc8c4095030489a24a641fe3c364b11f71569b33` |
| 9 | `theorem` | [one_le_two_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-le-two-pow--828c49c5c51d6b360f601f30.md) | 73 | `result-track:828c49c5c51d6b360f601f307f0d42e766dba3b73d970445a816cdb135d42812` |
| 10 | `theorem` | [one_lt_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-lt-pow--c0ec3410f805fc64e82a7f78.md) | 77 | `result-track:c0ec3410f805fc64e82a7f7815e3401498e168e41a23be193e678481af25ca96` |
| 11 | `theorem` | [one_lt_pow'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-lt-pow--40605381d8715db36bea8d75.md) | 82 | `result-track:40605381d8715db36bea8d758ad82189837378c26898242dfdd5af0648a86d60` |
| 12 | `theorem` | [one_lt_pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-lt-pow-iff--639d406e7d93326f537d1493.md) | 87 | `result-track:639d406e7d93326f537d1493c34be624cdd8a3b412208b127555aa3eed1a868f` |
| 13 | `theorem` | [one_lt_two_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-lt-two-pow--6ac0a5745cd132f8fa50b22d.md) | 101 | `result-track:6ac0a5745cd132f8fa50b22dde796045277f4b644e7650668b49f58cdcc18828` |
| 14 | `theorem` | [one_lt_two_pow'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/one-lt-two-pow--1658dc26f876a2b02b587dd3.md) | 105 | `result-track:1658dc26f876a2b02b587dd3ea1351f4e2ff31c67f14408e7ab94c15f1a7de0d` |
| 15 | `theorem` | [pow_right_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-right-strictmono--0ed5eaad5d0bdeaba9acd863.md) | 109 | `result-track:0ed5eaad5d0bdeaba9acd86321bbd24d92664b8ea6c925266293723065b773ec` |
| 16 | `theorem` | [pow_le_iff_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-le-iff-le-right--22059a14369ea303cf1ceaac.md) | 113 | `result-track:22059a14369ea303cf1ceaacb23b5393c64e7fc810e29d27a12d1cd8266c83f0` |
| 17 | `theorem` | [pow_lt_iff_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-lt-iff-lt-right--acb342ae1ec0ba1392eec868.md) | 117 | `result-track:acb342ae1ec0ba1392eec8682c281043df637a29961a05d9f6c1cc40f0d6764c` |
| 18 | `theorem` | [pow_right_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-right-injective--1b015db026c6729138ba3269.md) | 121 | `result-track:1b015db026c6729138ba3269746007f01e3b6f16746becc196e188f711bfcfe1` |
| 19 | `theorem` | [pow_left_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-left-strictmono--f95b22ffe88c729fa46fab3b.md) | 125 | `result-track:f95b22ffe88c729fa46fab3b1cfc4242ead43e65bcfce4519b4a5abc683fac2f` |
| 20 | `theorem` | [mul_lt_mul_pow_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/mul-lt-mul-pow-succ--74b081bc8ff2530c88d1740f.md) | 129 | `result-track:74b081bc8ff2530c88d1740f04ab91b0cb1fd0fd16debab2565546b54dbf6239` |
| 21 | `theorem` | [StrictMono.nat_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/strictmono-nat-pow--4627f13dbc635cdc95e5ac4c.md) | 136 | `result-track:4627f13dbc635cdc95e5ac4ce6e1ce40a763edae5524f0ec8100327112f96f2f` |
| 22 | `theorem` | [pow_le_iff_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-le-iff-le-left--708508bf5ee2ae54b83b217b.md) | 143 | `result-track:708508bf5ee2ae54b83b217b1f3faa9a81ac7660224c1b540df9edadddbea883` |
| 23 | `theorem` | [pow_lt_iff_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-lt-iff-lt-left--cfa29aac256c9ddb18cbc54a.md) | 147 | `result-track:cfa29aac256c9ddb18cbc54af2104ff5c6b4f6e228bee361bfc780e5db401ec8` |
| 24 | `theorem` | [pow_left_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-left-injective--79778c27515fdbd097857e34.md) | 151 | `result-track:79778c27515fdbd097857e341903e90f8de2de4452d704a94abc317b9c7ecfb1` |
| 25 | `theorem` | [sq_sub_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/sq-sub-sq--cdffd8c2796c1113ae98345c.md) | 155 | `result-track:cdffd8c2796c1113ae98345c728fd6ab8c74b297c65265ed4eaa9a348b35ac28` |
| 26 | `theorem` | [pow_mod](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-mod--23309e1c745e71318027ce27.md) | 166 | `result-track:23309e1c745e71318027ce273e3e3189f119f399ccd24070cd5bb850605de7b7` |
| 27 | `theorem` | [mod_pow_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/mod-pow-succ--2cc4286c06fe329ce228e83e.md) | 171 | `result-track:2cc4286c06fe329ce228e83e44282e51cb364120a0df1a386bbf2ec82d3b49cf` |
| 28 | `theorem` | [pow_dvd_pow_iff_pow_le_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-dvd-pow-iff-pow-le-pow--552c17e916c8153e8b70ffba.md) | 202 | `result-track:552c17e916c8153e8b70ffba45fd1038c75a16cc4b6f11f84e9df1e7761d95c7` |
| 29 | `theorem` | [pow_dvd_pow_iff_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-dvd-pow-iff-le-right--978b58820c691d557df73b4e.md) | 216 | `result-track:978b58820c691d557df73b4e0e9b90acc324472b0ad68694a7698be38baeb0b7` |
| 30 | `theorem` | [pow_dvd_pow_iff_le_right'](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-dvd-pow-iff-le-right--e88f22065ee0a25ea0c747a7.md) | 220 | `result-track:e88f22065ee0a25ea0c747a78a44bd68402ae76b0e57b4fd80bc31a51f4042a8` |
| 31 | `theorem` | [not_pos_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/not-pos-pow-dvd--3fef59b559cd22f2ae4d6d3f.md) | 224 | `result-track:3fef59b559cd22f2ae4d6d3fcd86f93482ee4b1a3e502390bdfaf8e61b92a627` |
| 32 | `theorem` | [pow_dvd_of_le_of_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-dvd-of-le-of-pow-dvd--3159e6f3baf27ec89f695930.md) | 236 | `result-track:3159e6f3baf27ec89f6959309105664b24a510fd08ca0f43adf63d12702f4933` |
| 33 | `theorem` | [dvd_of_pow_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/dvd-of-pow-dvd--5b0058c7cf88d33132bd4a4d.md) | 240 | `result-track:5b0058c7cf88d33132bd4a4d3207d3c6b9e90625d3dd9d0332a735e19639ed3c` |
| 34 | `theorem` | [pow_div](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/pow-div--2ea790c75e15c15c411ec6a7.md) | 244 | `result-track:2ea790c75e15c15c411ec6a749b34425e2dd69cffb329487869d52c1f74dfbef` |
| 35 | `theorem` | [lt_of_pow_dvd_right](../../../../../mathematics/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/declarations/lt-of-pow-dvd-right--eaae1722fd626df6af056245.md) | 248 | `result-track:eaae1722fd626df6af056245e34bf4fc99e4cf3b39adf8678c072c2ef17856e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
