# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a1b288df6dd521115f226b2a4ff08855ed321a2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a1b288df6dd521115f226b2a4ff08855ed321a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.GrindInstances` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommSemigroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/instcommsemigroup--d3b2d2ae497ff1abfa03e1ad.md) | 47 | `declaration-track:d3b2d2ae497ff1abfa03e1ad527ba411696be557c79d11f1d5eced68c7c9e42a` |
| 2 | `theorem` | [left_distrib_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/left-distrib-aux--e3d9e4381ef6ba41eeba2388.md) | 57 | `result-track:e3d9e4381ef6ba41eeba23884651d8ae7b4a1f3aa71fd034cd310d021bb1f658` |
| 3 | `instance` | [instDistrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/instdistrib--f0c127c127815bd56ac975c8.md) | 66 | `declaration-track:f0c127c127815bd56ac975c8f4250317e0feea630d023e87b6267d76c9adb3d6` |
| 4 | `instance` | [instCommRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/instcommring--4c91e3c4b3ab95acb6638f45.md) | 73 | `declaration-track:4c91e3c4b3ab95acb6638f4522bc289bc1dd072d348f43c940387c34071efd11` |
| 5 | `instance` | [instHasDistribNeg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/insthasdistribneg--205cfde60346b29dad30fc13.md) | 81 | `declaration-track:205cfde60346b29dad30fc13cb9207e2acd986c1b100ef80255f8303a1cb2e60` |
| 6 | `def` | [ZMod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/zmod--d1fedc9ac46d93bbb4b7f3e0.md) | 89 | `declaration-track:d1fedc9ac46d93bbb4b7f3e07073af87381f1710209f97def60dff72eeaabae6` |
| 7 | `instance` | [ZMod.decidableEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/zmod-decidableeq--cdb5a7e5dca62761cddfc1bf.md) | 93 | `declaration-track:cdb5a7e5dca62761cddfc1bf1f3521dcaa7a23331e2050065d297fd2ead95d4f` |
| 8 | `instance` | [ZMod.repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/zmod-repr--4ca67387a67d95f1396102b3.md) | 97 | `declaration-track:4ca67387a67d95f1396102b3a2d4d2edbcd51c5b7ade4998aa5651be1a199a22` |
| 9 | `instance` | [instUnique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/instunique--110b4b107d8a399bb005d866.md) | 103 | `declaration-track:110b4b107d8a399bb005d8663331aecde0b44866adf34573975ed181abcae4c9` |
| 10 | `instance` | [fintype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/fintype--d85a646df92a570e387bdccf.md) | 105 | `declaration-track:d85a646df92a570e387bdccfe3dd3e83471344aadaa38c9be75c9fb1325aea15` |
| 11 | `instance` | [infinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/infinite--dadc1fafb0a64e6ea17ba9ff.md) | 109 | `declaration-track:dadc1fafb0a64e6ea17ba9ff6cbfd0f82e0236683e56cb5f481b6cd537fc43ee` |
| 12 | `theorem` | [card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/card--6a25c5fca900684099627885.md) | 113 | `result-track:6a25c5fca900684099627885019810e0cfaada0aadceaebe68f8fc4ba9b04b78` |
| 13 | `instance` | [commRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/commring--6d8946e98188e689750680cc.md) | 121 | `declaration-track:6d8946e98188e689750680cccb340ae2b9d7bc51520c9fd86ffc7391934db03b` |
| 14 | `instance` | [inhabited](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/inhabited--9f6511ad2ebb6f8f98d18284.md) | 178 | `declaration-track:9f6511ad2ebb6f8f98d18284438fbec214ecc26d502a96e1e09c9e2e40574d13` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant17262127f7cfeefc31ae2f674d68ee7075335cd2a92aa1fe664731ed61ae4b90.lean/declarations/example--7c659ee1eea80475c2019bc6.md) | 182 | `declaration-track:7c659ee1eea80475c2019bc67ff4b15c525089d729c4c71c726fb69fb5e503ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
