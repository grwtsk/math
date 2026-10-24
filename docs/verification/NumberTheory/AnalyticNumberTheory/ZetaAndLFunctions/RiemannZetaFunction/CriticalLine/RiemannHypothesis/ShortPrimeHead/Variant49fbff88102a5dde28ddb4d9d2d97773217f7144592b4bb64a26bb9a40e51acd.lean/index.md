# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortPrimeHead.Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62b11b13c1cbfcf0c532a586509d0f4002cd7900",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62b11b13c1cbfcf0c532a586509d0f4002cd7900`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.FiniteHeadConsumer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invLower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/invlower--114946327046dd617f015873.md) | 28 | `declaration-track:114946327046dd617f0158731013cd0629bda3f2970bf834ff116e8a2193827c` |
| 2 | `def` | [invUpper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/invupper--70987de67c7b5b23a42939c3.md) | 85 | `declaration-track:70987de67c7b5b23a42939c368251afeff7d5d5eedef0e47a9bca00161ab4a16` |
| 3 | `def` | [logUpper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/logupper--f41d2ea620e351610728e557.md) | 142 | `declaration-track:f41d2ea620e351610728e55718ed90a02201f655fb3acfd935052d94fbd0d487` |
| 4 | `theorem` | [inv_sqrt_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/inv-sqrt-lower--885173300ee0361993f8423b.md) | 162 | `result-track:885173300ee0361993f8423bd1f006ffdf689e12c3130edb20ec3ecb069c6e0f` |
| 5 | `theorem` | [inv_sqrt_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/inv-sqrt-upper--d21b984a12eb018ba3817736.md) | 171 | `result-track:d21b984a12eb018ba38177364d48d48a30f64aa3ba6393633a095d0c9c83fc8a` |
| 6 | `theorem` | [table_inv_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/table-inv-lower--5f2365b75729fac287da653c.md) | 180 | `result-track:5f2365b75729fac287da653c8f46cfac2551833c0708ed4e40f2e751c470921e` |
| 7 | `theorem` | [table_inv_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/table-inv-upper--860c8d5a5281ecb864027154.md) | 187 | `result-track:860c8d5a5281ecb8640271547d127fe6d4673409048a4f0d6f0a8c20c69b5153` |
| 8 | `theorem` | [log_upper_of_taylor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/log-upper-of-taylor--d685bdd817cc3049bc3f7167.md) | 194 | `result-track:d685bdd817cc3049bc3f7167f1db87e9b5952ec49298699362a9581ed84d0883` |
| 9 | `theorem` | [table_prime_log_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/table-prime-log-upper--25accdbf9079bd30abe2d07c.md) | 198 | `result-track:25accdbf9079bd30abe2d07c4542aa10eaf02d3d74b49c027f5dfa33d1723e79` |
| 10 | `theorem` | [table_log_upper_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/table-log-upper-nonneg--7662dacedd8343fe16ab170d.md) | 205 | `result-track:7662dacedd8343fe16ab170d3b856e16454e7185ec4eb04b5dd48f36b14d57fd` |
| 11 | `theorem` | [table_log_upper_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/table-log-upper-zero--319d8250ef487d0d1ddac626.md) | 209 | `result-track:319d8250ef487d0d1ddac62685385c43cc00e9d0f479e91f6ca45e8c88f0b4ad` |
| 12 | `def` | [termUpper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/termupper--0e9e5bef3864649cb98840c4.md) | 214 | `declaration-track:0e9e5bef3864649cb98840c4a88de77d9fca7d39d0e4158bdd4e439c94dd3f51` |
| 13 | `theorem` | [actual_term_le_table](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/actual-term-le-table--93efe70504f3be51974ddcc0.md) | 217 | `result-track:93efe70504f3be51974ddcc000d21e5e24711337c31a4de99534aed7b670b5a4` |
| 14 | `theorem` | [short_head_rational_upper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/short-head-rational-upper--dbd99d9cf5cca5c4606096c2.md) | 242 | `result-track:dbd99d9cf5cca5c4606096c2b3e2aba26bcba66507b9ebd0b9d55ce8041e05a9` |
| 15 | `theorem` | [short_prime_head_strict](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/short-prime-head-strict--d4d0fb6ae325a9786576a62f.md) | 254 | `result-track:d4d0fb6ae325a9786576a62fe515ba108c47894764fea0115b4eaae3290d2cd4` |
| 16 | `theorem` | [short_prime_head_certificate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/short-prime-head-certificate--bec52eb4d8820051d842d3b9.md) | 257 | `result-track:bec52eb4d8820051d842d3b99ce427700256080f2a5a02675461f62d3f58b392` |
| 17 | `def` | [loggedPrimePrimitive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/loggedprimeprimitive--d3adfad6cbbb490bac3d1567.md) | 260 | `declaration-track:d3adfad6cbbb490bac3d1567ef0429a22f6e16e9a710904b77b8e3529686631f` |
| 18 | `theorem` | [logged_prime_at_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/logged-prime-at-log--a4cca5a9f012ebb5c4d49dfd.md) | 262 | `result-track:a4cca5a9f012ebb5c4d49dfd82277bfceeef1e54ff7d5d930c09b16fac1662b9` |
| 19 | `theorem` | [short_prime_head_log_strict](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/short-prime-head-log-strict--b4f94ea6b23f4803d03f0ab8.md) | 266 | `result-track:b4f94ea6b23f4803d03f0ab8f7e462e9e8be29279890abaf1a3420b0705187c4` |
| 20 | `theorem` | [finite_theta_envelope_implies_entrance_reserve](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variant49fbff88102a5dde28ddb4d9d2d97773217f7144592b4bb64a26bb9a40e51acd.lean/declarations/finite-theta-envelope-implies-entrance-reserve--31cc425286be8085690c6bf6.md) | 270 | `result-track:31cc425286be8085690c6bf62ec570bcdd6be073b495c407964a899e566dcb41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
