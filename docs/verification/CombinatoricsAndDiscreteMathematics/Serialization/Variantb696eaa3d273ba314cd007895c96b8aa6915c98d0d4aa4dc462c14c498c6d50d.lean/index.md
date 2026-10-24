# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Serialization.Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38027c5a80aa7eae3ec9f48183fb48d97eed27ad",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38027c5a80aa7eae3ec9f48183fb48d97eed27ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.ObjectIndex` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalIndexSerializer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/canonicalindexserializer--11279d6615de9a65a0e462cc.md) | 26 | `declaration-track:11279d6615de9a65a0e462ccbfa630d2fb305e82f2a4b2aa636ef6c55a03458a` |
| 2 | `theorem` | [round_trip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/round-trip--0c078060f49ebb7c432da835.md) | 40 | `result-track:0c078060f49ebb7c432da8359a52da3232f16269c8f75a81297542a75fbaaef9` |
| 3 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/encode-injective--d2bd3613a11ad36e43fa6e25.md) | 47 | `result-track:d2bd3613a11ad36e43fa6e25f31052466a4271785bce75ec0c6ebbf198a44389` |
| 4 | `theorem` | [encode_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/encode-deterministic--92aa9f1cef7a2600b760f683.md) | 56 | `result-track:92aa9f1cef7a2600b760f683faa822f13b22522c9915701c3964ba8e693464d4` |
| 5 | `theorem` | [normalize_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/normalize-encode--14ff459a7f2f8cea1c1f7c42.md) | 65 | `result-track:14ff459a7f2f8cea1c1f7c42727fd7d731f7c085ec83136bf1484afcf46f4a93` |
| 6 | `theorem` | [encoded_root_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/encoded-root-identity--9baee1804a59919f6a4d32b6.md) | 72 | `result-track:9baee1804a59919f6a4d32b6182cb9424c5a51a259b506e6f628f19daf9560d0` |
| 7 | `theorem` | [root_identity_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/root-identity-deterministic--cce1b1500a0957580bb100c2.md) | 79 | `result-track:cce1b1500a0957580bb100c2477c155cd86d6df253f79678a48b660427f601a1` |
| 8 | `structure` | [DeclarationSourceDigestObservation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/declarationsourcedigestobservation--01216f51a9bf6ceb8c9a3e07.md) | 90 | `declaration-track:01216f51a9bf6ceb8c9a3e07c75ebac5b0da38a4ea1ed5f1d35d1211678e4cc6` |
| 9 | `def` | [DeclarationSourceDigestObservation.AcceptedFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/declarationsourcedigestobservation-acceptedfor--fc49e51d0afcfe97fea529b0.md) | 100 | `declaration-track:fc49e51d0afcfe97fea529b06a3f7aacf324cfb6f6f6c1684dff2657968647a8` |
| 10 | `theorem` | [DeclarationSourceDigestObservation.accepted_of_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/declarationsourcedigestobservation-accepted-of-lookup--40a62b49b2fe96a2b6b14324.md) | 108 | `result-track:40a62b49b2fe96a2b6b14324eb8e3d0014bb8388fdc510a411afa4d6ffefc814` |
| 11 | `theorem` | [DeclarationSourceDigestObservation.rejected_of_stale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/declarationsourcedigestobservation-rejected-of-stale--b2782aade6b538c7042af566.md) | 118 | `result-track:b2782aade6b538c7042af5669f481e86417b0992339cce897a107b44d8ded7b8` |
| 12 | `theorem` | [DeclarationSourceDigestObservation.rejected_of_missing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/declarationsourcedigestobservation-rejected-of-missing--8a11b3e4aea4d569927f90d8.md) | 128 | `result-track:8a11b3e4aea4d569927f90d847ff923d10b92688309dbca918ec10b28630937d` |
| 13 | `inductive` | [IndexSupersessionItem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/indexsupersessionitem--da753a289fd120476947ed66.md) | 136 | `declaration-track:da753a289fd120476947ed669b540ce70ca6ffcd594e30f849b2c0fb0f53f070` |
| 14 | `structure` | [CanonicalIndexSupersessionLedger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/canonicalindexsupersessionledger--53d298c02661403124b604fa.md) | 146 | `declaration-track:53d298c02661403124b604fa79d6b4ba22b76d1dbc2000ccf6b2205cae15d707` |
| 15 | `theorem` | [wellFounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/wellfounded--7e6ec4990968299e95b41827.md) | 169 | `result-track:7e6ec4990968299e95b41827298b0f7a9925181821d6960ad63b687d4ed605f8` |
| 16 | `theorem` | [no_cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/declarations/no-cycle--d431bccb00fe5d725cf6fad6.md) | 178 | `result-track:d431bccb00fe5d725cf6fad686455322fd6a0f33642ada00e21ad88aa42aae0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
