# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditiveCombination.Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afd436634c0dfd7c50750e67b6a293cc0028c7c9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afd436634c0dfd7c50750e67b6a293cc0028c7c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination'` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_smul_c](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/declarations/pf-smul-c--ed961c87940aa1ef88491e06.md) | 48 | `result-track:ed961c87940aa1ef88491e0629983eb9f81a9cb1e3da38aca2a29a6aea621ced` |
| 2 | `theorem` | [c_smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/declarations/c-smul-pf--5f0d4b7ceea404d11bb3986c.md) | 49 | `result-track:5f0d4b7ceea404d11bb3986c56dc02a780bfd86f0ebb15072b8f8b04c6e4e108` |
| 3 | `theorem` | [smul_pf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/declarations/smul-pf--e5a9b0c75061cdce47bf84fb.md) | 50 | `result-track:e5a9b0c75061cdce47bf84fbdc929e038ea40d18297c0fdf59cf3444c67e8896` |
| 4 | `def` | [expandAdditiveCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/declarations/expandadditivecombo--a53847ea6f8aad78616abf51.md) | 61 | `declaration-track:a53847ea6f8aad78616abf514db923f134a28c2ba4db9f74950ce5c6d89b97d4` |
| 5 | `def` | [elabAdditiveCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/declarations/elabadditivecombination--7d91e7e4d3593c3057d0b11c.md) | 102 | `declaration-track:7d91e7e4d3593c3057d0b11cb35cc89b1f0f7f3f865cf4c79871654b7bdceafe` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/declarations/syntax--9360e14fea5aaf782ef424f8.md) | 187 | `declaration-track:9360e14fea5aaf782ef424f865ed0c850f5d2ef1ca6aedfc1b675cfbf6bb1f1e` |
| 7 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditiveCombination/Variantc2bc0464dc22851c930feed80480bb5b1a26ffac59a71d57d584aaed9a90351d.lean/declarations/elab-rules--eb1f2a5d993c08d5d0628ff4.md) | 189 | `declaration-track:eb1f2a5d993c08d5d0628ff483f8424d5cf827a402feffc7bb2c3ef848d6aed4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
