# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AssemblyD.Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "023fb03749c1a0900e9ac80655da273b9117fb2a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `023fb03749c1a0900e9ac80655da273b9117fb2a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Assembly` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Functional` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cRatio](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean/declarations/cratio--7bc4385a14dcbf6c2c5c7994.md) | 28 | `declaration-track:7bc4385a14dcbf6c2c5c799479e349a0f5a547f2f8136825ec25683fa8b80f36` |
| 2 | `theorem` | [cRatio_flat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean/declarations/cratio-flat--a90602328912ce39d882ff88.md) | 31 | `result-track:a90602328912ce39d882ff88e760c01f04674e32e8d30244b85e6edfa082a56e` |
| 3 | `theorem` | [N0star_lower_c](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean/declarations/n0star-lower-c--6d2418a87bfdbc72ee67d4b7.md) | 41 | `result-track:6d2418a87bfdbc72ee67d4b7005f55fa4b07add37ee87a6edefda2f7bbf214d3` |
| 4 | `theorem` | [two_sub_inv_cStar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean/declarations/two-sub-inv-cstar--ecca4a0702b3b3309975625a.md) | 54 | `result-track:ecca4a0702b3b3309975625a95fb05d55a878b7e0094ef6b4347d04a4fec7870` |
| 5 | `structure` | [TracesBoundsD](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AssemblyD/Variant3d4e66cdb4c0f006e1ea33827791111957143e3b3766f4610acf5172ace42b26.lean/declarations/tracesboundsd--0e418cc7855d79d3603ec518.md) | 61 | `declaration-track:0e418cc7855d79d3603ec518bdf7ba0ee208ce1d16843d8059c53c923f7bba3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
