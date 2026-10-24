# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "904087810bcaa3251975675dc8e0eda144f19aa2",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `904087810bcaa3251975675dc8e0eda144f19aa2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand--47fae675a646bffd5a52b747.md) | 36 | `declaration-track:47fae675a646bffd5a52b747aa1e85fa612880203dda2ba06f0db866980fe8fd` |
| 2 | `theorem` | [coe_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/coe-expand--ea8b156ec20ab7b7e5e9aca9.md) | 40 | `result-track:ea8b156ec20ab7b7e5e9aca90cda846f3da39ec9226aa1638091b5b690e81069` |
| 3 | `theorem` | [expand_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-eq-sum--ebb8368df3ec4ecaf92cacd9.md) | 46 | `result-track:ebb8368df3ec4ecaf92cacd9363a43de7da11487a809a814d6e937f56f31e140` |
| 4 | `theorem` | [expand_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-c--774d00cbf93254530f58077d.md) | 51 | `result-track:774d00cbf93254530f58077d72f767bf5daa23554237de212fc388ba251f5a11` |
| 5 | `theorem` | [expand_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-x--5b8b0e4d9390855c3cb1e78a.md) | 57 | `result-track:5b8b0e4d9390855c3cb1e78ad0d81390094b3a2150ed7f61c3db5d9d9f804aa6` |
| 6 | `theorem` | [expand_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-monomial--b51030733e7714cac8e49f45.md) | 63 | `result-track:b51030733e7714cac8e49f45489e16ba4012736d83b43ad79bb7b2582f70f590` |
| 7 | `theorem` | [expand_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-expand--c7a216b914e64cb537bddae4.md) | 67 | `result-track:c7a216b914e64cb537bddae45ceba4fbc2f0263002efa596e9dc18657b2ee4a4` |
| 8 | `theorem` | [expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-mul--30f0252026e41c1ae3cb4159.md) | 73 | `result-track:30f0252026e41c1ae3cb415938b18477083c5b72d3e1d238573242a97d6620f0` |
| 9 | `theorem` | [expand_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-zero--e6179b9bb733bb68ceffb219.md) | 78 | `result-track:e6179b9bb733bb68ceffb21926b2c08bf89cb051006c5efbe9236bccedb48aee` |
| 10 | `theorem` | [expand_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-one--b0690ec15cbf583853fa3f69.md) | 82 | `result-track:b0690ec15cbf583853fa3f69120f79b2389f50a3538529f8dcc0dc63115d9dca` |
| 11 | `theorem` | [expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-pow--b671322bd2e2332785c655ed.md) | 88 | `result-track:b671322bd2e2332785c655edd0a84833bb207b6b7b49318958082dc3556ffca9` |
| 12 | `theorem` | [derivative_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/derivative-expand--8040809ad9901b6fe57d1290.md) | 93 | `result-track:8040809ad9901b6fe57d12909e81b9f0cc35dca8231c65dd21d2f9e76a84cec3` |
| 13 | `theorem` | [coeff_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/coeff-expand--8f3ed1cdcfb176f391cb6451.md) | 98 | `result-track:8f3ed1cdcfb176f391cb6451cd213a31b79fe0fe16a7eb4712e10e4b9f3c64c1` |
| 14 | `theorem` | [coeff_expand_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/coeff-expand-mul--020d4da91934d9217eb8d412.md) | 119 | `result-track:020d4da91934d9217eb8d41240de8c8fd045aa6b000ec8ca4655f51c2fed4d93` |
| 15 | `theorem` | [coeff_expand_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/coeff-expand-mul--e4733262492bccc2807dfb73.md) | 125 | `result-track:e4733262492bccc2807dfb7392100dd5e07c7377ed537fc03d348db6d660ce1d` |
| 16 | `theorem` | [expand_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-injective--368efdf54365ca96b898cad8.md) | 130 | `result-track:368efdf54365ca96b898cad85e5920dfd75ccfc06491540835c08abe040f34f5` |
| 17 | `theorem` | [expand_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-inj--9dfadee53ba8d3e5d817fbb0.md) | 134 | `result-track:9dfadee53ba8d3e5d817fbb06af25939b27f9b63f2f38094e05618486080ce93` |
| 18 | `theorem` | [expand_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-eq-zero--168236bc13ac158c67d06ee0.md) | 138 | `result-track:168236bc13ac158c67d06ee049a9ad989f368cb14dfe0c1a970d02993383b188` |
| 19 | `theorem` | [expand_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-ne-zero--ced8603f293b11d205e04d8d.md) | 142 | `result-track:ced8603f293b11d205e04d8de637ca41cd60e1c60fa660b9cc582f284750cf3e` |
| 20 | `theorem` | [expand_eq_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-eq-c--7f48e4a79a280b27783eaf77.md) | 146 | `result-track:7f48e4a79a280b27783eaf77de82b0e196d5d782fc043e7d6a375fb64a309fc9` |
| 21 | `theorem` | [natDegree_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/natdegree-expand--6e660f886b1c40e82ed94fe9.md) | 151 | `result-track:6e660f886b1c40e82ed94fe9ecfb348db5893e643e2ed6db5abf811554ff7bb2` |
| 22 | `theorem` | [Monic.expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/monic-expand--b0cad14310f8ebefacee4f41.md) | 173 | `result-track:b0cad14310f8ebefacee4f4132a95183cf78c4fd6d2088a15fecaf3ba6a7c08e` |
| 23 | `theorem` | [map_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/map-expand--1d2164916f67bc8aa5f5a81b.md) | 178 | `result-track:1d2164916f67bc8aa5f5a81be51fb29417d83b726738f6d53d1fcf0f74f4a83f` |
| 24 | `theorem` | [expand_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-eval--d267e4b948e62be806ca6f71.md) | 188 | `result-track:d267e4b948e62be806ca6f717599bfa3976a9db61875ee317b18f53a28bb7182` |
| 25 | `theorem` | [expand_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-aeval--41014191846019a806895258.md) | 194 | `result-track:41014191846019a806895258f1a9075f8c1f720cc94aa86a4d7f98261d7df99a` |
| 26 | `def` | [contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/contract--710b87e48559ed6207ddede5.md) | 201 | `declaration-track:710b87e48559ed6207ddede5c0066fd0f140e0034a0726a7751c98d44a5bea24` |
| 27 | `theorem` | [coeff_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/coeff-contract--79f9dc9d12edbf7a338d77e7.md) | 205 | `result-track:79f9dc9d12edbf7a338d77e70306fd50ad818c01c288dda5a25f888a87530439` |
| 28 | `theorem` | [contract_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/contract-expand--bc3858b661c566ee3cfebd6c.md) | 217 | `result-track:bc3858b661c566ee3cfebd6c5ffcb980434aad4b9d3ebfe9a06402df935704ef` |
| 29 | `theorem` | [expand_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-contract--9e34755ecff3da18a543d713.md) | 226 | `result-track:9e34755ecff3da18a543d71352d39f0e03b01dd0db20700246655a8260c9ccc4` |
| 30 | `theorem` | [expand_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/expand-char--45ec086347fa00b981fdcfda.md) | 245 | `result-track:45ec086347fa00b981fdcfda57219412868a4d728289cbebfcd698f74d24ed8c` |
| 31 | `theorem` | [map_expand_pow_char](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/map-expand-pow-char--9dca1fa40d97147746440a6d.md) | 253 | `result-track:9dca1fa40d97147746440a6d8362f55571f9ba203526c039020ff3fbcad710ac` |
| 32 | `theorem` | [isLocalRingHom_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/islocalringhom-expand--e5a437a6c9a555037e5df19a.md) | 270 | `result-track:e5a437a6c9a555037e5df19a9674b6699655af3366e17bae38570ec6fc5235d5` |
| 33 | `theorem` | [of_irreducible_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/of-irreducible-expand--8e198b0e8511ac3e01416466.md) | 280 | `result-track:8e198b0e8511ac3e01416466cd25062f5e1afef7f60f1d32d92bb1271aa7ab31` |
| 34 | `theorem` | [of_irreducible_expand_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/declarations/of-irreducible-expand-pow--7772f2749ed71c68ec1e2065.md) | 286 | `result-track:7772f2749ed71c68ec1e2065b449939c6eed39e6510545d9c92963c511a82917` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
