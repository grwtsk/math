# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Carmichael.Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c621c8a816a24369aee30c14ba7148f7aa3341f7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c621c8a816a24369aee30c14ba7148f7aa3341f7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [carmichael](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael--bd1f93f2718fa9434c1eedfd.md) | 54 | `declaration-track:bd1f93f2718fa9434c1eedfd9ad0ee38a105cdb959b8b1760c4775018f83abc7` |
| 2 | `theorem` | [carmichael_eq_exponent](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-eq-exponent--00fe26c1661014b6ac18e595.md) | 67 | `result-track:00fe26c1661014b6ac18e595224757c13d2913de2bb1d5f9fe8da6c868f1f55f` |
| 3 | `theorem` | [carmichael_eq_exponent'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-eq-exponent--c55a98683b531cbf3ecdefbc.md) | 73 | `result-track:c55a98683b531cbf3ecdefbceab60c574d4694ef4353a9ace98b03d6d4e802de` |
| 4 | `theorem` | [pow_carmichael](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/pow-carmichael--614df69f64db6de9df90f812.md) | 77 | `result-track:614df69f64db6de9df90f8120e82660a7016e53f8f206bc20ea4462e6637b889` |
| 5 | `theorem` | [carmichael_dvd_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-dvd-totient--8d9f64e05621ca5d25f8a201.md) | 83 | `result-track:8d9f64e05621ca5d25f8a20134cd1a14054fd70b428e94994ee356a211315328` |
| 6 | `theorem` | [carmichael_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-dvd--01186591493000f2ab0a4d01.md) | 89 | `result-track:01186591493000f2ab0a4d010df45b10d0506d7e9b980798d5336b569ee8dd8c` |
| 7 | `theorem` | [carmichael_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-lcm--f51722550bd717532d449fab.md) | 95 | `result-track:f51722550bd717532d449fab757a93d10a41f9cb257d97c8ec8fdcf367e4c0d8` |
| 8 | `theorem` | [carmichael_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-mul--8155e9b89a690d669a175d9e.md) | 108 | `result-track:8155e9b89a690d669a175d9e68314d1bd351fd7a5989d027a67a6301210df278` |
| 9 | `theorem` | [carmichael_finset_lcm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-finset-lcm--c3b3a9cfd55d6fea2efb65f5.md) | 112 | `result-track:c3b3a9cfd55d6fea2efb65f5ecdfd22d625a8b0454b6ef301113e5d4695fbe6b` |
| 10 | `theorem` | [carmichael_finsetProd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-finsetprod--e7edbca80a6fa9ae083e05f0.md) | 120 | `result-track:e7edbca80a6fa9ae083e05f0f677d07659af9aefd269cad8d352c600f78ea94c` |
| 11 | `theorem` | [carmichael_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-factorization--0321ddfa76555edabf2180ab.md) | 126 | `result-track:0321ddfa76555edabf2180ab74ad761010f33c25de46cef5a17c4b8fc21f2275` |
| 12 | `theorem` | [carmichael_two_pow_of_le_two_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-two-pow-of-le-two-eq-totient--c3b601d85bf442caa99056d5.md) | 131 | `result-track:c3b601d85bf442caa99056d50207468f70d65057fabcd99924ac8f11332a0056` |
| 13 | `theorem` | [carmichael_two_pow_of_le_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-two-pow-of-le-two--83a23d2923d0c07758175ce1.md) | 138 | `result-track:83a23d2923d0c07758175ce1dcf715f313f51d696e840fdd41f5a5353a246dd2` |
| 14 | `theorem` | [carmichael_two_pow_of_ne_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-two-pow-of-ne-two--6bb4f6a78b04cfb704ee2d92.md) | 145 | `result-track:6bb4f6a78b04cfb704ee2d92ed1222cc4260ea1de6b21313818121d711bbf130` |
| 15 | `theorem` | [two_mul_carmichael_two_pow_of_three_le_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/two-mul-carmichael-two-pow-of-three-le-eq-totient--c83d09bf077ed662b23ed703.md) | 161 | `result-track:c83d09bf077ed662b23ed7035116cacdb9c4e7d62e9a737b9e764dd3006ecc1b` |
| 16 | `theorem` | [carmichael_pow_of_prime_ne_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-pow-of-prime-ne-two--02e3379bf07419eefbfb73d0.md) | 169 | `result-track:02e3379bf07419eefbfb73d0f8361465127b16928b1bc94eede725bf5b1810e9` |
| 17 | `theorem` | [carmichael_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-one--5292e2209c48d0c367d091b1.md) | 176 | `result-track:5292e2209c48d0c367d091b1b0870c2838384f42cd556074d19bf4fb6f023ebc` |
| 18 | `theorem` | [carmichael_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-two--f612ce834b68dad2ba7b0596.md) | 180 | `result-track:f612ce834b68dad2ba7b05962a296793efd7773155099531862496cd6511845c` |
| 19 | `theorem` | [carmichael_of_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Carmichael/Variantc634ffe8e9867a3b0a5586b955fe57ec5138cfc3d6691bc58ffe306b3f512c00.lean/declarations/carmichael-of-prime--dd70696d9f1b1889ac8f0d0e.md) | 183 | `result-track:dd70696d9f1b1889ac8f0d0ed46156e29975a9d54a1fed7689572fac7b5f7503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
