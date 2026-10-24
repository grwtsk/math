# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLinearization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "278db7ad29516b47156e40765afe46ff4be3991b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `278db7ad29516b47156e40765afe46ff4be3991b`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticInterfaces.lean/index.md) — import line 16; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [paperSelectedMonomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/paperselectedmonomial--8a8fa2a4a766df18c9a4212c.md) | 33 | `declaration-track:8a8fa2a4a766df18c9a4212c6ade29e175f45a558d707130448f5135c3b746f2` |
| 2 | `def` | [paperComplementMonomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/papercomplementmonomial--1a8a135c7ccd241d16288268.md) | 39 | `declaration-track:1a8a135c7ccd241d1628826852ee6c3a34f17234b8ed1de4c07d5c5c20a444cc` |
| 3 | `theorem` | [paperComplementMonomial_mul_selected](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/papercomplementmonomial-mul-selected--93a7d460a0f6f334a737c56e.md) | 45 | `result-track:93a7d460a0f6f334a737c56e3556a7bbfece0513acee592121f41708e7a989c2` |
| 4 | `theorem` | [paperSelectedMonomial_mul_complement](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/paperselectedmonomial-mul-complement--962de01abaea41578d2f7cf7.md) | 53 | `result-track:962de01abaea41578d2f7cf7a74981752b1a65f991a6f8d90ec8dad85bcd6316` |
| 5 | `def` | [geometryCoefficientA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrycoefficienta--87e0ef6416262c6424c45f42.md) | 59 | `declaration-track:87e0ef6416262c6424c45f423b804529843e9f1f1c39beeef1281b690eb0b901` |
| 6 | `def` | [geometryVariableA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometryvariablea--d85407d14b9b6ff303ab0646.md) | 64 | `declaration-track:d85407d14b9b6ff303ab0646bace799bd6a3b2b7c1bbc3f9505b6f103ed36224` |
| 7 | `def` | [geometryCoefficientB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrycoefficientb--fc11eee0fd27c44465c3c5bd.md) | 69 | `declaration-track:fc11eee0fd27c44465c3c5bd78fa82c639c9146c01a95c7d00e229bd3980cdb9` |
| 8 | `def` | [geometryVariableB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometryvariableb--5ffaf74c9e94a60459dc696d.md) | 74 | `declaration-track:5ffaf74c9e94a60459dc696d110fe11730148d368945b99aaac710040b851f1f` |
| 9 | `def` | [geometryCoefficientC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrycoefficientc--2e3dfa5bfcebb108a6c59b07.md) | 79 | `declaration-track:2e3dfa5bfcebb108a6c59b07e1e357a99a0bbaf559e6e565e5d372c9afa1fbc1` |
| 10 | `def` | [geometryVariableC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometryvariablec--3ac45d4f2c3b5fbdbe94833f.md) | 84 | `declaration-track:3ac45d4f2c3b5fbdbe94833ff2b21c2a1e39f06704b8d6cc5b1d8296997d126a` |
| 11 | `theorem` | [geometryCoefficientA_mul_variableA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrycoefficienta-mul-variablea--e818c28935df973367f77366.md) | 89 | `result-track:e818c28935df973367f773664ba62d0be19981f8fc93c87435059e98279f5ce7` |
| 12 | `theorem` | [geometryCoefficientB_mul_variableB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrycoefficientb-mul-variableb--a27d8bed0606a13b78cd9e7d.md) | 96 | `result-track:a27d8bed0606a13b78cd9e7d72044784b3d8ec9e3290231a9fc573aae1e21130` |
| 13 | `theorem` | [geometryCoefficientC_mul_variableC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrycoefficientc-mul-variablec--297358c44897595decfe54ff.md) | 103 | `result-track:297358c44897595decfe54ffd7c9e3dce2b29e950509e2f7f2199a326e1e859d` |
| 14 | `def` | [GeometryLinearEquation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrylinearequation--38eca493bfa8dbac04c8ed65.md) | 110 | `declaration-track:38eca493bfa8dbac04c8ed65eb59caa032701d3c3ba8300de4f560ce790fdbc5` |
| 15 | `theorem` | [geometryLinearEquation_of_mem_boxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrylinearequation-of-mem-boxfinset--5f05cc887f5834c5448183d8.md) | 119 | `result-track:5f05cc887f5834c5448183d8c8a3c7756e99c25ec449f293c63f19fe14fb443e` |
| 16 | `theorem` | [geometryLinearEquation_of_mem_paperBoxFinset](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLinearization.lean/declarations/geometrylinearequation-of-mem-paperboxfinset--7426747c7f2de70673b8618d.md) | 131 | `result-track:7426747c7f2de70673b8618dc8cd69466e16b4f00f461c586c80d1520ed6f23a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
