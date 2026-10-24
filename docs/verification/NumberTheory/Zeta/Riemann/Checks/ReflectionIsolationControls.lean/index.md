# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ReflectionIsolationControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "995deab0a9284e5003b921d765f649fe6d6463b3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `995deab0a9284e5003b921d765f649fe6d6463b3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.LocalZeroSymmetry`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftPoint](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/leftpoint--e60657ad7f32eb90fe8f3397.md) | 21 | `declaration-track:e60657ad7f32eb90fe8f3397a7395a2125eeb676058ae39f50a9121589578b29` |
| 2 | `def` | [middlePoint](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/middlepoint--3d0f2f96e645dbc67f33c07a.md) | 22 | `declaration-track:3d0f2f96e645dbc67f33c07a0210d9ea326982dbeff6d9bfa886033283c435d2` |
| 3 | `def` | [rightPoint](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/rightpoint--31cccc0f829306e4907fb080.md) | 23 | `declaration-track:31cccc0f829306e4907fb080ffde2467586652ceb6d0eed864c8c23ca206df7c` |
| 4 | `def` | [syntheticSet](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/syntheticset--8041bd9fab18053aa521199b.md) | 25 | `declaration-track:8041bd9fab18053aa521199b6354a110385619fdc43e81e6d96d1156893378a2` |
| 5 | `theorem` | [reflected_pair](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/reflected-pair--bfc9a2959be428905c706c5b.md) | 28 | `result-track:bfc9a2959be428905c706c5b4a4d4d39d911e96b395c8e1454aeb5dbb7431575` |
| 6 | `theorem` | [symmetry_without_uniqueness](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/symmetry-without-uniqueness--6f8734d3e56bdd0cf84ae5f6.md) | 40 | `result-track:6f8734d3e56bdd0cf84ae5f69be3a97c89c488d0a06473e675e63753b906710b` |
| 7 | `theorem` | [reflections_are_different](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/reflections-are-different--530e9c97eab783209beca502.md) | 47 | `result-track:530e9c97eab783209beca502dcd32a065528eccdb3202c00e6b129b068f5b34c` |
| 8 | `theorem` | [conjugation_moves_center](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/conjugation-moves-center--189bf323503af98276d2f4f4.md) | 55 | `result-track:189bf323503af98276d2f4f4e296be267600b56c167eceff8768b708b7d9e96f` |
| 9 | `theorem` | [off_line_center_not_fixed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/off-line-center-not-fixed--239b1ed6cd838aff44f5dbb9.md) | 62 | `result-track:239b1ed6cd838aff44f5dbb997b96d0ca8a114f7847b38722beba9b42762ffee` |
| 10 | `theorem` | [local_isolation_does_not_exhaust](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/local-isolation-does-not-exhaust--58275e9c67337a640aaa5022.md) | 70 | `result-track:58275e9c67337a640aaa502228aec208dd4c0f45b931065a587a7a9007991957` |
| 11 | `theorem` | [lower_count_not_upper](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ReflectionIsolationControls.lean/declarations/lower-count-not-upper--0b9c34c21b7ee57b7dea9652.md) | 89 | `result-track:0b9c34c21b7ee57b7dea9652da5c66707c3c1bd69cd0a966cffb714a703301b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
