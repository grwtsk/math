# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.A46c35ae50eaf6f47.Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45f890a3ce262fd3041b1bf14caa7333907c9e0b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45f890a3ce262fd3041b1bf14caa7333907c9e0b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Discovery.Index` — import line 6; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Model` — import line 7; external provider; requires a separately pinned dependency.
- `MathDiscovery.Concept.Assignment` — import line 8; external provider; requires a separately pinned dependency.
- `MathDiscovery.Concept.AssignmentAtoms.A_7dd7e72d995de478` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CandidateAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean/declarations/candidateauthority--b897863dfe009909db04be92.md) | 26 | `declaration-track:b897863dfe009909db04be9256f21deedcb7e2003626751d0e7bf6290f4a9ef6` |
| 2 | `structure` | [KernelCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean/declarations/kernelcandidate--1246ede818c13c1744475a4b.md) | 31 | `declaration-track:1246ede818c13c1744475a4b0e50cdfbcb3b324566761a497fdf8f34d436a6c3` |
| 3 | `structure` | [ReviewedCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean/declarations/reviewedcandidate--9b233055c746f2d78fc205e9.md) | 43 | `declaration-track:9b233055c746f2d78fc205e9b6239e20181501d3b5497cd009423faac3125b4a` |
| 4 | `def` | [ReviewedCandidate.toOwnedAssignment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean/declarations/reviewedcandidate-toownedassignment--33e9a2d45a5dd980cc534292.md) | 54 | `declaration-track:33e9a2d45a5dd980cc534292d3fe850e64fd7c41d48145a4b081954fe8d86d8e` |
| 5 | `theorem` | [candidate_authority_is_navigation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/A46c35ae50eaf6f47/Variant004931787ac6ada5fac89e4785a9f30cf0efa709dac282b7db63a29a58e16304.lean/declarations/candidate-authority-is-navigation--5c80e2eb8a2df6913ee61e38.md) | 66 | `result-track:5c80e2eb8a2df6913ee61e381478580013f2848be828af18e479c35227731fc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
