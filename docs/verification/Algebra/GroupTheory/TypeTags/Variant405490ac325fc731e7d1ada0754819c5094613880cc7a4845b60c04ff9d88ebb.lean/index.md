# Verification target: GRWTSK.Algebra.GroupTheory.TypeTags.Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9ce021002859f2927d10621074cace59e4868c9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9ce021002859f2927d10621074cace59e4868c9`.

Source path: `GRWTSK/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Additive.vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/additive-vadd--7e9ce6a4525f62df1666d332.md) | 27 | `declaration-track:7e9ce6a4525f62df1666d332f5f577dfec99d6c540a143e6ddcbe1b5091051b3` |
| 2 | `instance` | [Multiplicative.smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/multiplicative-smul--5d3230825ef0f92110fece9c.md) | 29 | `declaration-track:5d3230825ef0f92110fece9cef58141c190df0871aca3fc075fdbde40e232eba` |
| 3 | `lemma` | [toMul_smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/tomul-smul--1f1785c40b3cde4a03cc3b97.md) | 31 | `result-track:1f1785c40b3cde4a03cc3b97277e2686be5e4ae9b0a5ae80477702ea7dba6481` |
| 4 | `lemma` | [ofMul_vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/ofmul-vadd--4d5eb962fc98a1502ddd5e25.md) | 33 | `result-track:4d5eb962fc98a1502ddd5e257826381bab6eabebfdda4ec23ff60d7ce9393595` |
| 5 | `lemma` | [toAdd_vadd](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/toadd-vadd--c8e527750eee8bae77ee349c.md) | 35 | `result-track:c8e527750eee8bae77ee349c3a35c48d5c659f3b60c4286ea8a373740e088985` |
| 6 | `lemma` | [ofAdd_smul](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/ofadd-smul--7a4bdaeea12ac82ec69a17b6.md) | 37 | `result-track:7a4bdaeea12ac82ec69a17b681763ccf35b80f46aeaafacce05e67bd906845ea` |
| 7 | `instance` | [Additive.addAction](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/additive-addaction--b6cb000dfd13016742e18cce.md) | 40 | `declaration-track:b6cb000dfd13016742e18ccef9c25f63e0916dbc0f8180ec395812a08b55e3fc` |
| 8 | `instance` | [Multiplicative.mulAction](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/multiplicative-mulaction--9771d5206b1aa20f880157aa.md) | 44 | `declaration-track:9771d5206b1aa20f880157aaffd8dd4d080ada73de2c9b38c88b49355b77dda1` |
| 9 | `instance` | [Additive.vaddCommClass](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/additive-vaddcommclass--fdda16f8820908ad0aed7ab9.md) | 49 | `declaration-track:fdda16f8820908ad0aed7ab92890f2d7f1c3b6d47573e2476c7efd329533ad16` |
| 10 | `instance` | [Multiplicative.smulCommClass](../../../../../mathematics/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/declarations/multiplicative-smulcommclass--b8dc44f67173e6e8ca4b7618.md) | 53 | `declaration-track:b8dc44f67173e6e8ca4b76187e586ef29736bb18efab33d99f567993dbba40be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
