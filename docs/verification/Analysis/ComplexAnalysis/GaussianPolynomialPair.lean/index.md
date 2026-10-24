# Verification target: GRWTSK.Analysis.Complex.GaussianPolynomialPair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "169432b99b1099a91d8d3700e9b516df9603aa70",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/GaussianPolynomialPair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `169432b99b1099a91d8d3700e9b516df9603aa70`.

Source path: `GRWTSK/Analysis/Complex/GaussianPolynomialPair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/GaussianPolynomialPair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.GaussianRationalArithmetic`](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Poly](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/poly--882320a61f7466f0cdec0e7e.md) | 22 | `declaration-track:882320a61f7466f0cdec0e7e946aba6832887403a7c2194369d8ae2e7d547af1` |
| 2 | `def` | [eval](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/eval--1c46ed8fb7e19b076411d5c5.md) | 24 | `declaration-track:1c46ed8fb7e19b076411d5c572050c88630c55a58df2d56b754dea6dd6f23218` |
| 3 | `def` | [add](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/add--bc99fdc1c736861b2b87d61f.md) | 28 | `declaration-track:bc99fdc1c736861b2b87d61f4904024e8ad6d8c47466d718e7158f90de71d6fc` |
| 4 | `def` | [scale](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/scale--66f86bed4b40ba2b4e6d21b6.md) | 33 | `declaration-track:66f86bed4b40ba2b4e6d21b6b1fd787a03f0ec613cdae55a7fe313946b6a7d0c` |
| 5 | `def` | [mul](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/mul--df7c4e35c01a7b3ffb89a5a4.md) | 37 | `declaration-track:df7c4e35c01a7b3ffb89a5a4d86fbe2046d4ad5343f38671a3bdfbfa5dbe0d64` |
| 6 | `def` | [shift](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/shift--7990307873f6664e91af53b9.md) | 42 | `declaration-track:7990307873f6664e91af53b90efaedcc2cfbfbcc7f8f3cc5109f930656c178bf` |
| 7 | `def` | [monomial](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/monomial--2ab2339fc3457c08e5686528.md) | 46 | `declaration-track:2ab2339fc3457c08e5686528b5c089cdfb2574abe3f86cb897187d5daa96fb55` |
| 8 | `def` | [taylor](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/taylor--ed5956b4cb46722b6bdeb700.md) | 50 | `declaration-track:ed5956b4cb46722b6bdeb700519170da851377f3ac90f1547968c2c3763af238` |
| 9 | `lemma` | [eval_add](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/eval-add--81ce6afeb4a8e63ba0a28be6.md) | 54 | `result-track:81ce6afeb4a8e63ba0a28be6e997e36ab98f3075fadae6137206b319bd220894` |
| 10 | `lemma` | [eval_scale](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/eval-scale--13148b00748c991e08c12b05.md) | 61 | `result-track:13148b00748c991e08c12b055ce9081b2e83fe57f1c009804b835303292fc046` |
| 11 | `lemma` | [eval_mul](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/eval-mul--5fd387ce2e3ec9c42f4930ba.md) | 67 | `result-track:5fd387ce2e3ec9c42f4930ba1834a7a7476f0dd8b4b42d95e1e3436038fc715c` |
| 12 | `lemma` | [eval_shift](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/eval-shift--3e12a5c4c7b049c36264dd9f.md) | 76 | `result-track:3e12a5c4c7b049c36264dd9fe4efe30ec37d1e2c25b2253fc981f8b7324f8fe0` |
| 13 | `lemma` | [eval_monomial](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/eval-monomial--79094c76f567ec2139d566f8.md) | 84 | `result-track:79094c76f567ec2139d566f8e8b471cded0a971d1d9631e3f569c6ce45c8522a` |
| 14 | `lemma` | [eval_taylor](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/eval-taylor--b52fd3f977accee4b7685d5a.md) | 92 | `result-track:b52fd3f977accee4b7685d5ad4a3693c1c548aa1d890dea63a409b08c839e27a` |
| 15 | `def` | [pair](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/pair--52f7969fc69b2660cd8ed4c7.md) | 103 | `declaration-track:52f7969fc69b2660cd8ed4c740a0db2368be60ebe385b0ee11f8eba0c87229d4` |
| 16 | `lemma` | [pair_reconstruct](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/pair-reconstruct--44a55d393346ba4155f396ec.md) | 109 | `result-track:44a55d393346ba4155f396ecbe3a2927e23b85cda70a9ea74bfd60423e4db91b` |
| 17 | `lemma` | [pair_even](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/pair-even--c0d9f9bdacfe427f05080ecd.md) | 117 | `result-track:c0d9f9bdacfe427f05080ecd2d177a7a076a2ac87d6bd21b53ad12cdd56603be` |
| 18 | `lemma` | [pair_odd](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/pair-odd--092dcf3c73ea612558ba1322.md) | 124 | `result-track:092dcf3c73ea612558ba1322017e49fa98592745576865d6f6a5183407ecfda9` |
| 19 | `structure` | [Disk](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/disk--4d151a52c50f9aec55109d1d.md) | 131 | `declaration-track:4d151a52c50f9aec55109d1da07e404ee0b61d1aca22fe29e5567abc289e0de5` |
| 20 | `def` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/valid--bd328ed784cf4a3f1a16a57c.md) | 138 | `declaration-track:bd328ed784cf4a3f1a16a57c30991983108de16c457e675853009660ecac4ef8` |
| 21 | `def` | [point](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/point--e37972c8c2bbf3eb2758fecb.md) | 139 | `declaration-track:e37972c8c2bbf3eb2758fecb05b0d84f5bf8534bce02812773081ab9d5dcb7e9` |
| 22 | `def` | [add](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/add--cee91101a6ee988baaed4f80.md) | 140 | `declaration-track:cee91101a6ee988baaed4f80d7689b2c9b2110d776f79f4ccac3e03dd4364a0f` |
| 23 | `def` | [mul](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/mul--ce5eaeab098c58810b3b8af5.md) | 141 | `declaration-track:ce5eaeab098c58810b3b8af557b59a396f9db5722aecf17861ac16165a239cb3` |
| 24 | `def` | [lower](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/lower--c39e93f5ca097d913ca5058e.md) | 144 | `declaration-track:c39e93f5ca097d913ca5058ed149f17fd3074b337d525e4c4c1c62b20f12df78` |
| 25 | `lemma` | [radius_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/radius-nonneg--50790165b35343c9c22f2076.md) | 146 | `result-track:50790165b35343c9c22f20767e1089eb5d89cb71159a7f9fa1f2c90fd8901f8e` |
| 26 | `lemma` | [point_valid](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/point-valid--a28a86bd9118284bcba8c1db.md) | 150 | `result-track:a28a86bd9118284bcba8c1db3019ae0f07b1a586d79804638730daa53c31aca8` |
| 27 | `lemma` | [add_valid](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/add-valid--27d596407e7561a5266d5b03.md) | 152 | `result-track:27d596407e7561a5266d5b03fae26f2788d2910f12e7e299ea30a74812134d25` |
| 28 | `lemma` | [mul_valid](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/mul-valid--eff77167e27c7d37237420b0.md) | 160 | `result-track:eff77167e27c7d37237420b09b70ebd3cb734724675279ddf6107eefcebf58bd` |
| 29 | `lemma` | [lower_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/lower-nonneg--0e3ff80f0a694a69a2bcc4a3.md) | 186 | `result-track:0e3ff80f0a694a69a2bcc4a3e805d8cfc7b0805bb094916b014a06580d937613` |
| 30 | `lemma` | [lower_le](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/lower-le--d228bb29239a8b77fd90d9da.md) | 189 | `result-track:d228bb29239a8b77fd90d9dad9b8af9b45056cf54553144df0dea36eb7114412` |
| 31 | `def` | [enclose](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/enclose--4a39a53b95cbe2213bd272cd.md) | 204 | `declaration-track:4a39a53b95cbe2213bd272cd699e1daa077b34fd77325bb51fae14c1451f11f7` |
| 32 | `lemma` | [enclose_valid](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/enclose-valid--c49b669d129862cf111320dd.md) | 210 | `result-track:c49b669d129862cf111320dd2dfc6f7f6778cf84a87b4117a15d70bd0a28d92f` |
| 33 | `lemma` | [affine_margin_pos](../../../../mathematics/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/declarations/affine-margin-pos--b4559b27087b427cc15007b6.md) | 222 | `result-track:b4559b27087b427cc15007b603bbf44f98c99a7e1e918df0deac59dcb43d8265` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
