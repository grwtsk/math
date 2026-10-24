# Verification target: GRWTSK.Algebra.ReesAlgebra.Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ea5b70e34fa9c3999aad96f6d13de7c8af18648",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ea5b70e34fa9c3999aad96f6d13de7c8af18648`.

Source path: `GRWTSK/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/reesalgebra--795652515457704a42d949e1.md) | 47 | `declaration-track:795652515457704a42d949e18f2a003e4156a6671c0323eb52dc4fb8078071ba` |
| 2 | `theorem` | [mem_reesAlgebra_iff](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/mem-reesalgebra-iff--c737183cf0e5c763f40a96aa.md) | 72 | `result-track:c737183cf0e5c763f40a96aaf01ae345c1d8454466b94c640b0f2b423f9a8d60` |
| 3 | `theorem` | [mem_reesAlgebra_iff_support](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/mem-reesalgebra-iff-support--025f27afaaa19240b6b9513d.md) | 75 | `result-track:025f27afaaa19240b6b9513d9a7263043a1b0aab332f0da0af1f44e6c18b7c8b` |
| 4 | `theorem` | [reesAlgebra.monomial_mem](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/reesalgebra-monomial-mem--929f06af251628ffd547316f.md) | 82 | `result-track:929f06af251628ffd547316f7199d41bdff6cc39428aa7b9294de7cd96dd56d8` |
| 5 | `theorem` | [monomial_mem_adjoin_monomial](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/monomial-mem-adjoin-monomial--b75c3fa565e851df46cdb887.md) | 87 | `result-track:b75c3fa565e851df46cdb887974c1e1e393aee3467c35342bb0f05a0450d68c4` |
| 6 | `theorem` | [adjoin_monomial_eq_reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/adjoin-monomial-eq-reesalgebra--37fb1a083586e567090f75f4.md) | 101 | `result-track:37fb1a083586e567090f75f449f6e8197c5fca6725a63647598fd4fc64e5bb07` |
| 7 | `theorem` | [reesAlgebra.fg](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/reesalgebra-fg--ee4602e304e6296ff9eff244.md) | 115 | `result-track:ee4602e304e6296ff9eff24437d5fa16ad0ddf2aa49c98002f9f7ba4d4c7188f` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/instance--545cb04affa624450d955ca6.md) | 127 | `declaration-track:545cb04affa624450d955ca6f7868f4e467bd1a5609447863970c46d5ff306e3` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/declarations/instance--48064e6725745585f019216b.md) | 130 | `declaration-track:48064e6725745585f019216b9b5645976a83c3edd12b2bb2139cc89171275094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
