# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GroupAction.Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b12c346618ded0ff83810c3e1c8d6dd0dd19379",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b12c346618ded0ff83810c3e1c8d6dd0dd19379`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.InvariantLaw` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/finiteaction--7d331bdc6a301e85b37ca87d.md) | 21 | `declaration-track:7d331bdc6a301e85b37ca87d1799c9d5a6cd8382baaff07bf27cf54ed87036da` |
| 2 | `structure` | [LawAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/lawaction--747539a89708ae4c715d849d.md) | 32 | `declaration-track:747539a89708ae4c715d849d337138020506ac10a6f25a4fec66a806107ab5ab` |
| 3 | `def` | [KernelLawEquivariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/kernellawequivariant--ef237d308c114a1d06061fa8.md) | 43 | `declaration-track:ef237d308c114a1d06061fa8e3e6e998c414b9956ac00ad645a8a67d4a441e83` |
| 4 | `theorem` | [unique_equivariant_invariant_law_is_group_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/unique-equivariant-invariant-law-is-group-invariant--57bb16ae6a9e13adb54b8ef6.md) | 51 | `result-track:57bb16ae6a9e13adb54b8ef616ce166423cfaafdec5064ab67e78f1b9470cb59` |
| 5 | `structure` | [EquivarianceCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/equivariancecertificate--af89741121051a36666cedd5.md) | 68 | `declaration-track:af89741121051a36666cedd577aa3542713e61665d3cdd473488542d18f011ee` |
| 6 | `structure` | [CommonContractiveBoundaryLawAtScale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/commoncontractiveboundarylawatscale--24c42308bb5f97c098f502d0.md) | 83 | `declaration-track:24c42308bb5f97c098f502d0005f0226119ba05da0b8374a4bd3dd5d68d2ffaf` |
| 7 | `theorem` | [commonBoundaryLaw_certified_invariant_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/commonboundarylaw-certified-invariant-unique--40365260f8160d73693cf5c0.md) | 100 | `result-track:40365260f8160d73693cf5c03e4af76dfbeb38400191cc5ae5ac86549fb7af7e` |
| 8 | `theorem` | [commonBoundaryLaw_certified_invariant_is_group_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/declarations/commonboundarylaw-certified-invariant-is-group-invariant--d1ee1bc606b80ab4f5e337bc.md) | 115 | `result-track:d1ee1bc606b80ab4f5e337bcec07c4b624a38b26f589057d8e20a6f4e9b5bb68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
