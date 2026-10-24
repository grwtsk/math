# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eb87727e0a29eb14857fe760fe81ce999f036a1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eb87727e0a29eb14857fe760fe81ce999f036a1`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [List](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/declarations/list--c5bdd08085b514024ba40c7a.md) | 13 | `declaration-track:c5bdd08085b514024ba40c7a44b4e1d68fc8fa768a78800ac1a21e48bc06e542` |
| 2 | `def` | [filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/declarations/filter--e29447b1eba71ead8a9f9c93.md) | 20 | `declaration-track:e29447b1eba71ead8a9f9c933af8cad7cf512da30a87f7c535d8e5a4f9a5ef97` |
| 3 | `theorem` | [filter_cons_true](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/declarations/filter-cons-true--2fa0cbf70a01766b8fe1bee3.md) | 28 | `result-track:2fa0cbf70a01766b8fe1bee3864c8848e19ab6a608df42fd4f68175000ccfa68` |
| 4 | `theorem` | [filter_cons_false](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/declarations/filter-cons-false--3161aad047002da5ddb9d201.md) | 32 | `result-track:3161aad047002da5ddb9d201c230eb366cc7b676ec4546eff99e279c506bc9a2` |
| 5 | `inductive` | [Mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/declarations/mem--dfd1c6eae2363cbde957efb2.md) | 36 | `declaration-track:dfd1c6eae2363cbde957efb256339f7e0474131bb701a71c97084a5d08af5243` |
| 6 | `theorem` | [mem_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean/declarations/mem-filter--5132cb711fd1fd73c23893f6.md) | 42 | `result-track:5132cb711fd1fd73c23893f67b9eddbc06f07a2b19d377e93fa3f9a07d87ca0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
