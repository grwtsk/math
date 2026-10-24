# Verification target: GRWTSK.Algebra.GroupTheory.MulAction.Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c40fb2908bac380ac6be0cd8be7483e81c109840",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c40fb2908bac380ac6be0cd8be7483e81c109840`.

Source path: `GRWTSK/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/instance--4d8480837ad0d949391c120e.md) | 30 | `declaration-track:4d8480837ad0d949391c120ec3939ada99dd414a443d01f8b31c3c63da193f5f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/instance--ac915fec1d5c8d18b518ea49.md) | 38 | `declaration-track:ac915fec1d5c8d18b518ea49b5f68dabf7fd3d615bf6eee0ce28648d74c92280` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/instance--4d069e2bc373f87c5b7b384d.md) | 42 | `declaration-track:4d069e2bc373f87c5b7b384d0e49ff74e7d4e43a671d555603df57a056777c87` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/instance--fc5398f57ec4704d188791c8.md) | 46 | `declaration-track:fc5398f57ec4704d188791c847d328a7c79d7dbd72832e4b50dfbe36f2977f7f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/instance--5305d7fe8e09e85563d4fd85.md) | 55 | `declaration-track:5305d7fe8e09e85563d4fd85ec68295559ef7225ee04a3b1acbac1ab187ef0dc` |
| 6 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/smul--5c358e814b135519602513dc.md) | 66 | `declaration-track:5c358e814b135519602513dc787e981f80e8833942b8cee23d08bbc0383a6a89` |
| 7 | `instance` | [smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/smulcommclass-left--8a7a9dd9a47fdc470018f71f.md) | 70 | `declaration-track:8a7a9dd9a47fdc470018f71f4fae3a00a5fa11e06d261d5936a983dba0280c9b` |
| 8 | `instance` | [smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/smulcommclass-right--42412222945cf0fec927a29d.md) | 75 | `declaration-track:42412222945cf0fec927a29d8c65ce24b9f48028b92363bdba7d2a3195d92402` |
| 9 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/isscalartower--715a592e96d970fde6285e2e.md) | 81 | `declaration-track:715a592e96d970fde6285e2e0f5d6f8ba3e4f3413ef74cd8528376563e238573` |
| 10 | `lemma` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/smul-def--bd6c589991081c3a276aa7fe.md) | 89 | `result-track:bd6c589991081c3a276aa7fe650a1015abecd18bb28cab0a7f503edd1e9fe373` |
| 11 | `lemma` | [mk_smul](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/mk-smul--9427c6115deb72a425d5e5dc.md) | 92 | `result-track:9427c6115deb72a425d5e5dce448fa8255a3d4ad6bf2067b23acdef05436161d` |
| 12 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/mulaction--0c046c746d977dcfae61b131.md) | 102 | `declaration-track:0c046c746d977dcfae61b13124945753d4578dcb79fcf5fb3f5762470fa1fc01` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MulAction/Variant59553f4c03c3130e697136603e35add8be5b45256fcab407190581f653b3caec.lean/declarations/example--b5f6173d3ffec5b1bebef5d7.md) | 105 | `declaration-track:b5f6173d3ffec5b1bebef5d7353585f275b6d940d6d956381e744a9682d58552` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
