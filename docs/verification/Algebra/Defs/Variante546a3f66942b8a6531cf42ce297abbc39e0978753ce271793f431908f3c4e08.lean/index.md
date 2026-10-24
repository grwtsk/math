# Verification target: GRWTSK.Algebra.Defs.Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca97f166290b9afca387d30e0884a249b8c5c279",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca97f166290b9afca387d30e0884a249b8c5c279`.

Source path: `GRWTSK/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAlgebraic](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/isalgebraic--77316e5977e0b742b85863e6.md) | 41 | `declaration-track:77316e5977e0b742b85863e698b19293c8105048e0ce705b0b69694137c729f0` |
| 2 | `def` | [Transcendental](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/transcendental--1a9a000d1313b9b5c6b5aaa0.md) | 45 | `declaration-track:1a9a000d1313b9b5c6b5aaa01a4ccf8f144b2a1abc8b035654a0c01b5ee701af` |
| 3 | `theorem` | [transcendental_iff](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/transcendental-iff--8fe55586eb6a76f1156b41a5.md) | 52 | `result-track:8fe55586eb6a76f1156b41a5bba289c30e9a8de5cfd7763c2a3428d2e68630d7` |
| 4 | `def` | [Subalgebra.IsAlgebraic](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/subalgebra-isalgebraic--aa59bf37b604e74c675bf094.md) | 58 | `declaration-track:aa59bf37b604e74c675bf0941b585c36376cea607d214d1a33ac097d74227910` |
| 5 | `class` | [Algebra.IsAlgebraic](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/algebra-isalgebraic--b8a0eb32fd9c573e0cb4e66a.md) | 65 | `declaration-track:b8a0eb32fd9c573e0cb4e66ad362839cd563bd7e0fe4d8713f2ded57c435b543` |
| 6 | `class` | [Algebra.Transcendental](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/algebra-transcendental--655124ba4cd8ce7b0c38a47b.md) | 69 | `declaration-track:655124ba4cd8ce7b0c38a47b09f0f468e01b2100b8cfcdd1e28099f446c0d492` |
| 7 | `lemma` | [Algebra.isAlgebraic_def](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/algebra-isalgebraic-def--1f0cd21cf4c2854d902d8fd6.md) | 74 | `result-track:1f0cd21cf4c2854d902d8fd6ceae6cc87c0757a5fac503ee1bc4b903ff913a4e` |
| 8 | `lemma` | [Algebra.transcendental_def](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/algebra-transcendental-def--5084a8849359b327d766bd49.md) | 77 | `result-track:5084a8849359b327d766bd49e8e2357d2820622dc484ecd5573deec56e08a52a` |
| 9 | `theorem` | [Algebra.transcendental_iff_not_isAlgebraic](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/algebra-transcendental-iff-not-isalgebraic--1f63ae3ba037f52ec67c197b.md) | 80 | `result-track:1f63ae3ba037f52ec67c197bf8499f29bd2827971fd26f4893d9a0f4952a7ddb` |
| 10 | `theorem` | [Subalgebra.isAlgebraic_iff](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/subalgebra-isalgebraic-iff--7a668e795111fe601c08a9ed.md) | 85 | `result-track:7a668e795111fe601c08a9ed9729f8a8f88586109d80679c37e21d239068a130` |
| 11 | `theorem` | [Algebra.isAlgebraic_iff](../../../../mathematics/Algebra/Defs/Variante546a3f66942b8a6531cf42ce297abbc39e0978753ce271793f431908f3c4e08.lean/declarations/algebra-isalgebraic-iff--f61726e26eefe69968c753eb.md) | 95 | `result-track:f61726e26eefe69968c753ebdcebcfdbb106eb772e7bebe434a3b0cf87b91baf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
