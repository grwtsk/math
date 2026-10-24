# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a7f43af971011355ac2c23762c8c3880ef8b1fc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a7f43af971011355ac2c23762c8c3880ef8b1fc`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedPoints.addSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean/declarations/fixedpoints-addsubmonoid--f689c522430523e98bc24f36.md) | 19 | `declaration-track:f689c522430523e98bc24f36ca97e48e4990114ffc2612444c419a0caab34803` |
| 2 | `lemma` | [FixedPoints.mem_addSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean/declarations/fixedpoints-mem-addsubmonoid--22c3e1ca70b78dcf4f40c7da.md) | 25 | `result-track:22c3e1ca70b78dcf4f40c7da6ba64d1aab4c2f1468f32dbbca8af441a97e6054` |
| 3 | `def` | [FixedPoints.addSubgroup](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean/declarations/fixedpoints-addsubgroup--40afe04ab23576a0105af117.md) | 34 | `declaration-track:40afe04ab23576a0105af117c78968df620043945e4d6e5436a7dc61717054ee` |
| 4 | `lemma` | [FixedPoints.mem_addSubgroup](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean/declarations/fixedpoints-mem-addsubgroup--844b4b599a71c7baa14350b8.md) | 42 | `result-track:844b4b599a71c7baa14350b8678f315454d355ac5279103556aae82717e6aee6` |
| 5 | `lemma` | [FixedPoints.addSubgroup_toAddSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean/declarations/fixedpoints-addsubgroup-toaddsubmonoid--83f1b615f450b8112babb564.md) | 46 | `result-track:83f1b615f450b8112babb56485bcdc6833b1f455b6022fa10284291bd14d21fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
