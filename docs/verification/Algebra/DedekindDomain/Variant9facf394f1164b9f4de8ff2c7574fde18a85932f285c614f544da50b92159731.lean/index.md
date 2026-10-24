# Verification target: GRWTSK.Algebra.DedekindDomain.Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fc146976d9106054698cdb176875afd23dc81cd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean/index.md) · [Full source](../../../../mathematics/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fc146976d9106054698cdb176875afd23dc81cd`.

Source path: `GRWTSK/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isInternal_prime_power_torsion_of_is_torsion_by_ideal](../../../../mathematics/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean/declarations/isinternal-prime-power-torsion-of-is-torsion-by-ideal--e7cc8955e6526e75d2d6611c.md) | 39 | `result-track:e7cc8955e6526e75d2d6611c82f655c4a7c62630d8c1b99362d31be4ee350b75` |
| 2 | `theorem` | [isInternal_prime_power_torsion](../../../../mathematics/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean/declarations/isinternal-prime-power-torsion--f74e8851988514a58642dee5.md) | 67 | `result-track:f74e8851988514a58642dee54e28fbfac50a9262c728e620aeaa1edf82b9c748` |
| 3 | `theorem` | [exists_isInternal_prime_power_torsion](../../../../mathematics/Algebra/DedekindDomain/Variant9facf394f1164b9f4de8ff2c7574fde18a85932f285c614f544da50b92159731.lean/declarations/exists-isinternal-prime-power-torsion--17d1a848b4f884c20e9200fe.md) | 79 | `result-track:17d1a848b4f884c20e9200fed024494bd1f1ed905b3703ab9f89377216ec3cf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
