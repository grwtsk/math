# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Resolver.Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1dcba4762e5c34c4f6ae0811abc0c58ebb8050e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1dcba4762e5c34c4f6ae0811abc0c58ebb8050e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Refinement.CanonicalObstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Refinement.Address` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Refinement.Boundary` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FrontierResolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/declarations/frontierresolution--2bb97d4757a8962b44d01cdd.md) | 23 | `declaration-track:2bb97d4757a8962b44d01cdd61a504558b5603ff4d736e6886a92afb35706a37` |
| 2 | `inductive` | [CertifiedResolutionEvidence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/declarations/certifiedresolutionevidence--0575f4d6b3c877149064d31f.md) | 30 | `declaration-track:0575f4d6b3c877149064d31fae5f5ca4d878ae6d7dd283890e9e5f6674d50d53` |
| 3 | `structure` | [FiniteCertifiedResolverInput](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/declarations/finitecertifiedresolverinput--913565a834c1c32353c68ac8.md) | 37 | `declaration-track:913565a834c1c32353c68ac8d2663ad93e21451d82dd639af53d7db0ff61839b` |
| 4 | `def` | [resolveFiniteCertified](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/declarations/resolvefinitecertified--b481892106648ce233f32d00.md) | 48 | `declaration-track:b481892106648ce233f32d008f6af83f8f0887550dac1cb9e69d6c29f9f0de5b` |
| 5 | `theorem` | [finite_certified_resolver_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resolver/Variant91ade31dc4906242d42fe0e8f5caf45f9ddb8b9a00c62686ec885314d05822fb.lean/declarations/finite-certified-resolver-total--dd32b57776eebdf1d927850d.md) | 67 | `result-track:dd32b57776eebdf1d927850d70234eafb2333a048da363bf8565d0180f73dbb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
