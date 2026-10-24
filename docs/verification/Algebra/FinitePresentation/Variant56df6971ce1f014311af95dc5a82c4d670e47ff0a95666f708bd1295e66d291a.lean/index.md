# Verification target: GRWTSK.Algebra.FinitePresentation.Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c9497aaf8d67d1e6ba280d70af18053b158f0e9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/index.md) · [Full source](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c9497aaf8d67d1e6ba280d70af18053b158f0e9`.

Source path: `GRWTSK/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Ideal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Tower` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.FinitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/algebra-finitepresentation--3a125be5f66f8b22d8527810.md) | 41 | `declaration-track:3a125be5f66f8b22d852781086ce286a7d7879609bd5526451eaa9f25ee36723` |
| 2 | `instance` | [of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-finitepresentation--9d96dbb01d3dad459d3ac919.md) | 53 | `declaration-track:9d96dbb01d3dad459d3ac9194ebee54bc995b66670917cc083e3e2260750a2ba` |
| 3 | `theorem` | [of_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-finitetype--f6405c10bbac1728bc568cb4.md) | 66 | `result-track:f6405c10bbac1728bc568cb401c26eedc765603f8f624f80a21fb2f8abad6a54` |
| 4 | `theorem` | [equiv](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/equiv--6a709fb4caa857a387bc488b.md) | 77 | `result-track:6a709fb4caa857a387bc488be8de5f77f03e6fff5e975a10c4f28324f77eb7dd` |
| 5 | `instance` | [mvPolynomial](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/mvpolynomial--b7cfe5115a578b00620afbf5.md) | 98 | `declaration-track:b7cfe5115a578b00620afbf58d4b84543a5e5b1c8dc03a1a573db3c3b737d8a0` |
| 6 | `instance` | [self](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/self--f3ff3f3baaaf5167c041a5dc.md) | 108 | `declaration-track:f3ff3f3baaaf5167c041a5dcdc88f682dc11c81265b5374285a23e9c8d6b6c08` |
| 7 | `instance` | [polynomial](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/polynomial--e6c9f951b42e8dd6bf55a5cb.md) | 113 | `declaration-track:e6c9f951b42e8dd6bf55a5cb8ffb79397ecd20d04edeff2a4db503e5e2718817` |
| 8 | `theorem` | [quotient](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/quotient--492a3454bbfd236650b18451.md) | 122 | `result-track:492a3454bbfd236650b18451d75477b803b60d35d3a17122b62809744cfad751` |
| 9 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-surjective--0754c4746df8a1d1daf7cac1.md) | 133 | `result-track:0754c4746df8a1d1daf7cac1d9e419dbd030477acd7063fa5b0d30df8ad55667` |
| 10 | `theorem` | [iff](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/iff--719cca88c63f92ebf4315963.md) | 139 | `result-track:719cca88c63f92ebf4315963b19f15a73c5510d2644284e38678676ab9b20bc0` |
| 11 | `theorem` | [iff_quotient_mvPolynomial'](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/iff-quotient-mvpolynomial--2ac3ec2f136132184100892a.md) | 151 | `result-track:2ac3ec2f136132184100892aec81e044ebd1d9b839532ac61a2ffc9f605e5b05` |
| 12 | `theorem` | [mvPolynomial_of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/mvpolynomial-of-finitepresentation--e030fb7c5648552bb01ce89f.md) | 172 | `result-track:e030fb7c5648552bb01ce89f64ce22f8d1e87311810865277a47714edf3c2c20` |
| 13 | `theorem` | [trans](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/trans--ab5ea69dbc1f6e496b7a947e.md) | 195 | `result-track:ab5ea69dbc1f6e496b7a947e37dc568538f04485f28a1a1fb79d22cd00e62e99` |
| 14 | `theorem` | [of_restrict_scalars_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-restrict-scalars-finitepresentation--0469f83b492db8f5669bcfb3.md) | 207 | `result-track:0469f83b492db8f5669bcfb3dd41404b9974d047355a342077fe794897edeef5` |
| 15 | `theorem` | [ker_fg_of_mvPolynomial](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/ker-fg-of-mvpolynomial--5e80112f8ac475c81f003df9.md) | 296 | `result-track:5e80112f8ac475c81f003df9bd5cee143a82da9bcd3110ee2d4cc4a990c24fb2` |
| 16 | `theorem` | [ker_fG_of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/ker-fg-of-surjective--52a22e25c45f775ba7891223.md) | 370 | `result-track:52a22e25c45f775ba78912232cbc96f63e28f36324f2a4625411bbca384022b7` |
| 17 | `def` | [FinitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/finitepresentation--9bfeb1711bceb200735910f0.md) | 390 | `declaration-track:9bfeb1711bceb200735910f0e291560ef7d5f725d433bedd1870fc9ce4bc0510` |
| 18 | `lemma` | [finitePresentation_algebraMap](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/finitepresentation-algebramap--e3a9aaef527295dba63e15ce.md) | 394 | `result-track:e3a9aaef527295dba63e15cef7f1c298348cc7036c2383599164b7c374b98318` |
| 19 | `theorem` | [of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-finitepresentation--71934b1e8a99f70a758af174.md) | 402 | `result-track:71934b1e8a99f70a758af1745c7413701176ae1cbe2b9137a07ae5bb557f87dc` |
| 20 | `theorem` | [id](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/id--f695d309b54e384b62ee6e02.md) | 410 | `result-track:f695d309b54e384b62ee6e02ac16bda310762ad5219bc336f88e2755e28ed020` |
| 21 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/comp-surjective--490328d723ed4cbe4f1a9890.md) | 413 | `result-track:490328d723ed4cbe4f1a9890e78381ce09f9e6ec6723e7c5cc58bcb5d4b88cc2` |
| 22 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-surjective--74d3a654a6a412f5add97d2a.md) | 423 | `result-track:74d3a654a6a412f5add97d2a3a0a1cffaa3e5fa1fa099879a8a8a0bee7117d35` |
| 23 | `theorem` | [of_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-finitetype--cbfc5614c0be86519243dcbb.md) | 428 | `result-track:cbfc5614c0be86519243dcbb694b4dba9e2ac3dfe2aa8ff839f570905531e580` |
| 24 | `theorem` | [comp](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/comp--180c8f427c09277a8f2ae4fb.md) | 431 | `result-track:180c8f427c09277a8f2ae4fbdebc8ec8cab9ce8d749a484b23e5a8b28329e4e9` |
| 25 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-comp-finitetype--a3f9ccf7f5f0a5c2f3f4842d.md) | 437 | `result-track:a3f9ccf7f5f0a5c2f3f4842d97442fcb5f1dcd3ebec9c0714f4569fd3957179e` |
| 26 | `lemma` | [polynomial_induction](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/polynomial-induction--be329c3930f17203d59f70d5.md) | 463 | `result-track:be329c3930f17203d59f70d5485de5eb93cd1b63c02a8a76ac10dc9646c4599f` |
| 27 | `def` | [FinitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/finitepresentation--b340b7038804b3955fda417c.md) | 512 | `declaration-track:b340b7038804b3955fda417ca1e0eb6a26dc3996b11fb6743d9d5e1093640c36` |
| 28 | `theorem` | [of_finitePresentation](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-finitepresentation--a2ae95789e6106f8c48d25a2.md) | 517 | `result-track:a2ae95789e6106f8c48d25a2033e73b09b4be8e28ff8fd3ac108c2d30c4fe2bb` |
| 29 | `theorem` | [id](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/id--691ec1ab5fac7af0b4192c48.md) | 526 | `result-track:691ec1ab5fac7af0b4192c48a6da32dfcb9e4386ab73691e945a87a7ed5c9681` |
| 30 | `theorem` | [comp](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/comp--72c035138609b9fedca7bae7.md) | 531 | `result-track:72c035138609b9fedca7bae779336b3b01929ccf4480e298861ea37dac8a5206` |
| 31 | `theorem` | [comp_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/comp-surjective--53d5186c069729b9ae26267e.md) | 535 | `result-track:53d5186c069729b9ae26267e8194f5bc3cbbe3976d4993055448042ea13d7101` |
| 32 | `theorem` | [of_surjective](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-surjective--5e8149c3fbb5df3f001e138d.md) | 539 | `result-track:5e8149c3fbb5df3f001e138db49f66736f39eef1f0a7d14f42e45781e2a3c08a` |
| 33 | `theorem` | [of_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-finitetype--d3eff37a1a49c78fc8f9a0ee.md) | 544 | `result-track:d3eff37a1a49c78fc8f9a0ee6759d1519059bc0361a75ef6b599d8ad692d91c9` |
| 34 | `theorem` | [of_comp_finiteType](../../../../mathematics/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean/declarations/of-comp-finitetype--51e60751db3bfe29f7b1bb51.md) | 547 | `result-track:51e60751db3bfe29f7b1bb51befe6c1467601ead94bc9b4665c6a778593053fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
