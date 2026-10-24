# Verification target: GRWTSK.Algebra.UniversalAlgebra.Module.Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49aae894fdad4329f49a741b00dbb03e46d4f99e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49aae894fdad4329f49a741b00dbb03e46d4f99e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.RingHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/declarations/instsmul--4c73a4d0aa26ad51772179ce.md) | 31 | `declaration-track:4c73a4d0aa26ad51772179ce2f4fadf13fa71034347d22a5d321e8760f154bf3` |
| 2 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/declarations/coe-smul--5f3e00405ea833892097319f.md) | 35 | `result-track:5f3e00405ea833892097319fde65aa6ec6c77dc8f9f4ac29af47adcb187688dc` |
| 3 | `lemma` | [mk_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/declarations/mk-smul--22b0057cd3bffb365c4ed791.md) | 39 | `result-track:22b0057cd3bffb365c4ed79118cf8d8eb261ae9a3c6cebe23bdb7d81e407db5a` |
| 4 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/declarations/instisscalartower--6caeab9f63b084693cbbb8a5.md) | 48 | `declaration-track:6caeab9f63b084693cbbb8a583e3305b649405fa40a362693259b2433f460b47` |
| 5 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/declarations/instsmulwithzero--bf567b71c3b7a997bb5b8f43.md) | 57 | `declaration-track:bf567b71c3b7a997bb5b8f43c08c06b46a5e99e64d3200251aefb4cd42423524` |
| 6 | `instance` | [instOrderedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/declarations/instorderedsmul--a6fee891b0f3688d25f12132.md) | 68 | `declaration-track:a6fee891b0f3688d25f121326c0aa976ec9a6797b98607c40c1bc2250466094e` |
| 7 | `instance` | [instModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/declarations/instmodule--48f2f58d04e7c8b7fabc235c.md) | 78 | `declaration-track:48f2f58d04e7c8b7fabc235cbcf57dee55c64ac5290efe3f2b6cdc1c4d31cd5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
