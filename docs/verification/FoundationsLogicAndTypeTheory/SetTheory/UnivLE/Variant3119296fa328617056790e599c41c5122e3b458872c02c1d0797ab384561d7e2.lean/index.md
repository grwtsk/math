# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLE.Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea723ff27a383330c286a93a8ea2d0f73cf3eb63",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea723ff27a383330c286a93a8ea2d0f73cf3eb63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [univLE_iff_cardinal_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean/declarations/univle-iff-cardinal-le--4e6a58400f38424c0cb0031f.md) | 19 | `result-track:4e6a58400f38424c0cb0031f87b26859349dd0c2bd56d95681033e6179a3f445` |
| 2 | `theorem` | [univLE_iff_exists_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean/declarations/univle-iff-exists-embedding--f2ce29a44d886a5aa5575535.md) | 29 | `result-track:f2ce29a44d886a5aa55755353255d1c7eedf4604c86f48542a14253d4c5c474b` |
| 3 | `theorem` | [Ordinal.univLE_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean/declarations/ordinal-univle-of-injective--7422c3fdc401a09ce111e287.md) | 33 | `result-track:7422c3fdc401a09ce111e287215d5c7794b65e272aaddeba2009098862d723b3` |
| 4 | `theorem` | [univLE_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant3119296fa328617056790e599c41c5122e3b458872c02c1d0797ab384561d7e2.lean/declarations/univle-total--df82a042f1d84b7b8ebc858c.md) | 38 | `result-track:df82a042f1d84b7b8ebc858c15b527e0f2c10d783e2df1b7e3d5896eccd0c3d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
