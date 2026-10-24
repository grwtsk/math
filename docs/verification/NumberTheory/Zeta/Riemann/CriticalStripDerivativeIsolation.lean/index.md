# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripDerivativeIsolation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f378227390bbb9559399c2df24157ed40994e1da",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f378227390bbb9559399c2df24157ed40994e1da`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AtMostOneZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/atmostonezero--1aac249b2834b58f55d0612e.md) | 22 | `declaration-track:1aac249b2834b58f55d0612e60ff597c9fe02dcca4593103352eb647e97b94a4` |
| 2 | `structure` | [DerivativeDisk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/derivativedisk--ebc9f999583afa99432c0406.md) | 26 | `declaration-track:ebc9f999583afa99432c04064d8f999143850f0bf6be258614cad77410ce4110` |
| 3 | `def` | [residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/residual--f042cc44f64787146893a07a.md) | 38 | `declaration-track:f042cc44f64787146893a07ab64434e3968468d1e77a10e74d144b64f6020d3e` |
| 4 | `lemma` | [residual_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/residual-hasderivat--179c504fad9dca307aadba27.md) | 40 | `result-track:179c504fad9dca307aadba27ca73c1997d1d3d0970c734676f334853ff67c926` |
| 5 | `theorem` | [residual_variation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/residual-variation--55c9647e4ab728d7de5c9297.md) | 46 | `result-track:55c9647e4ab728d7de5c9297474731a8e627fcf1a884ae38bb29792bd314fe35` |
| 6 | `theorem` | [lower_lipschitz](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/lower-lipschitz--6f5ef90d528867a1f6c804df.md) | 61 | `result-track:6f5ef90d528867a1f6c804df2b88c3f1baf70051cacb96ee6df1ae397ad1981a` |
| 7 | `theorem` | [injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/injective--1153791ea142e34299bbbead.md) | 73 | `result-track:1153791ea142e34299bbbead60e34b8539ad06d9f9babb7d8e94fe6fc6a031a3` |
| 8 | `theorem` | [atMostOneZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/atmostonezero--913cee09140b4d6b592709c0.md) | 82 | `result-track:913cee09140b4d6b592709c021d0644d8b43a3df65fc4f4cdf8580ed243da941` |
| 9 | `theorem` | [deriv_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/deriv-ne-zero--775c434937a0bd9901285b48.md) | 87 | `result-track:775c434937a0bd9901285b48c71e3c5894e8f4da13f6ae142a0aabf82bc8ba42` |
| 10 | `theorem` | [distance_to_zero_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/distance-to-zero-le--c2c1d08830f83915fd180005.md) | 95 | `result-track:c2c1d08830f83915fd180005f9d46c3a7fd2e648cd3daf7b9334bebdd0fd4a06` |
| 11 | `def` | [restrict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/restrict--bed7e66fbc16de437a64a6f6.md) | 104 | `declaration-track:bed7e66fbc16de437a64a6f60adc9d2ca46d878bd109772532ec9c30b5319c9f` |
| 12 | `def` | [ofDerivativeModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/ofderivativemodel--30a015e57fdfed30317703c6.md) | 116 | `declaration-track:30a015e57fdfed30317703c63ffd76a6ccdc049176bcb401e609da83e96ac0db` |
| 13 | `def` | [affine](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/declarations/affine--caf2bd8cd57ab33e49323176.md) | 139 | `declaration-track:caf2bd8cd57ab33e493231761c39b53814d8353fe80a04a4b40dd00979c2eff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
