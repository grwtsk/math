# Verification target: GRWTSK.Algebra.CommutativeAlgebra.GaussNorm.Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3433bc3c4325da129954004b59d7457fd657c66",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3433bc3c4325da129954004b59d7457fd657c66`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm--3fcc75c6e0a7ff2a29d6cd35.md) | 62 | `declaration-track:3fcc75c6e0a7ff2a29d6cd351351459e6ac024e1f6354f91ee607d4176757951` |
| 2 | `lemma` | [gaussNorm_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-zero--9a4e4a5e5b34fffe8b8b958e.md) | 66 | `result-track:9a4e4a5e5b34fffe8b8b958efc832f1bea10dc88d783f7aed40e37084c8ea8f0` |
| 3 | `theorem` | [exists_eq_gaussNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/exists-eq-gaussnorm--eb4f0bd877e3d295572ef1fa.md) | 70 | `result-track:eb4f0bd877e3d295572ef1fad8e6c77756d7ca27166af599273848105d0403d2` |
| 4 | `lemma` | [gaussNorm_C](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-c--c1b2321cd1570e9172d5452e.md) | 78 | `result-track:c1b2321cd1570e9172d5452ef7d32f76eef85e6816df6a1692ad210817e00eef` |
| 5 | `theorem` | [gaussNorm_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-monomial--81800869a6ce5d6c6d725a7e.md) | 82 | `result-track:81800869a6ce5d6c6d725a7e912d77541cd5eae99d546546ff67747d9771335b` |
| 6 | `lemma` | [sup'_nonneg_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/sup-nonneg-of-ne-zero--c1bbf4bcfb7dd1ebdc4d6b52.md) | 89 | `result-track:c1bbf4bcfb7dd1ebdc4d6b523020fa4f5c2101a6ac19e04fd8dca591f8a7c787` |
| 7 | `lemma` | [aux_bdd](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/aux-bdd--408e733a87049665387eabbc.md) | 97 | `result-track:408e733a87049665387eabbc098845bc64ef29b513d3acc979c9f9b559640a36` |
| 8 | `theorem` | [gaussNorm_coe_powerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-coe-powerseries--409a2a534de44893c701ed28.md) | 114 | `result-track:409a2a534de44893c701ed287e0fe9bba7d3f36e1094c217bc9565dd6817c77b` |
| 9 | `theorem` | [gaussNorm_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-eq-zero-iff--f9020d1700b7b45ab29b8074.md) | 134 | `result-track:f9020d1700b7b45ab29b8074cfc845768495dafadd7e25adf4e468bf242cb99e` |
| 10 | `theorem` | [gaussNorm_nonneg](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-nonneg--e23418f3c9c63a0469d36ede.md) | 143 | `result-track:e23418f3c9c63a0469d36edee5de6e764db1728cb03cd95d65f0d31d9875bb7b` |
| 11 | `lemma` | [le_gaussNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/le-gaussnorm--0003c58510abcae12a31adeb.md) | 147 | `result-track:0003c58510abcae12a31adebaeeb917739610f9b253045826170b5e357db620d` |
| 12 | `lemma` | [gaussNorm_zero_right](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-zero-right--a07c2f2b890f7040e5fdf500.md) | 153 | `result-track:a07c2f2b890f7040e5fdf500f397edf526a959ed36d817ba537e32bf8b0773bf` |
| 13 | `lemma` | [exists_min_eq_gaussNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/exists-min-eq-gaussnorm--da5218d47a5650835800cd5a.md) | 165 | `result-track:da5218d47a5650835800cd5ac5299eeedee76000ca098563ab6559d348c2a594` |
| 14 | `theorem` | [isNonarchimedean_gaussNorm](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/isnonarchimedean-gaussnorm--6b0c1ba9776d11b9110abb13.md) | 178 | `result-track:6b0c1ba9776d11b9110abb13988226cbd74bba7053ab47f5edf461f8c256cda1` |
| 15 | `theorem` | [gaussNorm_mul_le](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-mul-le--547e4eae6c09775a0a632dce.md) | 205 | `result-track:547e4eae6c09775a0a632dce1764c116893f83fe61135b6ccc34c800346615b8` |
| 16 | `theorem` | [mul_gaussNorm_le_gaussNorm_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/mul-gaussnorm-le-gaussnorm-mul--e9b6e2d0c85847e98fa8aa11.md) | 235 | `result-track:e9b6e2d0c85847e98fa8aa11a706bfba70aac24042da74de7b0c17ac5470883b` |
| 17 | `theorem` | [gaussNorm_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-mul--4559305679304d5e473edfc2.md) | 284 | `result-track:4559305679304d5e473edfc2b7c7e418c85720c036e9b1ebebfa0865572af957` |
| 18 | `theorem` | [gaussNorm_isAbsoluteValue](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-isabsolutevalue--91651d0d6a1801471f2ed6ee.md) | 291 | `result-track:91651d0d6a1801471f2ed6ee2877ebf259e15f83a896ae9a24a4a6ef2be44b97` |
| 19 | `theorem` | [gaussNorm_C](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-c--3935d303fd91360d2458f1e9.md) | 308 | `result-track:3935d303fd91360d2458f1e9c9ca90146d5f848c447e948f5cc70382433a2185` |
| 20 | `theorem` | [gaussNorm_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GaussNorm/Variant7982a1770250dcc4c3afa602701cdede7b4485cf99599ba3668863e2b6f9a000.lean/declarations/gaussnorm-monomial--ed729904ba1036f673d78cb3.md) | 313 | `result-track:ed729904ba1036f673d78cb3eb91b43c0052c18e92fe1f06ecc19e8fc06fd87a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
