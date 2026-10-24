# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6fa16ca87f7c433a0cb410b2fc81bcda20cd858",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6fa16ca87f7c433a0cb410b2fc81bcda20cd858`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePower`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePowerEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/finitepowerenclosure--a51fa7a1421f42e5a8a05ea6.md) | 31 | `declaration-track:a51fa7a1421f42e5a8a05ea6a7cd8ad281514ae027ffbb4eb5aac9bc079505d7` |
| 2 | `def` | [sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/sample--506f28b4b7e86302b08e0d70.md) | 46 | `declaration-track:506f28b4b7e86302b08e0d705de184a916d0d888befc11c99cabefece677a515` |
| 3 | `def` | [finiteError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/finiteerror--6797845ed29fd2859ab49718.md) | 49 | `declaration-track:6797845ed29fd2859ab49718e24296d4b7d1f459a8e7fe2a7cbd4755cd00f1fa` |
| 4 | `lemma` | [finiteError_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/finiteerror-nonneg--49e7ed17eb56bfdd19002b88.md) | 52 | `result-track:49e7ed17eb56bfdd19002b8875684c40491f447f588d36ac16a23223846c7b58` |
| 5 | `theorem` | [finite_sum_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/finite-sum-error--30292023cb6c95082aa53445.md) | 58 | `result-track:30292023cb6c95082aa534455d7f790613bd5dc523d41ae2d6096b67999770cd` |
| 6 | `theorem` | [finite_model_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/finite-model-error--8d0c93cdd6e5253211595666.md) | 65 | `result-track:8d0c93cdd6e52532115956661de5841403434aa3a799e64919534d6671b934be` |
| 7 | `def` | [sourceError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/sourceerror--d5f32991446111b33fee636a.md) | 83 | `declaration-track:d5f32991446111b33fee636a44fe37c867662253fb34076f15db2cc3f2f595fe` |
| 8 | `lemma` | [sourceError_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/sourceerror-nonneg--e18a631b716eba9bc8ba4bc7.md) | 86 | `result-track:e18a631b716eba9bc8ba4bc720993b1e7cf0695903b9302464b3345813b60361` |
| 9 | `theorem` | [source_encloses](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/source-encloses--c213afda59fa10a72a8df3b8.md) | 94 | `result-track:c213afda59fa10a72a8df3b8cbc930eff2a04cb8a9706664357125995ce83306` |
| 10 | `theorem` | [sourceError_le_factorBounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/sourceerror-le-factorbounds--8fffecabeb76c3a6b2626001.md) | 107 | `result-track:8fffecabeb76c3a6b262600142be5bfd97d558d7792980a317b12cfeb82a7633` |
| 11 | `theorem` | [source_error_with_modulus_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/source-error-with-modulus-bound--9cd059ae32bca84a0867891e.md) | 122 | `result-track:9cd059ae32bca84a0867891e507384ca650036b3db636cfa74435333847c30b5` |
| 12 | `def` | [derivativeBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/derivativebound--edd4025dace76ee7872bb1ba.md) | 145 | `declaration-track:edd4025dace76ee7872bb1ba4d9e69bf0baf2b4cb34a4721a2854feb3513d2d5` |
| 13 | `def` | [toBoundedPatch](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/toboundedpatch--dad3a8d51c1a5ceafbb7d4d2.md) | 150 | `declaration-track:dad3a8d51c1a5ceafbb7d4d2b5d404a59044f93dbba9990ee49da348c5dadd2e` |
| 14 | `theorem` | [no_strict_margin_at_source_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/declarations/no-strict-margin-at-source-zero--c8cb29272ad748162d069b01.md) | 167 | `result-track:c8cb29272ad748162d069b0149b3a9bbacecb3437b88dcff97bc8bbf0085e6e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
