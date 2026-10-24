# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Transport.Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3b26cbf6c040accf2d3cc0a415e351a3387b7b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3b26cbf6c040accf2d3cc0a415e351a3387b7b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leanExpectedUpdate](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/leanexpectedupdate--07eff91fffac583dcc103a36.md) | 33 | `declaration-track:07eff91fffac583dcc103a368b5a9deda560d899b79dd5cca2204c51489ffb17` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/expectedupdate-preserves-channelbounds--b461e3ec813a72d3d7b9fe6c.md) | 38 | `result-track:b461e3ec813a72d3d7b9fe6c4ddae7340d77aa76bee039a4e386e512d5317545` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/expectedupdate-preserves-revision--3996f32606135ec9ef6ea4d2.md) | 46 | `result-track:3996f32606135ec9ef6ea4d251fc46b745a08618aba87d6bbb6c2a7db4e5ba2c` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/expectedupdate-preserves-colorinvariant--996c90652f9d32e76deb6136.md) | 52 | `result-track:996c90652f9d32e76deb613605d868e4fd9c348240169e0ffa7646624bfb8688` |
| 5 | `theorem` | [expectedUpdate_idempotent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/expectedupdate-idempotent--42cd1c9a8a3ed6f605b41e70.md) | 60 | `result-track:42cd1c9a8a3ed6f605b41e70cdcd7ba559995dc7d0630cbfcb447a71c02a138e` |
| 6 | `theorem` | [expectedUpdate_route_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/expectedupdate-route-independent--1196c6b34631bc52ad50c72c.md) | 66 | `result-track:1196c6b34631bc52ad50c72c54b701731ddaa7982ee7707d63d26e964c6bfffb` |
| 7 | `structure` | [RawProposal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/rawproposal--a9b4aa601bfacc9bb1615e49.md) | 76 | `declaration-track:a9b4aa601bfacc9bb1615e49dbd2731d478415c2c68223d2104190ddcfab3c87` |
| 8 | `inductive` | [ProposalRejection](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/proposalrejection--66ef3c7381ffdd08546a0857.md) | 90 | `declaration-track:66ef3c7381ffdd08546a0857251c295c6c39d102a8761f0b0eee039fa38aa915` |
| 9 | `def` | [MergeAdmissible](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/mergeadmissible--d515afbf897e85d6361efafa.md) | 109 | `declaration-track:d515afbf897e85d6361efafadcd469e3f00b7938ddeca3158e85a8cf58fc4e85` |
| 10 | `instance` | [(anonymous)](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/instance--1822d027df133d44ad6045bd.md) | 116 | `declaration-track:1822d027df133d44ad6045bddb72995d5a2fc1ba88bc37dd70b9e805482cc3e9` |
| 11 | `structure` | [AdmittedProposal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/admittedproposal--3b6e033f3358cba68eb18a50.md) | 128 | `declaration-track:3b6e033f3358cba68eb18a50fc51203237f6bef3b9a81d076395ecd8a8869a91` |
| 12 | `inductive` | [VerificationResult](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/verificationresult--0a93e178e92242d6699792db.md) | 177 | `declaration-track:0a93e178e92242d6699792dbd2be00d47a574883688963d7ada79c5c20f16bcb` |
| 13 | `def` | [RangeCheckedXYZ](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/rangecheckedxyz--22d48c41504af492a588b60f.md) | 191 | `declaration-track:22d48c41504af492a588b60faaee1f33aa9e7249f6aa8f022e9103d2890a3fe8` |
| 14 | `def` | [rangeCheckedXYZ?](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/rangecheckedxyz--13c180828ce30d97ee6cfed8.md) | 195 | `declaration-track:13c180828ce30d97ee6cfed8e5c0be0d2615b52cafebdaf17d8154e521a4351d` |
| 15 | `def` | [findDeclaredEdge](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/finddeclarededge--c3e13aebb5c3bd044c362912.md) | 208 | `declaration-track:c3e13aebb5c3bd044c3629127e31356cadaca54889df0d30213d1b6e3132bbb7` |
| 16 | `def` | [verifyProposal](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/verifyproposal--0367bcc6268326a344e898b3.md) | 215 | `declaration-track:0367bcc6268326a344e898b3bb5bd7f33f8deeb247e582a323ac82011d19a724` |
| 17 | `theorem` | [verifyProposal_sound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/verifyproposal-sound--984e28014bc12246af4b552c.md) | 360 | `result-track:984e28014bc12246af4b552cf289c45a204a4a511370ce192cad426ea44cf057` |
| 18 | `theorem` | [admittedProposal_edge_declared](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/admittedproposal-edge-declared--6d7b4ce3e88ea1d27b42a419.md) | 424 | `result-track:6d7b4ce3e88ea1d27b42a419ef961b34df617430ce67c6526a398be0951549b2` |
| 19 | `theorem` | [admittedProposal_endpoints_match](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/admittedproposal-endpoints-match--de52cf231991e75198a6b9bb.md) | 430 | `result-track:de52cf231991e75198a6b9bb9607d979c6ef54196556b6e8763b4052a6f08e3a` |
| 20 | `theorem` | [admittedProposal_expected_output](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/admittedproposal-expected-output--b09095e11a570f393c328b28.md) | 438 | `result-track:b09095e11a570f393c328b28bb7e14e430c5871160ef7a1412f569545c85f2b7` |
| 21 | `theorem` | [admittedProposal_channels_in_range](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/admittedproposal-channels-in-range--9aa898a6ef91d9481da44ace.md) | 444 | `result-track:9aa898a6ef91d9481da44ace18e64a0088c062d1818614a2b69d488ce3916072` |
| 22 | `theorem` | [verifyProposal_rejects_undeclared_edge](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/verifyproposal-rejects-undeclared-edge--fd21cea3e3dbd61b04aa1b5c.md) | 475 | `result-track:fd21cea3e3dbd61b04aa1b5c2803582ad7910c7e315c20073914ca089205e43d` |
| 23 | `theorem` | [verifyProposal_rejects_wrong_endpoint](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/verifyproposal-rejects-wrong-endpoint--e1e99afac0531bb6c4d52db8.md) | 503 | `result-track:e1e99afac0531bb6c4d52db8e12605b37cbbfa44882f7d5f8c29af4bd200f942` |
| 24 | `theorem` | [verifyProposal_rejects_out_of_range_channel](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/verifyproposal-rejects-out-of-range-channel--bd7ce53d2d9677ff687e9a10.md) | 541 | `result-track:bd7ce53d2d9677ff687e9a1021283c676e40a2a50dcce9df9835409b77cfba93` |
| 25 | `theorem` | [verifyProposal_rejects_wrong_expected_output](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/verifyproposal-rejects-wrong-expected-output--933010cbd2ec20b89465a2b9.md) | 586 | `result-track:933010cbd2ec20b89465a2b9a373765921f4a9c35a650861fd1167d90a133cab` |
| 26 | `theorem` | [apply_idempotent_of_merge_replay](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/apply-idempotent-of-merge-replay--8c7591254a1716c90f939a6e.md) | 641 | `result-track:8c7591254a1716c90f939a6e0f26f1a91182b3713506d102e71749e71554788f` |
| 27 | `theorem` | [identicalReplay_admitted_idempotently](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant669f25043cb2611cb6b4f0eacc4ec6e0f7327b6e9504c14457d05df7bc0cbdf4.lean/declarations/identicalreplay-admitted-idempotently--b227f7c6319adf2ae03ec50c.md) | 654 | `result-track:b227f7c6319adf2ae03ec50c37d6fe56fc85e62b0a9d3acc11b116140fbd957a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
