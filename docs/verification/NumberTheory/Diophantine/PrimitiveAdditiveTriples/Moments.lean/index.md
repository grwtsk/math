# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4be8f0955d15541386c9ae3c20a6ea36c1a05741",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4be8f0955d15541386c9ae3c20a6ea36c1a05741`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeDivisorFilter`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeDivisorFilter.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [additivePairs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/additivepairs--8030de51bc437888893a8c04.md) | 17 | `declaration-track:8030de51bc437888893a8c040fbb6b87891d8aeecc835d976fba3325ccd0c21b` |
| 2 | `theorem` | [mem_additivePairs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/mem-additivepairs--917f72ea8f81c96a36a6bfec.md) | 20 | `result-track:917f72ea8f81c96a36a6bfecbe7fe4554aef21fffa1d7a28e1e7d98ac878b2b4` |
| 3 | `def` | [primitiveWeightedMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/primitiveweightedmoment--9e3de9a8759c807c37dc7aa4.md) | 28 | `declaration-track:9e3de9a8759c807c37dc7aa42b52c09342c1c4039d6e8c07fed434ab95388094` |
| 4 | `def` | [commonDivisorWeightedMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/commondivisorweightedmoment--a913d8951d61058ec9e7466d.md) | 35 | `declaration-track:a913d8951d61058ec9e7466dee49e0065f98a16a4e78db1a3813c84742a97e7d` |
| 5 | `def` | [primitiveMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/primitivemoment--35679df433d571c274a908be.md) | 42 | `declaration-track:35679df433d571c274a908be5b42472452cfcb625cbaaad452009aa5e180a477` |
| 6 | `def` | [commonDivisorMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/commondivisormoment--0c1a5b116108c6ca4bec9abe.md) | 45 | `declaration-track:0c1a5b116108c6ca4bec9abe292190fc73f4f4300f66df8dabfb6d5a612a0cb9` |
| 7 | `theorem` | [primitiveWeightedMoment_eq_moebius_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/primitiveweightedmoment-eq-moebius-sum--2f3432f1a17ca79d8995589c.md) | 52 | `result-track:2f3432f1a17ca79d8995589c515f9c11d07f2fa32dd4c7ce1ca9ccf116269393` |
| 8 | `theorem` | [primitiveMoment_eq_moebius_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/declarations/primitivemoment-eq-moebius-sum--d20587989f54713b33fed7e7.md) | 85 | `result-track:d20587989f54713b33fed7e72da4d750c4ecef60fd136aba282b1a9d12f858c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
