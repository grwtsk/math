# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f609915dc38e950cba7e449fbaa666a399120749",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f609915dc38e950cba7e449fbaa666a399120749`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Charpoly.ToMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Univ` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial--2c260cddf74306c14ca5f675.md) | 80 | `declaration-track:2c260cddf74306c14ca5f675834506912ce89a5dc953b39e9b97dfaa123b67fc` |
| 2 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-eval-eq-apply--ba5c5dee48c242ae0c517f4c.md) | 83 | `result-track:ba5c5dee48c242ae0c517f4c96eeed7746edbd05c2210d19f0826d452dc8459f` |
| 3 | `lemma` | [toMvPolynomial_map](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-map--6fb3467afeb4302ac03769d2.md) | 88 | `result-track:6fb3467afeb4302ac03769d2518cbb7b78de1490747448940d9f49904860aa19` |
| 4 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-ishomogeneous--ad1be9c2f0daf5bcafd44e92.md) | 92 | `result-track:ad1be9c2f0daf5bcafd44e929cd56219d53d457feba360dda3b396f5f6d9b27c` |
| 5 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-totaldegree-le--2511fc8e1738c1bd39a19755.md) | 100 | `result-track:2511fc8e1738c1bd39a1975520be80233dfe553d6d3becbf54dfa87003829424` |
| 6 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-constantcoeff--15f1c60e0ffd67523d9466f4.md) | 105 | `result-track:15f1c60e0ffd67523d9466f4506450f5f68f5c357e61344fec2a68a02d176d7b` |
| 7 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-zero--2a4bde3af649554814ce3991.md) | 111 | `result-track:2a4bde3af649554814ce3991e2d8b42a2eec1e14830b0b89ef4c880581f183ff` |
| 8 | `lemma` | [toMvPolynomial_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-one--d44c3fa6068e43f1835cb8e3.md) | 115 | `result-track:d44c3fa6068e43f1835cb8e335d691beae17b6af57b3ff503d41200df35e017a` |
| 9 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-add--91c1e8bbe4576524d1b3bb5d.md) | 124 | `result-track:91c1e8bbe4576524d1b3bb5d54a7bc4e81ab50cf60ab1c71c37cb92b533f8153` |
| 10 | `lemma` | [toMvPolynomial_mul](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-mul--ae0917366b90958f48689bf4.md) | 129 | `result-track:ae0917366b90958f48689bf4370d1165f004f4e9e9d7fafece1043b634e4778b` |
| 11 | `def` | [toMvPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial--7149c7e2d5ff6acbe8fe5d75.md) | 157 | `declaration-track:7149c7e2d5ff6acbe8fe5d759fba6a26861d1116792c7af42012fb867f48b1d5` |
| 12 | `lemma` | [toMvPolynomial_eval_eq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-eval-eq-apply--fff9de3c4f7d1099bf459b75.md) | 161 | `result-track:fff9de3c4f7d1099bf459b75867dd9310305a8379c02d42526083a91355a3e0f` |
| 13 | `lemma` | [toMvPolynomial_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-basechange--39e67a0ad7647f7cd6cb82de.md) | 167 | `result-track:39e67a0ad7647f7cd6cb82de096f7950afad682c832de85bcd35b46f7061a6af` |
| 14 | `lemma` | [toMvPolynomial_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-ishomogeneous--398dbbbb4342addc90d6e6e7.md) | 172 | `result-track:398dbbbb4342addc90d6e6e7ff39fce3f5290fb092c2d067a1b4d824d0823dd7` |
| 15 | `lemma` | [toMvPolynomial_totalDegree_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-totaldegree-le--5c206a8dd147abdf15d77ad8.md) | 176 | `result-track:5c206a8dd147abdf15d77ad8206586c590479899b527b78a254348a30b03fdeb` |
| 16 | `lemma` | [toMvPolynomial_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-constantcoeff--08ebd85f5d584d5e23ccd255.md) | 181 | `result-track:08ebd85f5d584d5e23ccd2553323416d7b336d86f55e98631af865d67e7c81aa` |
| 17 | `lemma` | [toMvPolynomial_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-zero--6b53deb6e7634bc879b200f4.md) | 186 | `result-track:6b53deb6e7634bc879b200f454abf7081c62d2549fb5a48631833ec2a8987d93` |
| 18 | `lemma` | [toMvPolynomial_id](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-id--45dc6813ae3a9335d5d9bb04.md) | 190 | `result-track:45dc6813ae3a9335d5d9bb04e4b5a0ba305873aecd1a62645630fe22619f9b38` |
| 19 | `lemma` | [toMvPolynomial_add](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-add--78a79cad384db8fd9588e2d2.md) | 193 | `result-track:78a79cad384db8fd9588e2d29ff7d9b98f6b2620bdecb8f85e58963c6d8cec30` |
| 20 | `lemma` | [toMvPolynomial_comp](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/tomvpolynomial-comp--ce95f34b5ca64ca8d9640f52.md) | 206 | `result-track:ce95f34b5ca64ca8d9640f52d1c202e6ef01b66c107aa4e5381124a82e94b8c4` |
| 21 | `def` | [polyCharpolyAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux--892c7121625038ee8aaff905.md) | 238 | `declaration-track:892c7121625038ee8aaff905405a4f2e5c63bbd3da14a11222ef665df342b92b` |
| 22 | `lemma` | [polyCharpolyAux_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-basechange--5d95935a680a372476d08430.md) | 242 | `result-track:5d95935a680a372476d0843091ad240ae10d088403e4c9a27ebb6f57087770ed` |
| 23 | `lemma` | [polyCharpolyAux_map_eq_toMatrix_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-map-eq-tomatrix-charpoly--6316f8c02c7496814e675c3c.md) | 276 | `result-track:6316f8c02c7496814e675c3cdfcf6c81eb306f814ec53e8279c5c3baa1bf6262` |
| 24 | `lemma` | [polyCharpolyAux_eval_eq_toMatrix_charpoly_coeff](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-eval-eq-tomatrix-charpoly-coeff--e6c26f93becfda75c2ff0a9f.md) | 287 | `result-track:e6c26f93becfda75c2ff0a9f03eccdad6d10a932bd456ec69653cef62218d1d7` |
| 25 | `lemma` | [polyCharpolyAux_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-map-eq-charpoly--fef9d03e6cfa84613aa47bec.md) | 293 | `result-track:fef9d03e6cfa84613aa47beca010a7b87c06e240bf92ae060bf367fd8502c405` |
| 26 | `lemma` | [polyCharpolyAux_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-coeff-eval--a03df5e729d38feace6c9f69.md) | 300 | `result-track:a03df5e729d38feace6c9f6909521868c26a37196765ddfe66e7729a8c9c6922` |
| 27 | `lemma` | [polyCharpolyAux_map_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-map-eval--05706fb3c66f3f7382c5deca.md) | 305 | `result-track:05706fb3c66f3f7382c5deca58c9371e41f2f0480efe709f1ed12a638fb3ac5e` |
| 28 | `lemma` | [polyCharpolyAux_map_aeval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-map-aeval--542b376cd60f8df5ef9133cb.md) | 313 | `result-track:542b376cd60f8df5ef9133cb85e34d5ec3d6831659cbd7d85dad00f8b16cce80` |
| 29 | `lemma` | [polyCharpolyAux_basisIndep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpolyaux-basisindep--30c22626d1f52cfc7ff11fba.md) | 333 | `result-track:30c22626d1f52cfc7ff11fba9026c9f3dac8bb00dd4312f81fa128469587fa7c` |
| 30 | `def` | [polyCharpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly--c4bf2ad1d90bf76b5b73d022.md) | 360 | `declaration-track:c4bf2ad1d90bf76b5b73d0224ebcb5f052966d000b1b51672bb8b621120f4d24` |
| 31 | `lemma` | [polyCharpoly_eq_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-eq-of-basis--74a48b2ea8fda8efe9c3ec24.md) | 363 | `result-track:74a48b2ea8fda8efe9c3ec2412501ac0f4d9eae3dc474258e3cd6f61d7934ef1` |
| 32 | `lemma` | [polyCharpoly_monic](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-monic--4aadfdcbf9bb59a6c3c6fe2e.md) | 369 | `result-track:4aadfdcbf9bb59a6c3c6fe2e2925f560a3c467f0ddbf0a93ca1c7bac7b5a898c` |
| 33 | `lemma` | [polyCharpoly_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-ne-zero--c4d21463a3eeefa14adace19.md) | 372 | `result-track:c4d21463a3eeefa14adace1999408a502fea01122c6201f86273088783e25f57` |
| 34 | `lemma` | [polyCharpoly_natDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-natdegree--cefa27bb85d9a671705d420e.md) | 376 | `result-track:cefa27bb85d9a671705d420e0863b50248764777ccea1655358bf31bd36b2f25` |
| 35 | `lemma` | [polyCharpoly_coeff_isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-coeff-ishomogeneous--f866cf600baa6fc9e036f33d.md) | 381 | `result-track:f866cf600baa6fc9e036f33d518d51244c44359dafe1052384ac46271e309fbb` |
| 36 | `lemma` | [polyCharpoly_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-basechange--e3e17498e95aa21a965738af.md) | 390 | `result-track:e3e17498e95aa21a965738af338a565a44a270fbf6597cfc41b2922f7042dc39` |
| 37 | `lemma` | [polyCharpoly_map_eq_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-map-eq-charpoly--a1d46e582f73eba8034c5c4a.md) | 398 | `result-track:a1d46e582f73eba8034c5c4a1d53de5d6c5ee2056738b47eed934bf63dafebe3` |
| 38 | `lemma` | [polyCharpoly_coeff_eval](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-coeff-eval--41162a91697c1f4a209a4cfc.md) | 403 | `result-track:41162a91697c1f4a209a4cfc0b888208c120626f88b5025c044acdbfacf55178` |
| 39 | `lemma` | [polyCharpoly_coeff_eq_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-coeff-eq-zero-of-basis--db6d6e59cf30b6642ba830b6.md) | 407 | `result-track:db6d6e59cf30b6642ba830b6d65de0d0db280e5a7982780563ea9adb2b62d738` |
| 40 | `lemma` | [polyCharpoly_coeff_eq_zero_iff_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-coeff-eq-zero-iff-of-basis--74ac5dd833f412224f9ace35.md) | 418 | `result-track:74ac5dd833f412224f9ace351b68be6fa74be1fbbaa9be49a416ed2da1d30f00` |
| 41 | `def` | [nilRankAux](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrankaux--869fcc7b1cb83db7c9e1ec84.md) | 433 | `declaration-track:869fcc7b1cb83db7c9e1ec84a0a0c4dc12ae7e840381346f4694659aaaf3952e` |
| 42 | `lemma` | [polyCharpoly_coeff_nilRankAux_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-coeff-nilrankaux-ne-zero--b9c76a2c903fea9aba1db6ff.md) | 436 | `result-track:b9c76a2c903fea9aba1db6ff6c5fda8226cdea1151303e6e23767273e011052b` |
| 43 | `lemma` | [nilRankAux_le](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrankaux-le--fd4409703732a7b5ac483e40.md) | 441 | `result-track:fd4409703732a7b5ac483e40daf2872b0862e47b47ed1c5076866d598c2ca01f` |
| 44 | `lemma` | [nilRankAux_basis_indep](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrankaux-basis-indep--396f61f9d324db4caa8abe91.md) | 447 | `result-track:396f61f9d324db4caa8abe915622ad028dcd9fc3aa4a69585a9331ec4cce620a` |
| 45 | `def` | [nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrank--9310c8cd76d18ac1b0137786.md) | 463 | `declaration-track:9310c8cd76d18ac1b01377868165ea95762a5506f54e5212551c88b1ccad9ed3` |
| 46 | `lemma` | [nilRank_eq_polyCharpoly_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrank-eq-polycharpoly-nattrailingdegree--1cc35d0fc2396c91a061f5ab.md) | 469 | `result-track:1cc35d0fc2396c91a061f5ab4a1a37adb4ff40ec597bfaa8acc84e7b1a651a46` |
| 47 | `lemma` | [polyCharpoly_coeff_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/polycharpoly-coeff-nilrank-ne-zero--c1f06af79d60aacf48ec8e4b.md) | 473 | `result-track:c1f06af79d60aacf48ec8e4baca34872bdaa24b4398a20974e7a14a0eae458dc` |
| 48 | `lemma` | [nilRank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrank-le-card--b262f43e42485eb9dc8f2c5f.md) | 480 | `result-track:b262f43e42485eb9dc8f2c5f039c6a6a8f2ab0ceb4c7941bf6bb34b21ba5227f` |
| 49 | `lemma` | [nilRank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrank-le-finrank--c645b3d7b7a491d76296e67f.md) | 486 | `result-track:c645b3d7b7a491d76296e67fe96f9ce1da579251f507135f043f981ca79af6fc` |
| 50 | `lemma` | [nilRank_le_natTrailingDegree_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/nilrank-le-nattrailingdegree-charpoly--b44549bc79b6c2aeec2c9c7d.md) | 489 | `result-track:b44549bc79b6c2aeec2c9c7d740f8b996bef9578377042b64d1c7447a531203b` |
| 51 | `def` | [IsNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/isnilregular--3ff3630e566b2b7a28b552a7.md) | 506 | `declaration-track:3ff3630e566b2b7a28b552a74649859b1100f2d83f4e314662c46f5c17f4a167` |
| 52 | `lemma` | [isNilRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/isnilregular-def--8ae339bb9cfd1b509397b7c3.md) | 511 | `result-track:8ae339bb9cfd1b509397b7c3f0b3ff720e4854c7a39461f5a88898ff1616c637` |
| 53 | `lemma` | [isNilRegular_iff_coeff_polyCharpoly_nilRank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/isnilregular-iff-coeff-polycharpoly-nilrank-ne-zero--9f78d7684483e8546c0e5695.md) | 514 | `result-track:9f78d7684483e8546c0e5695a6b76f87c6dc448630c304ce9a44ec1d4687454f` |
| 54 | `lemma` | [isNilRegular_iff_natTrailingDegree_charpoly_eq_nilRank](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/isnilregular-iff-nattrailingdegree-charpoly-eq-nilrank--0a6f6e9717538dfecde67b73.md) | 520 | `result-track:0a6f6e9717538dfecde67b73eb6e74e22fd34bf9598d9c1029af94ad4a4e1a0f` |
| 55 | `lemma` | [exists_isNilRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/exists-isnilregular-of-finrank-le-card--f0c8f11f6264207cba01c235.md) | 538 | `result-track:f0c8f11f6264207cba01c235c863331b8de8d506d797b86157d12babc514c2f5` |
| 56 | `lemma` | [exists_isNilRegular](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/declarations/exists-isnilregular--04453de8f739b2aca2506329.md) | 556 | `result-track:04453de8f739b2aca2506329c8faa1b7382acfc00ea88e1156e68d8d34caa3d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
