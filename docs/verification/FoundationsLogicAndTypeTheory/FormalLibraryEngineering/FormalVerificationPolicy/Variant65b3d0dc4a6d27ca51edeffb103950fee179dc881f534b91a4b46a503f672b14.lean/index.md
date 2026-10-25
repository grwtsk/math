# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalVerificationPolicy.Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2f0bb8cb4fdac27f6eebf10ae6d3644a979b4d6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2f0bb8cb4fdac27f6eebf10ae6d3644a979b4d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FormalVerificationPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/declarations/formalverificationpolicy--a00b11e5c92841f810b03f00.md) | 24 | `declaration-track:a00b11e5c92841f810b03f009e6a6332ab01472655f8b167249fce078f3408a3` |
| 2 | `def` | [defaultFormalVerificationPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/declarations/defaultformalverificationpolicy--d9d16c1e94ce86d4952017ec.md) | 34 | `declaration-track:d9d16c1e94ce86d4952017ece03aee99db1aecdfa684bacb0d04e610b40d6e1d` |
| 3 | `theorem` | [formal_policy_requires_kernel_check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/declarations/formal-policy-requires-kernel-check--a34edd2100acce1a0f0eb881.md) | 46 | `result-track:a34edd2100acce1a0f0eb8817fe4f27c4bc7e5df63913e4493b2c56c2a553242` |
| 4 | `theorem` | [formal_policy_forbids_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/declarations/formal-policy-forbids-sorry--41c439534d0673e74f056722.md) | 50 | `result-track:41c439534d0673e74f0567227240db10c9f499ee5d63ccc26ccce0d3e9df79bf` |
| 5 | `theorem` | [formal_policy_forbids_axiom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/declarations/formal-policy-forbids-axiom--70f07f0897d03d1729b17708.md) | 54 | `result-track:70f07f0897d03d1729b1770830a1ec9bad031e454d42e24db2744c4fb284d3a7` |
| 6 | `theorem` | [formal_policy_allows_informal_heuristics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant65b3d0dc4a6d27ca51edeffb103950fee179dc881f534b91a4b46a503f672b14.lean/declarations/formal-policy-allows-informal-heuristics--57225172a972057ca6661675.md) | 58 | `result-track:57225172a972057ca66616751c4b5166d23231a733d7bd87e04e2e4dd6a2e186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
