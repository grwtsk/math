# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Content.Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b0c0c4365333350b69021e1d108f5ae1d277c6a",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b0c0c4365333350b69021e1d108f5ae1d277c6a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.CancelLeads` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive--cfd687dacf97cf82b917f300.md) | 41 | `declaration-track:cfd687dacf97cf82b917f300290447793ad0ee5fe3043b12e2e06b7d56825a57` |
| 2 | `theorem` | [isPrimitive_iff_isUnit_of_C_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-iff-isunit-of-c-dvd--2b2f090fe3aa2d2d881447fe.md) | 44 | `result-track:2b2f090fe3aa2d2d881447febe6a2980da1e8803f153c4dd4f93a7019f7a9364` |
| 3 | `theorem` | [isPrimitive_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-one--f70bfbbd2f5d453011f13486.md) | 48 | `result-track:f70bfbbd2f5d453011f1348655fc6812af184470ee7f3b6bf29b2222b5a2b3a4` |
| 4 | `theorem` | [Monic.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/monic-isprimitive--1941f2b0d3d551372170a466.md) | 51 | `result-track:1941f2b0d3d551372170a466eec89d32c92d617f21489fb994b488eec3af93e4` |
| 5 | `theorem` | [IsPrimitive.ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-ne-zero--137a5d2a43e8d99b88a2d86f.md) | 55 | `result-track:137a5d2a43e8d99b88a2d86f5879ba230e8a3724156696e296b0f96ee0d3b8f5` |
| 6 | `theorem` | [isPrimitive_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-of-dvd--b5705217770a109847fa6830.md) | 59 | `result-track:b5705217770a109847fa683016e3e83aa31fda8cac6ce18f52ad14248d5b0f66` |
| 7 | `theorem` | [_root_.Irreducible.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/root-irreducible-isprimitive--5bc3abcff197cd6ea68cb9a3.md) | 63 | `result-track:5bc3abcff197cd6ea68cb9a3f82fe65190b41d217cd3d2383abcd8721dc965bf` |
| 8 | `def` | [content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content--5c1a5860baf5b4dcb03f47b5.md) | 81 | `declaration-track:5c1a5860baf5b4dcb03f47b5ace9c85c396196357970d83db0412deb29dc9203` |
| 9 | `theorem` | [content_dvd_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-dvd-coeff--53b8d7c4022552d17e0aea34.md) | 84 | `result-track:53b8d7c4022552d17e0aea34f0b1b4abeef1f05c68865ae61104f8ad9a017998` |
| 10 | `theorem` | [content_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-c--e0180668d9baa0fe8d14e4ff.md) | 92 | `result-track:e0180668d9baa0fe8d14e4fffa6c9f79add4478e97125aa2114d30dae9a2d3a6` |
| 11 | `theorem` | [content_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-zero--ad79c07f8a5b248a3ee160aa.md) | 100 | `result-track:ad79c07f8a5b248a3ee160aa73c7cad9f0288afb2f8087dd7492ed094b22109e` |
| 12 | `theorem` | [content_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-one--5b78779688fa2c71e397dca4.md) | 103 | `result-track:5b78779688fa2c71e397dca427be9a31fbc371453e60e0950a7be92d48542fd5` |
| 13 | `theorem` | [content_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-x-mul--2a1abf5fb675a03903166027.md) | 105 | `result-track:2a1abf5fb675a039031660275776f7531b39ffd7342e302cfafd05056a444d86` |
| 14 | `theorem` | [content_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-x-pow--dd3fbb2326b63c28035ac176.md) | 128 | `result-track:dd3fbb2326b63c28035ac17604e356c1e8e8f9b74ca5ea08773840ed9a37debe` |
| 15 | `theorem` | [content_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-x--f34fa26fdf3307913cd27abd.md) | 134 | `result-track:f34fa26fdf3307913cd27abda82addc6e06f7beb07525b670d199b47da095e10` |
| 16 | `theorem` | [content_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-c-mul--8ea9adae0fddf9da6dcdaf5c.md) | 136 | `result-track:8ea9adae0fddf9da6dcdaf5c2311f2d7f8964dd2d08725a95330b519b71dfda6` |
| 17 | `theorem` | [content_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-monomial--107d2007650747a1e64dc8e9.md) | 142 | `result-track:107d2007650747a1e64dc8e9611b0064cd091088c1d4e27921ba353f1581ccec` |
| 18 | `theorem` | [content_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-eq-zero-iff--c90ec6ef4d199d256475c618.md) | 145 | `result-track:c90ec6ef4d199d256475c618da36f1ca4ee8a8d1b1b5f25093fea22a57c71fbd` |
| 19 | `theorem` | [normalize_content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/normalize-content--11922bc37a450d273addd07e.md) | 158 | `result-track:11922bc37a450d273addd07ef91b32d01dfca4a87381f8c735707d502a06d131` |
| 20 | `theorem` | [normUnit_content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/normunit-content--f72d9a26a49df5bbe54eacca.md) | 162 | `result-track:f72d9a26a49df5bbe54eaccabddf89597564c56184910ade4851848a5dd5c04d` |
| 21 | `theorem` | [content_eq_gcd_range_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-eq-gcd-range-of-lt--14e9ea037f1c08536622424b.md) | 169 | `result-track:14e9ea037f1c08536622424b2a81e80e5041d448734c0019f4eaad7463e370b6` |
| 22 | `theorem` | [content_eq_gcd_range_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-eq-gcd-range-succ--fbd81b952b8d3d5dd00d9bf0.md) | 182 | `result-track:fbd81b952b8d3d5dd00d9bf031036d371d24ec9cd0a15a36fefb8567189f6366` |
| 23 | `theorem` | [content_eq_gcd_leadingCoeff_content_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-eq-gcd-leadingcoeff-content-eraselead--0c94b972df26d9b30daabd94.md) | 186 | `result-track:0c94b972df26d9b30daabd946acbbd52b74b6c6b422ceb5d2059a4442b9750ae` |
| 24 | `theorem` | [dvd_content_iff_C_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/dvd-content-iff-c-dvd--d8b515996c2ac3161fa492a5.md) | 197 | `result-track:d8b515996c2ac3161fa492a5028abb6dfe3af56ec6a225da3c5def456f7634f0` |
| 25 | `theorem` | [C_content_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/c-content-dvd--7d9da6c8204e9f1d38dbac95.md) | 207 | `result-track:7d9da6c8204e9f1d38dbac95b3a49da409517a9c7b9d361d6fb47c293780a11f` |
| 26 | `theorem` | [isPrimitive_iff_content_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-iff-content-eq-one--8a6705479942656967505a5c.md) | 210 | `result-track:8a6705479942656967505a5c91e28d9c6cd5bb536acf603edfe62cb3d538f13c` |
| 27 | `theorem` | [IsPrimitive.content_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-content-eq-one--96a08b061b02fd1bb4e787f7.md) | 215 | `result-track:96a08b061b02fd1bb4e787f747e219df5cf0675ef5f9582a595d56917881a88c` |
| 28 | `def` | [primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/primpart--68cff5e9ddaaebc9fd19e436.md) | 222 | `declaration-track:68cff5e9ddaaebc9fd19e4361fd9d502884abf253be6528d97ba0b04061ef43f` |
| 29 | `theorem` | [eq_C_content_mul_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/eq-c-content-mul-primpart--150e969056f9e40c7e7a415c.md) | 226 | `result-track:150e969056f9e40c7e7a415c79aca03081d1a7415d3d8f04b2dd0b74e5ab74be` |
| 30 | `theorem` | [primPart_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/primpart-zero--3b28d664837afd5fc0c434f9.md) | 231 | `result-track:3b28d664837afd5fc0c434f9de22ffa867b91ba54d1328477270e6fb59623219` |
| 31 | `theorem` | [isPrimitive_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-primpart--89c739a01a0239cb93eadf05.md) | 234 | `result-track:89c739a01a0239cb93eadf05cc646fe2d6df665099fe618572f2069cc8e05054` |
| 32 | `theorem` | [content_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-primpart--bac81d8e707cd7686723e06a.md) | 241 | `result-track:bac81d8e707cd7686723e06a0810434f6d598c1597588df88b874e6a6a163190` |
| 33 | `theorem` | [primPart_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/primpart-ne-zero--c796825c21da16f6f951e74a.md) | 244 | `result-track:c796825c21da16f6f951e74a27cd6d1e273cc8401e9b98271f85e45c85fd6101` |
| 34 | `theorem` | [natDegree_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/natdegree-primpart--72e3f1553fc742243376705d.md) | 247 | `result-track:72e3f1553fc742243376705d8f87780f33daeaca9668182b063ddc3e386f5ba8` |
| 35 | `theorem` | [IsPrimitive.primPart_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-primpart-eq--f7eb39074e0c491f4ee5e4c3.md) | 255 | `result-track:f7eb39074e0c491f4ee5e4c319772cb795c8fe6437e140d58bd0d0f1b77ef77b` |
| 36 | `theorem` | [isUnit_primPart_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isunit-primpart-c--fc445ae45a640d77cb1650e2.md) | 258 | `result-track:fc445ae45a640d77cb1650e2fd71e8796065dc7003aa2169e4aa012433e59942` |
| 37 | `theorem` | [primPart_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/primpart-dvd--951f8dcebbc9e8d77664c587.md) | 272 | `result-track:951f8dcebbc9e8d77664c587ac7acd05a72f424234ed6605974d5e6e98b14224` |
| 38 | `theorem` | [aeval_primPart_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/aeval-primpart-eq-zero--c9582631b17ed17102e95791.md) | 275 | `result-track:c9582631b17ed17102e9579168fd64c6d60c1ff2363b64c6b623eb6af463d0c2` |
| 39 | `theorem` | [eval₂_primPart_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/eval-primpart-eq-zero--0afe074d40e6f8780814c254.md) | 284 | `result-track:0afe074d40e6f8780814c254dea918028ec8b3770e483b99bfed8439b51d2804` |
| 40 | `theorem` | [gcd_content_eq_of_dvd_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/gcd-content-eq-of-dvd-sub--33f04aa91d48e252f32918aa.md) | 295 | `result-track:33f04aa91d48e252f32918aa62a3bf0f51506cc0de35a4b4b574058a73bb9bb0` |
| 41 | `theorem` | [content_mul_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-mul-aux--e6d9fcf12fdccc8f28d607f2.md) | 307 | `result-track:e6d9fcf12fdccc8f28d607f2f1893302782af3cf955bf8d1adbb6a48722196e8` |
| 42 | `theorem` | [content_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/content-mul--f6909c1ef72e723bdb911f74.md) | 317 | `result-track:f6909c1ef72e723bdb911f74d691033697cb0e2afdbf3ba05f81a800348f608a` |
| 43 | `theorem` | [IsPrimitive.mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-mul--fe3b1ac7473e098825fa6acc.md) | 362 | `result-track:fe3b1ac7473e098825fa6acc215b674f4d919bbe8551d6ba340154d9d798854c` |
| 44 | `theorem` | [primPart_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/primpart-mul--a7d33befd5e1c807670b2814.md) | 367 | `result-track:a7d33befd5e1c807670b28143f88f5e747e449893c9865635ddaedb7210b8707` |
| 45 | `theorem` | [IsPrimitive.dvd_primPart_iff_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/isprimitive-dvd-primpart-iff-dvd--5400fe2f87802b4a9ae2f64f.md) | 377 | `result-track:5400fe2f87802b4a9ae2f64f12d8769892ff5f94bb4e48fd6795095125efbfbe` |
| 46 | `theorem` | [exists_primitive_lcm_of_isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/exists-primitive-lcm-of-isprimitive--dc78b26b19be62923e5dfa58.md) | 384 | `result-track:dc78b26b19be62923e5dfa58aaee16ac1e4ba5746a1aee96c9651ecac228bec7` |
| 47 | `theorem` | [dvd_iff_content_dvd_content_and_primPart_dvd_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/dvd-iff-content-dvd-content-and-primpart-dvd-primpart--229a5bd53558d19318f71de8.md) | 426 | `result-track:229a5bd53558d19318f71de86f45b4b626396683a4c15d4e16376856465d4efa` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/instance--c6538b769c19691b8b4f0d6c.md) | 435 | `declaration-track:c6538b769c19691b8b4f0d6c6950c7c0a7a51b3a333122b4d215ac8d99e5cf59` |
| 49 | `theorem` | [degree_gcd_le_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/degree-gcd-le-left--247f95ea0824c2ac4af5fe52.md) | 453 | `result-track:247f95ea0824c2ac4af5fe52645835193a19c72cf481ee15933b2d4d3446b69d` |
| 50 | `theorem` | [degree_gcd_le_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.lean/declarations/degree-gcd-le-right--8dca326acaaa0e3d872de5b4.md) | 457 | `result-track:8dca326acaaa0e3d872de5b42f4431405b4b80ebc776d9115b95717d9719d89d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
