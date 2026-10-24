# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteMobiusControllerAudit.Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63f480838012021523e05b765cc48c32151f0a0c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63f480838012021523e05b765cc48c32151f0a0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [causalShift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/causalshift--1c3d9e134714ce5cc550594d.md) | 29 | `declaration-track:1c3d9e134714ce5cc550594d7246c5d5a0c6da913a44d00c238666e482b021dc` |
| 2 | `theorem` | [causalShift_ae](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/causalshift-ae--57fd69c18321a2fd415a83ee.md) | 33 | `result-track:57fd69c18321a2fd415a83ee94e564dfee12933d573240a8120087586648ae3b` |
| 3 | `theorem` | [causalShift_norm_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/causalshift-norm-le--44c066be3ba7d86683b199b8.md) | 44 | `result-track:44c066be3ba7d86683b199b82da11feb18db81db2587cd355563348a70523f9a` |
| 4 | `theorem` | [causalShift_exponential_inner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/causalshift-exponential-inner--a778c012542d8cfaa81608d9.md) | 49 | `result-track:a778c012542d8cfaa81608d9f59ae15e20f5fdd95f69b9541c418dc54dcda014` |
| 5 | `def` | [mobiusReciprocalSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/mobiusreciprocalsum--daf3d2ce7cb75c65b921606a.md) | 58 | `declaration-track:daf3d2ce7cb75c65b921606a46a0ca9bcbd744992de3debe6b694e98250f2bac` |
| 6 | `def` | [finiteMobiusController](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/finitemobiuscontroller--94b34a5d3fa84a6bc0d6c40f.md) | 62 | `declaration-track:94b34a5d3fa84a6bc0d6c40fc049f5e8f7604480531382c28969766ba04b415a` |
| 7 | `theorem` | [causalShift_half_inner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/causalshift-half-inner--3b12c9b8bff925242596aa40.md) | 70 | `result-track:3b12c9b8bff925242596aa4071f6231d3eef93bc706d16a80a82d28383d90106` |
| 8 | `theorem` | [finiteMobiusController_half_inner](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/finitemobiuscontroller-half-inner--bd3f700265d77a30a1ae388d.md) | 87 | `result-track:bd3f700265d77a30a1ae388d5ebbfc37f0efcdab621913ee1f60ebd9fcc6f546` |
| 9 | `theorem` | [finiteMobiusController_residual_sq_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/finitemobiuscontroller-residual-sq-ge--2b58dd85f4f2c153a644bc18.md) | 125 | `result-track:2b58dd85f4f2c153a644bc1819c259f813eb8b90318775491a0a6e622c9ff6c9` |
| 10 | `theorem` | [finiteMobiusController_full_energy_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/declarations/finitemobiuscontroller-full-energy-ge--61471dae252a0f2ae6df1a1e.md) | 130 | `result-track:61471dae252a0f2ae6df1a1e2f7a612579b511094291296fdc8d668b62a948cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
