# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteMobiusBeforeStyleFix.Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "480fee2e9130acd3747ca107cc410e0f66229fa0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `480fee2e9130acd3747ca107cc410e0f66229fa0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [causalShift](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/causalshift--e60af1f8c2a70f9080f4293f.md) | 21 | `declaration-track:e60af1f8c2a70f9080f4293f8509044da596ec43f96777601bcbd6eca3dea395` |
| 2 | `theorem` | [causalShift_ae](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/causalshift-ae--84a5e4cfeba81c4048af11d7.md) | 25 | `result-track:84a5e4cfeba81c4048af11d7cbe702834b0c11d793222a3cde3ab302f5c5a355` |
| 3 | `theorem` | [causalShift_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/causalshift-norm-le--fbb7d9cc6124d16834c087a9.md) | 36 | `result-track:fbb7d9cc6124d16834c087a9589bcc259ce05b6d04a9b5758006e487ddee6ece` |
| 4 | `theorem` | [causalShift_exponential_inner](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/causalshift-exponential-inner--18b86ccca5794f0b8ed463fa.md) | 41 | `result-track:18b86ccca5794f0b8ed463fac6842080696988437f29028e3e47a2b648a97e03` |
| 5 | `def` | [mobiusReciprocalSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/mobiusreciprocalsum--6b9ab5e8bd5fbf88631bd4fc.md) | 50 | `declaration-track:6b9ab5e8bd5fbf88631bd4fc91da42284a0253be0b2c31ebf1728fc7e1644112` |
| 6 | `def` | [finiteMobiusController](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/finitemobiuscontroller--c04b4982d5eb8da1e5c7aa0e.md) | 54 | `declaration-track:c04b4982d5eb8da1e5c7aa0e41c92070a397b1dad41a14086ae64bb3ab72a07f` |
| 7 | `theorem` | [causalShift_half_inner](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/causalshift-half-inner--8456c2573851e8ad9d66f30a.md) | 62 | `result-track:8456c2573851e8ad9d66f30a3d8b11dcf0e711a583f880f366dd1763c72dda97` |
| 8 | `theorem` | [finiteMobiusController_half_inner](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/finitemobiuscontroller-half-inner--6228968ae613b251e278610e.md) | 79 | `result-track:6228968ae613b251e278610ea4f23783525d40c872b682647bd675b680105bce` |
| 9 | `theorem` | [finiteMobiusController_residual_sq_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/finitemobiuscontroller-residual-sq-ge--80c1ba50f6d9cef880389b1a.md) | 117 | `result-track:80c1ba50f6d9cef880389b1ae41dea3bc3c66536828e27f6e0e780a32ce15467` |
| 10 | `theorem` | [finiteMobiusController_full_energy_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteMobiusBeforeStyleFix/Variant3bb8636befabef137261b8313cd4b57f6326a23c616fd7a844e744422110595f.lean/declarations/finitemobiuscontroller-full-energy-ge--4331702e35acd8d6cfaa08f4.md) | 122 | `result-track:4331702e35acd8d6cfaa08f42de8d96d263ebccaa7e2f4a581e5ed2a3e76339d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
