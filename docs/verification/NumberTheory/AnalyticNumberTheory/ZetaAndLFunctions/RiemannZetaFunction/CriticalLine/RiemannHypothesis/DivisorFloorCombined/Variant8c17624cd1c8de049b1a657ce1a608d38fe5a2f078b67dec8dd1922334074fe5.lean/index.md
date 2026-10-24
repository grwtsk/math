# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorFloorCombined.Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55efbfab664485935a87d2a0fea4cc732df8758d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55efbfab664485935a87d2a0fea4cc732df8758d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/dampeddivisorcoefficient--31606c2a7f62f3aa479d8ea7.md) | 15 | `declaration-track:31606c2a7f62f3aa479d8ea72ee5b34ac07a177682178e6dc88ffe47b1654caa` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/floor-sum-divisors--3368a19dcb708f22dc70bc52.md) | 32 | `result-track:3368a19dcb708f22dc70bc52261c466a9c9f8b8d8b64aa2afa6888c255d67d46` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/divisor-prefix-eq-floor--e4f9a9706d72fd2ae905ef9c.md) | 62 | `result-track:e4f9a9706d72fd2ae905ef9c264ae104607221f6fc49b102cc18956ed954efcd` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/residual-floor--136faaf4e9a5484d982e87db.md) | 68 | `result-track:136faaf4e9a5484d982e87dbf3d828d0e6826c3ef64523720d59431bd172c256` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/damped-floor--5853bb632a03c89c7f3e06a0.md) | 83 | `result-track:5853bb632a03c89c7f3e06a0cbdb7578fd01a9e2b7f115b50943e023bec9f1f0` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--ffc28559e88fe6d5e0cfb25d.md) | 95 | `result-track:ffc28559e88fe6d5e0cfb25d1de9ed8f399f396bbcb5edf66db247b08f27771a` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/arithmeticresidual-eq-divisor-prefix--9994985a6810d354ff4573e9.md) | 108 | `result-track:9994985a6810d354ff4573e9417c7790f209d401809120411d807c5f41426143` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--c653e67443a530db7d64e8cd.md) | 119 | `result-track:c653e67443a530db7d64e8cd6a33a5c339e21d602053f8bea911160b3229960a` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorCombined/Variant8c17624cd1c8de049b1a657ce1a608d38fe5a2f078b67dec8dd1922334074fe5.lean/declarations/arithmeticresidual-zero-damping-endpoint--8368c1716ffddc89da3d4101.md) | 129 | `result-track:8368c1716ffddc89da3d4101b062b96ac4e9405ecd3ed0282eb83d2bbac7764d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
