# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lawful.Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b03db4b533f2ca1895ac660949ad2b031d0287c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b03db4b533f2ca1895ac660949ad2b031d0287c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/declarations/mk--879d5769737f6e50b05531a9.md) | 45 | `declaration-track:879d5769737f6e50b05531a90d6ed9e42ea8c9394f38111c49a4d8d699671442` |
| 2 | `theorem` | [run_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/declarations/run-mk--42114aa4ad18a8400f502834.md) | 48 | `result-track:42114aa4ad18a8400f5028340ebb4d31e0911125ec568ddff9c796dc47527ec8` |
| 3 | `theorem` | [run_monadLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/declarations/run-monadlift--c24469cfeb3829b50f80f116.md) | 64 | `result-track:c24469cfeb3829b50f80f116e92bdef6cd13574ff6a02025f8ac0b414d68aaa8` |
| 4 | `theorem` | [run_monadMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/declarations/run-monadmap--65a0c3e4d543c72a448f50f7.md) | 69 | `result-track:65a0c3e4d543c72a448f50f7c54b168927b4c7d5cdeda5283db3c847197b7ee8` |
| 5 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/declarations/mk--8650f001ac50414fa4bc65fe.md) | 96 | `declaration-track:8650f001ac50414fa4bc65fe58050d49610413f84902c0a9fbc3ac95a7babbbd` |
| 6 | `theorem` | [run_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/declarations/run-mk--58f54bfee0bc723eddbdf5d9.md) | 99 | `result-track:58f54bfee0bc723eddbdf5d95b3ad5a90696bc6891236d03bcad792dbeb0aaa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
