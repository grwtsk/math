# Verification target: GRWTSK.NumberTheory.ZModChar.Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61d09373058dece78edfa4e5e37ae19b00c53369",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61d09373058dece78edfa4e5e37ae19b00c53369`.

Source path: `GRWTSK/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/anonymous--fc2f2f221330817b7e3d5070.md) | 46 | `declaration-track:fc2f2f221330817b7e3d507095488414a6db3498cfdb130bcb88abeabb8dd438` |
| 2 | `theorem` | [isQuadratic_χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/isquadratic--542ca5c9d83c839d950b5fb0.md) | 57 | `result-track:542ca5c9d83c839d950b5fb05454f77150eca8d5237fddfa12ef1177955e5f73` |
| 3 | `theorem` | [χ₄_nat_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/nat-mod-four--c3e648a616992342ff72b6d2.md) | 62 | `result-track:c3e648a616992342ff72b6d2891cd51ada16df26c52af7482d6e8fc6e77a2a53` |
| 4 | `theorem` | [χ₄_int_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-mod-four--9ded2bbd6e961d7473d512b1.md) | 66 | `result-track:9ded2bbd6e961d7473d512b107b151ba96043a6dd9e8eef37d93064d1ee67dcd` |
| 5 | `theorem` | [χ₄_int_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-eq-if-mod-four--2e3fde1ad0c3b9fed97848ec.md) | 70 | `result-track:2e3fde1ad0c3b9fed97848ec181b6e732feb5a52858158ed8de87b9f5fc799ff` |
| 6 | `theorem` | [χ₄_nat_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/nat-eq-if-mod-four--8a3232e43606918aefba091b.md) | 77 | `result-track:8a3232e43606918aefba091b1fd32a367ded5b2403883e95b7311d61bf60a81c` |
| 7 | `theorem` | [χ₄_eq_neg_one_pow](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/eq-neg-one-pow--ebbea0313d21052e7123d6a4.md) | 82 | `result-track:ebbea0313d21052e7123d6a478b23415bc7b4b9cdb2a34e5749323de5ccac02f` |
| 8 | `theorem` | [χ₄_nat_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/nat-one-mod-four--4b0f934a72741e3da72fcc04.md) | 93 | `result-track:4b0f934a72741e3da72fcc04f99141277794b9062aad490f7040e53eea89172e` |
| 9 | `theorem` | [χ₄_nat_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/nat-three-mod-four--f8c362cd980f71b8e80802df.md) | 98 | `result-track:f8c362cd980f71b8e80802df202cfde3cec5ac7aa29224cf8a801a6f7c5c4561` |
| 10 | `theorem` | [χ₄_int_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-one-mod-four--01ce74300b5cdc0fa9d5db3f.md) | 103 | `result-track:01ce74300b5cdc0fa9d5db3fa982249b58a96196ecb1058e137671472f81f651` |
| 11 | `theorem` | [χ₄_int_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-three-mod-four--32fa9fc35d5f3f30396640f0.md) | 108 | `result-track:32fa9fc35d5f3f30396640f0f793c3a31a06a1fd42a7eda4aa08ea41122d5f9d` |
| 12 | `theorem` | [neg_one_pow_div_two_of_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/neg-one-pow-div-two-of-one-mod-four--1bca22263ec3575a841716eb.md) | 113 | `result-track:1bca22263ec3575a841716eba550906a1c78851cd002745f5c6b8ca91cb60b7f` |
| 13 | `theorem` | [neg_one_pow_div_two_of_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/neg-one-pow-div-two-of-three-mod-four--eb8af031d0dcb928e826f91c.md) | 117 | `result-track:eb8af031d0dcb928e826f91cd65b754339a2a97a77f93c062eed387c5cb37993` |
| 14 | `def` | [χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/anonymous--22a3d8c14935aa6a460dec4b.md) | 123 | `declaration-track:22a3d8c14935aa6a460dec4bcad0769cbfec87b41374824c70f05eec359ebb7a` |
| 15 | `theorem` | [isQuadratic_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/isquadratic--16ebf92aebaa51fc8d48d120.md) | 134 | `result-track:16ebf92aebaa51fc8d48d12001074aeeb7b70630c960af33c62204b12abc9c1d` |
| 16 | `theorem` | [χ₈_nat_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/nat-mod-eight--4ad78cf39eaa1e0d48181f70.md) | 139 | `result-track:4ad78cf39eaa1e0d48181f70ed253f1388757a54cd39850bd5906918a0b81e32` |
| 17 | `theorem` | [χ₈_int_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-mod-eight--9c7e4b710848d511987bf118.md) | 143 | `result-track:9c7e4b710848d511987bf1187abd35bb2edb459fb2f572b90ceb3a3f7a1295af` |
| 18 | `theorem` | [χ₈_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-eq-if-mod-eight--b13be34a3c389bfe918d1f32.md) | 147 | `result-track:b13be34a3c389bfe918d1f32495f843a4741ef051273eb32227f3057c679e20f` |
| 19 | `theorem` | [χ₈_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/nat-eq-if-mod-eight--8f9eb626e2ef8efbb4a31694.md) | 155 | `result-track:8f9eb626e2ef8efbb4a316945deb3333b0431665ebb576d62bda43caee9fcd3c` |
| 20 | `def` | [χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/anonymous--c345ecde024e51355e2a4fc0.md) | 162 | `declaration-track:c345ecde024e51355e2a4fc0a32ddf648a4da58a5f9a076918372016d5f904db` |
| 21 | `theorem` | [isQuadratic_χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/isquadratic--43e265e376effe791237e0e1.md) | 173 | `result-track:43e265e376effe791237e0e1fcf7a6afad754c5035b1fc98f9637f19a2a467e2` |
| 22 | `theorem` | [χ₈'_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-eq-if-mod-eight--b537f0d7b57a7792cade4404.md) | 178 | `result-track:b537f0d7b57a7792cade44046a607b0f5790280c2d766ad3490a0bcb42383a8b` |
| 23 | `theorem` | [χ₈'_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/nat-eq-if-mod-eight--325ffb1bf8f0acbb20ed0aa1.md) | 186 | `result-track:325ffb1bf8f0acbb20ed0aa13984d8524008d527a8ca076c6b8cdd57d733af54` |
| 24 | `theorem` | [χ₈'_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/eq-mul--44c2198b3cff09f50117c979.md) | 191 | `result-track:44c2198b3cff09f50117c97923137f37b759126cea473e1ed2978d7629f98ba0` |
| 25 | `theorem` | [χ₈'_int_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/declarations/int-eq-mul--c0e1cf9d3aa2c117436d1183.md) | 194 | `result-track:c0e1cf9d3aa2c117436d118340789aa352a517b007b70883930d95a116d5b1e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
