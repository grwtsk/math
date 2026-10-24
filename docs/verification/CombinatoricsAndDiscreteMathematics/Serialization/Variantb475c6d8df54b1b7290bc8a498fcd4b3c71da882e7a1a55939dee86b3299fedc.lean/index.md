# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Serialization.Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08ca314ea56afa1e519e0934de8a1bfa66329625",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08ca314ea56afa1e519e0934de8a1bfa66329625`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.ObjectIndex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalIndexSerializer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/canonicalindexserializer--1e442b4e818e73e54c2f4149.md) | 34 | `declaration-track:1e442b4e818e73e54c2f4149185df993a7f33aedd668b401d9e6bd7524b387e1` |
| 2 | `theorem` | [round_trip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/round-trip--12ab28ff610ed0c9f0fc6248.md) | 48 | `result-track:12ab28ff610ed0c9f0fc6248ba3b118a9359f33e62f0ecadc3bcb83abee07939` |
| 3 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/encode-injective--9a2beddd4bdbdad3b8b63fca.md) | 55 | `result-track:9a2beddd4bdbdad3b8b63fca0b01a8686fa98257086dc2fc62ac8f01fdfc52b5` |
| 4 | `theorem` | [encode_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/encode-deterministic--62a5d03268d50036c343e15c.md) | 64 | `result-track:62a5d03268d50036c343e15c6e9ef6dd37d697b113f1ebec6b994914a60feff2` |
| 5 | `theorem` | [normalize_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/normalize-encode--c27184cb25ad5afaa3a3cbf3.md) | 73 | `result-track:c27184cb25ad5afaa3a3cbf395f580ae72586b1eae6edd9d2afbe0f946aeba65` |
| 6 | `theorem` | [encoded_root_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/encoded-root-identity--314ef801611ae48a16fa3518.md) | 80 | `result-track:314ef801611ae48a16fa3518925fc9ab8a9564496d9740f7bbfc806ba9384e3a` |
| 7 | `theorem` | [root_identity_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/root-identity-deterministic--39a9f9b67a1c4fe49d13573f.md) | 87 | `result-track:39a9f9b67a1c4fe49d13573fe93987c578bb6c23d11f94c32e680825c4c11077` |
| 8 | `structure` | [DeclarationSourceDigestObservation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/declarationsourcedigestobservation--9cd928396b38706fdd104184.md) | 98 | `declaration-track:9cd928396b38706fdd104184062d42f2f3dc37ab490ef0e5719f4f4ffcbe3641` |
| 9 | `def` | [DeclarationSourceDigestObservation.AcceptedFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/declarationsourcedigestobservation-acceptedfor--ebe08559fa71c98dd8985445.md) | 108 | `declaration-track:ebe08559fa71c98dd89854452d0559e1032c8b1ddc90284adeb18a2fc3efe9e5` |
| 10 | `theorem` | [DeclarationSourceDigestObservation.accepted_of_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/declarationsourcedigestobservation-accepted-of-lookup--779123cadb57942121700ffc.md) | 116 | `result-track:779123cadb57942121700ffcf7e2c9fa190a0ebbae0c521a7a1fa33fa3055fde` |
| 11 | `theorem` | [DeclarationSourceDigestObservation.rejected_of_stale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/declarationsourcedigestobservation-rejected-of-stale--13adc2c4ecf9f87cbbc07b95.md) | 126 | `result-track:13adc2c4ecf9f87cbbc07b9563a96ac13fad0b66b7634d70c9168221e2cdb2d7` |
| 12 | `theorem` | [DeclarationSourceDigestObservation.rejected_of_missing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/declarationsourcedigestobservation-rejected-of-missing--c5f3b49ce894697fe6a9416d.md) | 136 | `result-track:c5f3b49ce894697fe6a9416d5a73aa7e3e518685bc5b6ae73bd1994b3ce46a93` |
| 13 | `inductive` | [IndexSupersessionItem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/indexsupersessionitem--834baeb98122aea8623afbe1.md) | 144 | `declaration-track:834baeb98122aea8623afbe1aba3b062e7578e6202e919a7bdcf8ce7fc93c730` |
| 14 | `structure` | [CanonicalIndexSupersessionLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/canonicalindexsupersessionledger--83bbb2f1ab396e608122ab86.md) | 154 | `declaration-track:83bbb2f1ab396e608122ab861a1e247b938fc507086e78fd7f09aea725401736` |
| 15 | `theorem` | [wellFounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/wellfounded--3e84e5750b39e174418d57e7.md) | 177 | `result-track:3e84e5750b39e174418d57e73242f554bf18de489fcfeee6535b8aceab22e64f` |
| 16 | `theorem` | [no_cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/declarations/no-cycle--5625a45c9bd4d639935e5c9f.md) | 186 | `result-track:5625a45c9bd4d639935e5c9f3eee8ed0f40c18fc13d228d02483d6da7af1d0c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
