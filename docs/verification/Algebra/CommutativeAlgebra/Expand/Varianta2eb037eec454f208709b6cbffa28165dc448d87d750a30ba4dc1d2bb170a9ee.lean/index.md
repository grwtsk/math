# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "356025ff874c6aa1358c17164e242d15a12bcaa8",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `356025ff874c6aa1358c17164e242d15a12bcaa8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Frobenius` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.RingDivision` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand--96ee2f44a420890cde26bfae.md) | 44 | `declaration-track:96ee2f44a420890cde26bfae8eabc8bf7b42eb69774453a649b6481964978823` |
| 2 | `theorem` | [coe_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/coe-expand--b83e80d3ed2541fdb3c71209.md) | 47 | `result-track:b83e80d3ed2541fdb3c71209fc5aadb4918f6c692fc31053d6a32469e79e3cf1` |
| 3 | `theorem` | [expand_eq_comp_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-eq-comp-x-pow--faf96e35f166af578df3d715.md) | 52 | `result-track:faf96e35f166af578df3d715637a1839312ea10f2caab6341dcabdbfc1d05d14` |
| 4 | `theorem` | [expand_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-eq-sum--9310197650a09aa5217f4913.md) | 54 | `result-track:9310197650a09aa5217f4913d04e292f5c4618b14aa25d16f10d3f6d401f3cc8` |
| 5 | `theorem` | [expand_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-c--6bc32f8084718a01b1af8a96.md) | 58 | `result-track:6bc32f8084718a01b1af8a9685d114e627e6f753ee9007adc7d747ad08577ecc` |
| 6 | `theorem` | [expand_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-x--11df174c0d49a66174e0e43c.md) | 62 | `result-track:11df174c0d49a66174e0e43c9653c8ce820743cdf8ef4a209854dbc0ee81ebd6` |
| 7 | `theorem` | [expand_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-monomial--250c0bc3973a58b1dd26c401.md) | 66 | `result-track:250c0bc3973a58b1dd26c40122187def1c15aef8670998def50022215be7f2b2` |
| 8 | `theorem` | [expand_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-expand--0e209b01f65d8657c0658d0b.md) | 69 | `result-track:0e209b01f65d8657c0658d0bcf1e445474821f1a83673fd04f838010e4068d18` |
| 9 | `theorem` | [expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-mul--05158eee212033f78b57f6bc.md) | 74 | `result-track:05158eee212033f78b57f6bc037e8d00e83f6890c02a36dc329524a60e4a16fe` |
| 10 | `theorem` | [expand_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-zero--a8e0b86295c46e958ae0d473.md) | 78 | `result-track:a8e0b86295c46e958ae0d4733316b6af177df2eccb6c2c97c1ff4fc152177533` |
| 11 | `theorem` | [expand_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-one--f989f5af85e986c6817dadc1.md) | 81 | `result-track:f989f5af85e986c6817dadc1288c390570a543c23d7f691f4329d849b71cab1a` |
| 12 | `theorem` | [expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-pow--544a51b525557ab7af3fbc60.md) | 86 | `result-track:544a51b525557ab7af3fbc60f53dd50d99f9168fd9e248131c95f1c18d548d65` |
| 13 | `theorem` | [derivative_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/derivative-expand--de6f115d43b4c2250cd2c786.md) | 90 | `result-track:de6f115d43b4c2250cd2c7864087f2e2cee7cce4f3a9ab1bb2c91d0c00a48f0d` |
| 14 | `theorem` | [coeff_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/coeff-expand--baf757b5d6b4b6b535fe027f.md) | 94 | `result-track:baf757b5d6b4b6b535fe027f0e7053bbd44748243f27190799db98f112b520b6` |
| 15 | `theorem` | [coeff_expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/coeff-expand-mul--adc9fe61086e71fa962b4327.md) | 114 | `result-track:adc9fe61086e71fa962b4327a0e0f882824554e08f7de69bb8bae2459f76c049` |
| 16 | `theorem` | [coeff_expand_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/coeff-expand-mul--93b69fec2512826670ddc840.md) | 119 | `result-track:93b69fec2512826670ddc840d31b3e464aad734d5966e0cc80324b2f653a6249` |
| 17 | `theorem` | [expand_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-injective--02a457f3206da5e8a3e7faa6.md) | 123 | `result-track:02a457f3206da5e8a3e7faa6fec86490a78b39bc16ce0d82bde090a24ade2170` |
| 18 | `theorem` | [expand_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-inj--18d6bae34ee008470b876349.md) | 126 | `result-track:18d6bae34ee008470b8763490bbb7d64e9c1c858b2275ab0e1886fb78779b58a` |
| 19 | `theorem` | [expand_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-eq-zero--3d068c3081cd67ef2e4fc8d1.md) | 129 | `result-track:3d068c3081cd67ef2e4fc8d108383d23d2ec16fb423868d89237721e26bfa84a` |
| 20 | `theorem` | [expand_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-ne-zero--3bceefdb69ea202936d8df55.md) | 132 | `result-track:3bceefdb69ea202936d8df55264f4291198b9d084ae9b3775312171c6ff559d5` |
| 21 | `theorem` | [expand_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-eq-c--b6d326f63c411b191397a744.md) | 135 | `result-track:b6d326f63c411b191397a744597127db68800731e719550b827b67d6ebac5a63` |
| 22 | `theorem` | [natDegree_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/natdegree-expand--b84eb073c7465d111d4ab39a.md) | 138 | `result-track:b84eb073c7465d111d4ab39a8022cec7100fa8453884f4791313d440b30fc57e` |
| 23 | `theorem` | [leadingCoeff_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/leadingcoeff-expand--813e1d5a6a188707d6f597b3.md) | 158 | `result-track:813e1d5a6a188707d6f597b3627b9ac5ec9e88c5de011500c66179fc14b14728` |
| 24 | `theorem` | [monic_expand_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/monic-expand-iff--dbbcaac101243f4762801445.md) | 162 | `result-track:dbbcaac101243f4762801445ef037d6ded08023481f1b2d97d0a23b4719e63af` |
| 25 | `theorem` | [map_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/map-expand--1c8eb43cbc30b148e82efb80.md) | 167 | `result-track:1c8eb43cbc30b148e82efb80a9fb00675c1608cf6a9aa0492d20aae0f2ad4959` |
| 26 | `theorem` | [expand_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-eval--5b9447951794e34f4d76008a.md) | 176 | `result-track:5b9447951794e34f4d76008a982bbd04ca8fdf5a1e5bd65ad463c3c3e13a4889` |
| 27 | `theorem` | [expand_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-aeval--7420aa1d075dc94f3b60fa9a.md) | 181 | `result-track:7420aa1d075dc94f3b60fa9a0ef37761c8a6171a1ea27960864523a889664df7` |
| 28 | `def` | [contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/contract--665878074950a52d5eed7bc8.md) | 187 | `declaration-track:665878074950a52d5eed7bc8336bf4910584807aa6063a470f29e6c9353535bc` |
| 29 | `theorem` | [coeff_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/coeff-contract--051df39778c401909780dd5f.md) | 190 | `result-track:051df39778c401909780dd5f05efc31b74d6302eb2c4660afe10e4d124cf35ed` |
| 30 | `theorem` | [map_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/map-contract--4f366dae8a41f1140fbb142f.md) | 201 | `result-track:4f366dae8a41f1140fbb142fad42550360fd729f5381b515e50ea3a7b985f86e` |
| 31 | `theorem` | [contract_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/contract-expand--839db8a411ee6ba73d6bccc3.md) | 205 | `result-track:839db8a411ee6ba73d6bccc303e03a12712d93807bd6af2499137c2751cfaa6e` |
| 32 | `theorem` | [contract_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/contract-one--000e0fe803ce721d9770a81b.md) | 209 | `result-track:000e0fe803ce721d9770a81b009f24895a87005709ff2fdc8631e05609705390` |
| 33 | `theorem` | [contract_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/contract-c--005779d4420843a6c9b0c965.md) | 212 | `result-track:005779d4420843a6c9b0c965655d9e580299d9785aac3579760c2e0e83ee5615` |
| 34 | `theorem` | [contract_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/contract-add--069765ce88dfea8ffed6e438.md) | 214 | `result-track:069765ce88dfea8ffed6e438532cbc1977482ff0d59e39d62662fc4f1de7baa0` |
| 35 | `theorem` | [contract_mul_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/contract-mul-expand--c14e640d5a558abc5c763da0.md) | 218 | `result-track:c14e640d5a558abc5c763da05d786b58691ff1f9759b40f89a1819eace0e87ed` |
| 36 | `theorem` | [isCoprime_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/iscoprime-expand--4a1fc25f30cd2244d1981652.md) | 235 | `result-track:4a1fc25f30cd2244d198165224dd5a05efc14161dc1a18bf5a40152b36362cc6` |
| 37 | `theorem` | [expand_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-contract--66cf066acaffdbe198cf1fa8.md) | 242 | `result-track:66cf066acaffdbe198cf1fa87d2e9f832ef0074a2c34c502b23356fa9077f4b9` |
| 38 | `theorem` | [expand_contract'](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-contract--a1686c0e45ae102bd7e3949d.md) | 260 | `result-track:a1686c0e45ae102bd7e3949d307a0ef3b728e2ba2999abe5c959db42a09f9de7` |
| 39 | `theorem` | [expand_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/expand-char--715c9971ce6739235a42737e.md) | 266 | `result-track:715c9971ce6739235a42737ec0180decfbfe5b99a8140c739aed65d76245ed1d` |
| 40 | `theorem` | [map_expand_pow_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/map-expand-pow-char--b6ed0cb815036a8eb1bf147f.md) | 273 | `result-track:b6ed0cb815036a8eb1bf147f1c317ab19bc7cce89f2a73634d41f4ece11a045a` |
| 41 | `theorem` | [rootMultiplicity_expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/rootmultiplicity-expand-pow--cabc20ce77314a2cc04932ee.md) | 290 | `result-track:cabc20ce77314a2cc04932eed759b03d368e5dd03efa9937f8e2d063cf75dab0` |
| 42 | `theorem` | [rootMultiplicity_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/rootmultiplicity-expand--1395c817e0c19e3fb2458fe6.md) | 299 | `result-track:1395c817e0c19e3fb2458fe6a68c4b4b019e0250460780125fac73ca1598704e` |
| 43 | `theorem` | [isLocalHom_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/islocalhom-expand--9d7215dd2a046068f218e8d2.md) | 309 | `result-track:9d7215dd2a046068f218e8d2bf6c9aeaf2e5182ad7cd9a0da1fe461f50b85269` |
| 44 | `theorem` | [of_irreducible_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/of-irreducible-expand--b154575db26c8c95c738d67d.md) | 317 | `result-track:b154575db26c8c95c738d67d375c85c119268b96b3d090d0a63011865bc52c28` |
| 45 | `theorem` | [of_irreducible_expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Varianta2eb037eec454f208709b6cbffa28165dc448d87d750a30ba4dc1d2bb170a9ee.lean/declarations/of-irreducible-expand-pow--225a3d5c9c8c2b58c90009e2.md) | 322 | `result-track:225a3d5c9c8c2b58c90009e2cdb29a1e45ca8505927e8ac1f7f2f516d648ff34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
