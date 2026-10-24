# Verification target: GRWTSK.Algebra.GroupTheory.Embedding.Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a3fa5c1ac744edd6bcae6a2467a669e538e398",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a3fa5c1ac744edd6bcae6a2467a669e538e398`.

Source path: `GRWTSK/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/smul--ae18750130d16c9ffc8ef37e.md) | 28 | `declaration-track:ae18750130d16c9ffc8ef37ef82097ddd33c75c693f0b6901dfcb6886873c493` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/smul-def--bfdcde016b211ac7fa27d68f.md) | 32 | `result-track:bfdcde016b211ac7fa27d68f64d64efd05ebfe15114f10c19e5c068f2b2ebdc8` |
| 3 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/smul-apply--dca0a5d23dc63b951e6bab40.md) | 37 | `result-track:dca0a5d23dc63b951e6bab407e00b155a5d71a44957df388cd92acc69864f551` |
| 4 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/coe-smul--05eab2c55def74798fa82015.md) | 41 | `result-track:05eab2c55def74798fa82015bab6f48cb3cce2153803c8a8c609c4dda6f79328` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/instance--edab281e4f0f2cb7a992e914.md) | 44 | `declaration-track:edab281e4f0f2cb7a992e914a97101fe819ec3da37b4bc8014c0ab960c9ff013` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/instance--64775bf8e1d863bc02a7bda1.md) | 49 | `declaration-track:64775bf8e1d863bc02a7bda12817747a12d5fb569f593555033745fd44c0df4f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/instance--969fba228abda2af5652892f.md) | 53 | `declaration-track:969fba228abda2af5652892f915f80d8df9b2a80e9b2b88844b5e37aff95635b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Embedding/Variante3b2d7813cc960cf921c1b657eab1a1c3cc73fdbb3a1d2ee34442e10044e8faa.lean/declarations/instance--b1b3747eaada915550c7b404.md) | 58 | `declaration-track:b1b3747eaada915550c7b404a6538e39ea000698642b8e6399906e7d155aa3b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
