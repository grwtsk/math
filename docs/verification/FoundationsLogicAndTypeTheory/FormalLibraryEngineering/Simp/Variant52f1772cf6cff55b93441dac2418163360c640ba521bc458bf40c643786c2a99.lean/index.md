# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54cd0b090185bfd4c418d8d28772b20600d206c9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54cd0b090185bfd4c418d8d28772b20600d206c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.PHashSet.toList.](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/lean-phashset-tolist--16f48bbd921fbe479bbc0eb1.md) | 25 | `declaration-track:16f48bbd921fbe479bbc0eb175c207cbb63ede7d174892ea8b86da94e459b3c8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/instance--8811ac8615420bae4053f3d8.md) | 33 | `declaration-track:8811ac8615420bae4053f3d8e79f26a11cae7a368b9f2c2a1c5cd188ad7de154` |
| 3 | `def` | [Result.ofTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/result-oftrue--3a30a3ce544af072f5cced06.md) | 49 | `declaration-track:3a30a3ce544af072f5cced0605550d14aa9313b51b533e928c58b3a3aa5e3f2a` |
| 4 | `def` | [getPropHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/getprophyps--32124ac67e0097a42847bc4d.md) | 58 | `declaration-track:32124ac67e0097a42847bc4d7619ac5fcfecc5b26d7be50cdbdf380c64a17c3c` |
| 5 | `def` | [simpTheoremsOfNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/simptheoremsofnames--c97b25185e0683b3315be154.md) | 69 | `declaration-track:c97b25185e0683b3315be15473c71b6f17032f105a1e6c465cbe121cb0dd4598` |
| 6 | `def` | [Simp.Context.ofNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/simp-context-ofnames--ffbe5957eaecd2abbc12e19e.md) | 82 | `declaration-track:ffbe5957eaecd2abbc12e19e5a0f94cd09f18fda9bb2d09cd464ce5b580acb60` |
| 7 | `def` | [simpOnlyNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/simponlynames--de5540f3c0f0c05154f1ebdb.md) | 89 | `declaration-track:de5540f3c0f0c05154f1ebdbd75f9e1d49a8ae937adef7e264951e69c1f50928` |
| 8 | `def` | [simpType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/simptype--187c878943df2aaf2c83d9de.md) | 102 | `declaration-track:187c878943df2aaf2c83d9de69ce5f74421390a12cde1d3b82e44c31010f4e60` |
| 9 | `def` | [simpEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/simpeq--71c1f74d95d9d6c21d991998.md) | 113 | `declaration-track:71c1f74d95d9d6c21d99199832ded1be00221ce107fc7c54bbe94d6d18cd75cd` |
| 10 | `def` | [SimpTheorems.contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/simptheorems-contains--856ce27422d97ae35803cd87.md) | 127 | `declaration-track:856ce27422d97ae35803cd877ecae859395011b63700a39903c878e5dc1294dd` |
| 11 | `def` | [isInSimpSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/isinsimpset--c7d08283c70cd1aaf1341ab1.md) | 132 | `declaration-track:c7d08283c70cd1aaf1341ab1a397a213a0c1180b31caab1422247dbb05347401` |
| 12 | `def` | [getAllSimpDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/getallsimpdecls--ad706d8a78f05b5832491432.md) | 138 | `declaration-track:ad706d8a78f05b58324914322ad9575a46e8f0c34136d935841330606a8e6375` |
| 13 | `def` | [getAllSimpAttrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant52f1772cf6cff55b93441dac2418163360c640ba521bc458bf40c643786c2a99.lean/declarations/getallsimpattrs--e4874f830ec3cdfc1f11f5ad.md) | 146 | `declaration-track:e4874f830ec3cdfc1f11f5ad47519f5f58c7e7836ed09629555cf9f7570bc3e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
