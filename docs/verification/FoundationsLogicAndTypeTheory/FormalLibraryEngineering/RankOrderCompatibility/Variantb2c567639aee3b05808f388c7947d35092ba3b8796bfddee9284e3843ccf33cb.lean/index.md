# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RankOrderCompatibility.Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f10e2298f72b21764787de388e09270f3fcc939",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f10e2298f72b21764787de388e09270f3fcc939`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.BSD.FixedPointRecursion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RankOrderData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean/declarations/rankorderdata--1c02e7e82a02fbb06e426563.md) | 27 | `declaration-track:1c02e7e82a02fbb06e426563c3c8f40d3792281b6acf577291e8240826b77b03` |
| 2 | `structure` | [RankOrderCompatibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean/declarations/rankordercompatibility--7bd5b068e0269a6cd9f98b73.md) | 33 | `declaration-track:7bd5b068e0269a6cd9f98b73b261774ecea9ebc969679faa4cfc72e1f8e949d4` |
| 3 | `theorem` | [bsd_rank_order_compatible_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean/declarations/bsd-rank-order-compatible-if-supplied--5ad7bdb906e51e4f19012964.md) | 41 | `result-track:5ad7bdb906e51e4f190129647c742ad2566262289bd487515fe247f73e69df35` |
| 4 | `theorem` | [bsd_mismatch_obstruction_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RankOrderCompatibility/Variantb2c567639aee3b05808f388c7947d35092ba3b8796bfddee9284e3843ccf33cb.lean/declarations/bsd-mismatch-obstruction-if-supplied--6b53393551a79be80c281d27.md) | 46 | `result-track:6b53393551a79be80c281d2758d1ceb2239ab41f31a0e3d5ef15caba09484a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
