# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Replay.Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a88132cece7f130234f8df094081149a82d69f72",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a88132cece7f130234f8df094081149a82d69f72`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Resolver` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/cutdigest--81c7803d167aa86ba65f6cc2.md) | 9 | `declaration-track:81c7803d167aa86ba65f6cc2226be087e9b1e6338d5791964fc853ac55ccb68e` |
| 2 | `def` | [resolutionDigest](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/resolutiondigest--4c982877c78e61cfe6636e55.md) | 20 | `declaration-track:4c982877c78e61cfe6636e55bf62f9dd5977d82ddcf4117ebaa80ad2a90ee65f` |
| 3 | `structure` | [CanonicallyEqualCuts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/canonicallyequalcuts--1414cf0516a44a41c5de72d6.md) | 26 | `declaration-track:1414cf0516a44a41c5de72d6430bb58cfa0320911b869794aed9bc610ef876f9` |
| 4 | `theorem` | [deterministic_replay](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/deterministic-replay--8361cde33b4bb6637151a86a.md) | 31 | `result-track:8361cde33b4bb6637151a86af6b3cc78cefeb465cef98dce2f97181b125a7d73` |
| 5 | `structure` | [CommitAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/commitauthority--eb2fee43f3048ab04361d4e3.md) | 42 | `declaration-track:eb2fee43f3048ab04361d4e3fca711d881c5662f5aef8433e4993c28f2bc0e22` |
| 6 | `structure` | [CommitState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/commitstate--adf9fc87efefd33ca4861f5c.md) | 47 | `declaration-track:adf9fc87efefd33ca4861f5c914c457ebbf2f3c4e9e72203c1a1fa00d4f4cc0e` |
| 7 | `def` | [acceptedEvent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/acceptedevent--6ab679fcfd810340b5ebddd2.md) | 52 | `declaration-track:6ab679fcfd810340b5ebddd2bc14832c7b27467076651d4d484352f764d93320` |
| 8 | `def` | [commitResolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/commitresolution--d93b08fb44099f5c0a1429dc.md) | 61 | `declaration-track:d93b08fb44099f5c0a1429dcd7484da0aacc33637adb28d5ea2ce249286f8998` |
| 9 | `def` | [EventCountFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/eventcountfor--e8f7837d5e81b466a031cc75.md) | 81 | `declaration-track:e8f7837d5e81b466a031cc7585682c5f3477b7ac7a01ed2f9e175d9c3adb4cb7` |
| 10 | `theorem` | [commit_emits_at_most_one_event](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/commit-emits-at-most-one-event--496d77d5ad2f2ad3488fa93a.md) | 86 | `result-track:496d77d5ad2f2ad3488fa93a3c9250a838828f78dacdb1f84d3a9089545566ff` |
| 11 | `theorem` | [repeated_commit_is_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/repeated-commit-is-idempotent--1c559eec6623620f23732fee.md) | 97 | `result-track:1c559eec6623620f23732feeb293f72c8debb0bc4978bd62d81848015d1640d4` |
| 12 | `def` | [CommitsSolvedSemanticPayload](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/commitssolvedsemanticpayload--521567c05d174022da537fe2.md) | 107 | `declaration-track:521567c05d174022da537fe2d25edad416a2c11d2058be326c387f64fc38b2e9` |
| 13 | `theorem` | [unknown_does_not_commit_solved_payload](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/unknown-does-not-commit-solved-payload--0db65574807619d4f13fc712.md) | 114 | `result-track:0db65574807619d4f13fc712f594e51ac78463311b768e73108b50c8c84d9729` |
| 14 | `def` | [DeterministicReplay](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/deterministicreplay--c5e55ee408264f999c1ffce7.md) | 126 | `declaration-track:c5e55ee408264f999c1ffce72014d27deba506a9691b701baeff754beab3943b` |
| 15 | `theorem` | [semantic_tokenization_main](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/declarations/semantic-tokenization-main--3c1f4e2ec67cbeb252f683a3.md) | 132 | `result-track:3c1f4e2ec67cbeb252f683a3b0b576ef5204ea4b8bba0a63db97666953efc5b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
