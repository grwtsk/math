# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GroupAction.Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb2cdaf164c7d22b8590145ebde437bd35e962f2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb2cdaf164c7d22b8590145ebde437bd35e962f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.InvariantLaw` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/finiteaction--0edd1704638e8800172357d5.md) | 13 | `declaration-track:0edd1704638e8800172357d59f15a5c5ebd1bc74c153ff65dc23dd722624dc7c` |
| 2 | `structure` | [LawAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/lawaction--deb94ebe7282e492fa18a4de.md) | 24 | `declaration-track:deb94ebe7282e492fa18a4de2617e12e8bd70a069472910dc6b3d6750d49097e` |
| 3 | `def` | [KernelLawEquivariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/kernellawequivariant--a6f75b11a1fc9d105f3ea849.md) | 35 | `declaration-track:a6f75b11a1fc9d105f3ea849172a277975ffb6de4da5590ae5da3f1768d6564d` |
| 4 | `theorem` | [unique_equivariant_invariant_law_is_group_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/unique-equivariant-invariant-law-is-group-invariant--58d4ba8e5217b920d72485b2.md) | 43 | `result-track:58d4ba8e5217b920d72485b230914f5777b3e466ce3f680cbb87806a5adcd3b7` |
| 5 | `structure` | [EquivarianceCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/equivariancecertificate--2aa0dc8c1b63db4a891f9c93.md) | 60 | `declaration-track:2aa0dc8c1b63db4a891f9c9377eefccfd621a5e65c6a4e23407c3f410a1b9aec` |
| 6 | `structure` | [CommonContractiveBoundaryLawAtScale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/commoncontractiveboundarylawatscale--619cbfbb03aff1f688f750bf.md) | 75 | `declaration-track:619cbfbb03aff1f688f750bf713362c471920aa733bae8ba1b81caba165b4130` |
| 7 | `theorem` | [commonBoundaryLaw_certified_invariant_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/commonboundarylaw-certified-invariant-unique--4c5246d3c399e0011c07722b.md) | 92 | `result-track:4c5246d3c399e0011c07722ba160c4b0d7c2f5a56f4553488363ff80cb0c41f1` |
| 8 | `theorem` | [commonBoundaryLaw_certified_invariant_is_group_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variant2adb3e2972b22c624b737ff88b856c26f1b7bcfe58ff8706093d3be50d7a8247.lean/declarations/commonboundarylaw-certified-invariant-is-group-invariant--3b0ed4ceb03e721f0a4a8b34.md) | 107 | `result-track:3b0ed4ceb03e721f0a4a8b34a457527e69d06f0b94f5a98efaa124eeb6bc54de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
