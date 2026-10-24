# Verification target: GRWTSK.Topology.AlgebraicTopology.KanComplex.Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bc631725c255cb04e027978adc8661e84886612",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bc631725c255cb04e027978adc8661e84886612`.

Source path: `GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/KanComplex/Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.CategoryWithFibrations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Subcomplex` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KanComplex](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230.lean/declarations/kancomplex--7dc179cff2be3177ece1e88b.md) | 35 | `declaration-track:7dc179cff2be3177ece1e88b0e7e03cd355f7db702d5a0213ec0e2ddb67aaba4` |
| 2 | `lemma` | [KanComplex.hornFilling](../../../../../mathematics/Topology/AlgebraicTopology/KanComplex/Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230.lean/declarations/kancomplex-hornfilling--9c3a51ea67430e0e18466cc0.md) | 40 | `result-track:9c3a51ea67430e0e18466cc013ca6fa90868a50ce67f8f60bb451f42a8d6b365` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
