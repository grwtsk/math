# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e31c397618e0a301215f08f4c6a49ace88a477",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e31c397618e0a301215f08f4c6a49ace88a477`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/cast-nonneg--e8e9334b6fcf5a5dc960941f.md) | 30 | `result-track:e8e9334b6fcf5a5dc960941ffe54a1b403b921295bb11ab19b92f041bf35d126` |
| 2 | `theorem` | [ofNat_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/ofnat-nonneg--01ccef64cd27a42d9a14d8f8.md) | 35 | `result-track:01ccef64cd27a42d9a14d8f86d71f64165e38734cd1777b01bff1425cee2c7bc` |
| 3 | `theorem` | [cast_min](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/cast-min--535480cd606368d0ef111767.md) | 40 | `result-track:535480cd606368d0ef1117670e52aa4d42047c5ae02e94a671f009f9f057092e` |
| 4 | `theorem` | [cast_max](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/cast-max--1814984a01df339ddfbdf412.md) | 45 | `result-track:1814984a01df339ddfbdf412454a8549ca2a688588806d80c789f3301677de4d` |
| 5 | `theorem` | [cast_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/cast-pos--f8c15081a7de97fc07f68661.md) | 55 | `result-track:f8c15081a7de97fc07f68661460d12e3c00ba292b43dc585ac2a4f6636c6d184` |
| 6 | `theorem` | [ofNat_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/ofnat-pos--4930627097457218d7ab627b.md) | 60 | `result-track:4930627097457218d7ab627bbdb03bf7451c89214684161e01f821a80ca572e0` |
| 7 | `theorem` | [ofNat_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/ofnat-pos--1e2724a46798e634a9561671.md) | 65 | `result-track:1e2724a46798e634a956167172be550c3bc1ddeea315566814f5463935ff1583` |
| 8 | `theorem` | [cast_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/cast-tsub--59b7b8aef02db7257b2e1ce2.md) | 77 | `result-track:59b7b8aef02db7257b2e1ce2c42a29b3c2d1f805fdccf659b49de41f27890303` |
| 9 | `theorem` | [abs_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/abs-cast--2ab43abccc8ef0222681da25.md) | 89 | `result-track:2ab43abccc8ef0222681da256501936a08c9163837f7c785b1415bbe46f262fd` |
| 10 | `theorem` | [abs_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/abs-ofnat--a6775b860e3b6940ec9ccc64.md) | 92 | `result-track:a6775b860e3b6940ec9ccc64ca6aaa3ef328fc09d5f3c2e3493792207047385b` |
| 11 | `lemma` | [neg_cast_eq_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/neg-cast-eq-cast--90574c07ac83c09e83149157.md) | 94 | `result-track:90574c07ac83c09e83149157ff887803277ec0a94e96728cca553a3716f01b42` |
| 12 | `lemma` | [cast_eq_neg_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/cast-eq-neg-cast--6d03774d0aeb2dee2f5c2fc3.md) | 97 | `result-track:6d03774d0aeb2dee2f5c2fc3ae4eff7d17f681467aceb25f1772c57d2a66370f` |
| 13 | `lemma` | [mul_le_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/mul-le-pow--3cf888b27ebc52868a833b3e.md) | 102 | `result-track:3cf888b27ebc52868a833b3e0e86038d22208cdc13bb1a902739d96415d9c733` |
| 14 | `lemma` | [two_mul_sq_add_one_le_two_pow_two_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/declarations/two-mul-sq-add-one-le-two-pow-two-mul--36fca85ceb91e0f45f0d45ac.md) | 119 | `result-track:36fca85ceb91e0f45f0d45acffeb9a1d40e11a988fc7f00f5d2741678b169089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
