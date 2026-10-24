# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Upper.Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "140e9178fb05091a1f0436370130aea90afdfddf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `140e9178fb05091a1f0436370130aea90afdfddf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.PowerSums` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Exponential` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Chebyshev` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [two_pow_length_le_prod](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/two-pow-length-le-prod--e18fdd68b4462118768b8d13.md) | 40 | `result-track:e18fdd68b4462118768b8d13d7a87557fb7573a18d06dab96138a429d52972de` |
| 2 | `lemma` | [cardFactors_le_self](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/cardfactors-le-self--7963de2590ff1ffbf6785978.md) | 50 | `result-track:7963de2590ff1ffbf6785978ba365ec0ed30713a227db1f6986979a0dfdf0efc` |
| 3 | `lemma` | [sq_sum_range_le_sum_two_pow_mul_sq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/sq-sum-range-le-sum-two-pow-mul-sq--90010211c5a0680d52bd67a8.md) | 60 | `result-track:90010211c5a0680d52bd67a854ac1868564c20d61bfdddbaccc76b9cffd75169` |
| 4 | `def` | [CF](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/cf--761c112cb8815a6b5b05ce02.md) | 78 | `declaration-track:761c112cb8815a6b5b05ce02c93a8c85ea6354a6f0efc224353473514508c828` |
| 5 | `lemma` | [CF_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/cf-pos--6060a969d35c81b8b772e129.md) | 80 | `result-track:6060a969d35c81b8b772e1296799b5ccb776ab0b971409b1b14f09169c2fec9a` |
| 6 | `lemma` | [term_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/term-bound--06cd7320703865a89b78264c.md) | 83 | `result-track:06cd7320703865a89b78264c2443e344b8f8693ac54dda32cc6e09fef13f9958` |
| 7 | `lemma` | [Fmaj_term_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/fmaj-term-le--6ea298d8c1179e0345562699.md) | 125 | `result-track:6ea298d8c1179e03455626991c2727885e96ecd351f9dbebbc2d0ff0a017e46e` |
| 8 | `theorem` | [sum_Fmaj_sq_div_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/sum-fmaj-sq-div-le--6c85ce5aa98132d16b38dd15.md) | 147 | `result-track:6c85ce5aa98132d16b38dd1535b6f3f7bb503b8ca227732f7a15583dbd0d1c45` |
| 9 | `lemma` | [sum_vonMangoldt_sq_div_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/sum-vonmangoldt-sq-div-le--0d4f798627a4a760ff489312.md) | 222 | `result-track:0d4f798627a4a760ff48931299bc55ae4b337590a8d29b98f9cbdfc5eebaac33` |
| 10 | `def` | [CS](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/cs--0117498c678b0a3edbb4b699.md) | 233 | `declaration-track:0117498c678b0a3edbb4b699ca0938e86a322fc3397dc37a213f93752af104dd` |
| 11 | `lemma` | [CS_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/cs-pos--ef9c5f66d0fc35cea8ab285c.md) | 235 | `result-track:ef9c5f66d0fc35cea8ab285ce8433a3437fe7372c7a98c5b3c70dc9aca808943` |
| 12 | `theorem` | [diagSum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/diagsum-le--048cc1e913c1036ae3907e09.md) | 239 | `result-track:048cc1e913c1036ae3907e09c00d609c7b3b27807cf7d93efeb82008661cec73` |
| 13 | `def` | [T0coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/t0coeff--a6c8c34847ade3ae7c6a589a.md) | 273 | `declaration-track:a6c8c34847ade3ae7c6a589ab58b06af63a86b358e51f96a95655c28f98a74bf` |
| 14 | `lemma` | [l_ge_of_T0coeff_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/l-ge-of-t0coeff-le--618306e7b2e6f15c8f4bd63b.md) | 275 | `result-track:618306e7b2e6f15c8f4bd63b7997f147d761b36fbfe7148cbcbbaeb03c7e72bf` |
| 15 | `theorem` | [coeff_H2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/coeff-h2--6db7531f0c06bc62e7cdac90.md) | 284 | `result-track:6db7531f0c06bc62e7cdac90c33804ff102e6b16c0e082c3ce648866d9132f51` |
| 16 | `theorem` | [coeff_H1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb9d5ea42235dd103435873ede85fd911467ed4bb75f73401c91445b74cdde034.lean/declarations/coeff-h1--12e43861e32dcf2ef7587546.md) | 318 | `result-track:12e43861e32dcf2ef75875462b29029acf6277167bbd305c3aadaff22785eaee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
