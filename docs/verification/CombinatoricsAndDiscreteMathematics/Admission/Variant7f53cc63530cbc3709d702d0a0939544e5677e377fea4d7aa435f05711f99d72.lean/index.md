# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Admission.Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce92f65ed7182b11363dbecd4a86d19e0b00b72",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce92f65ed7182b11363dbecd4a86d19e0b00b72`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Noninterference` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RawGraphAccessRequest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean/declarations/rawgraphaccessrequest--4bb38bcbcb434bffe111c1e8.md) | 21 | `declaration-track:4bb38bcbcb434bffe111c1e8cdec4a57418306c6ea270fd40a59cf3f21bdba14` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean/declarations/instance--4bd332ca546a927b3f0fd099.md) | 26 | `declaration-track:4bd332ca546a927b3f0fd0990828bfa889b914ad8a94b8c5424c838809a42ac8` |
| 3 | `inductive` | [RequestAdmissionFailure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean/declarations/requestadmissionfailure--282f6c521283cd7e4143e648.md) | 32 | `declaration-track:282f6c521283cd7e4143e6485d3130d66aeba399fd02c389c2b3b04acc46db5c` |
| 4 | `inductive` | [RequestAdmission](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean/declarations/requestadmission--d38463a0faeacbdc1d6433e8.md) | 47 | `declaration-track:d38463a0faeacbdc1d6433e8f49c93716b3c281cb8b680c20256ed1d0fbd19fc` |
| 5 | `structure` | [RequestAdmitter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Admission/Variant7f53cc63530cbc3709d702d0a0939544e5677e377fea4d7aa435f05711f99d72.lean/declarations/requestadmitter--32c838d84192a085494e4464.md) | 60 | `declaration-track:32c838d84192a085494e4464efca76853b0d26c9a0436dc34dc37d32d125f42f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
