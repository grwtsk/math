# Verification target: GRWTSK.Topology.GeneralTopology.ClopenBox.Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "096c0e7a9cff10286916fac4c43dc7276e351863",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `096c0e7a9cff10286916fac4c43dc7276e351863`.

Source path: `GRWTSK/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Bases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Profinite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_prod_subset](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/declarations/exists-prod-subset--c934e1bb7056ac70e62f06bb.md) | 40 | `result-track:c934e1bb7056ac70e62f06bb188f1046f6b6b8b7428841d3a36d81d3c83ddc74` |
| 2 | `theorem` | [exists_finset_eq_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/declarations/exists-finset-eq-sup-prod--c350e6293bee6ad1cc07d2bf.md) | 54 | `result-track:c350e6293bee6ad1cc07d2bfebace8858451c6d4b74d506b39def053694c5379` |
| 3 | `lemma` | [surjective_finset_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/declarations/surjective-finset-sup-prod--326d9509eedcbc17b72fe5fe.md) | 67 | `result-track:326d9509eedcbc17b72fe5fea8bd6fe773afdd5a26275254453fd35872382461` |
| 4 | `instance` | [countable_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/declarations/countable-prod--56798314a198652c92e1d13f.md) | 71 | `declaration-track:56798314a198652c92e1d13f84e2d44a1fc9a0a49e875def2ecaefd75706d897` |
| 5 | `instance` | [finite_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/declarations/finite-prod--c7eaccf8c3107547e74a6d78.md) | 75 | `declaration-track:c7eaccf8c3107547e74a6d78287d98ff120da0d4d54d4611f59c3ec4560c634f` |
| 6 | `lemma` | [countable_iff_secondCountable](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/declarations/countable-iff-secondcountable--b3d76049c7396de8e43092dd.md) | 81 | `result-track:b3d76049c7396de8e43092dd49c325c04506e8ef053c6b9bf5f6aec3d1282d55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
