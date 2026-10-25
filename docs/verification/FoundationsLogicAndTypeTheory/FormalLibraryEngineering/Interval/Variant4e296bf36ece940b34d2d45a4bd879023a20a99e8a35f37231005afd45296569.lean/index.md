# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Interval.Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6a8cc71ebb6e3b4f890141cdf4bac4adddc6f3e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6a8cc71ebb6e3b4f890141cdf4bac4adddc6f3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intervalCore_hi_le_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/intervalcore-hi-le-decide--0b094ba1b0fc349a945874bb.md) | 42 | `result-track:0b094ba1b0fc349a945874bb51037550e6c40074791011fc426463e74401cdfc` |
| 2 | `theorem` | [intervalCore_lo_ge_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/intervalcore-lo-ge-decide--9c6f7a94ddbc08b6cae8a1e7.md) | 47 | `result-track:9c6f7a94ddbc08b6cae8a1e73dbd33346143116cf11c30268b66129b504fcb7d` |
| 3 | `theorem` | [intervalCore_hi_lt_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/intervalcore-hi-lt-decide--2f1bc2278a4b4fe9791ee741.md) | 52 | `result-track:2f1bc2278a4b4fe9791ee74130dd4b820460e290feeba1b87f7fb01ae4ed1a7e` |
| 4 | `theorem` | [intervalCore_lo_gt_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/intervalcore-lo-gt-decide--27f97a33116f55af45bad627.md) | 57 | `result-track:27f97a33116f55af45bad627234bcb8a69b06d2e03e8e6fb8f566e7ea219cbd0` |
| 5 | `theorem` | [proveCore_le_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-le-by-interval--93215ea509a65bc7daf09cb0.md) | 66 | `result-track:93215ea509a65bc7daf09cb0acf40716253778e56437c1329ca078a1dae77204` |
| 6 | `theorem` | [proveCore_ge_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-ge-by-interval--5eebc7dc1ca3a0dafb42aa79.md) | 76 | `result-track:5eebc7dc1ca3a0dafb42aa79ec979ef0b243872d673407fb43dbb68d469f1ee8` |
| 7 | `theorem` | [proveCore_lt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-lt-by-interval--bd24ca1340fbbcf425f7162a.md) | 86 | `result-track:bd24ca1340fbbcf425f7162a4b97a6a61bdaabffb026495131b318a8437ccc42` |
| 8 | `theorem` | [proveCore_gt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-gt-by-interval--413a90d44bad9935a415274d.md) | 96 | `result-track:413a90d44bad9935a415274df1a7e3f1c50192d1d731711d3078de3f83705a35` |
| 9 | `theorem` | [proveCore_forall_le_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-forall-le-by-interval--9279a1a14772a1a7101e3e48.md) | 109 | `result-track:9279a1a14772a1a7101e3e48fb7b333bfbd5541579de4282dda7a2a7a5c8861e` |
| 10 | `theorem` | [proveCore_forall_ge_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-forall-ge-by-interval--343c2cf324f399775038e472.md) | 119 | `result-track:343c2cf324f399775038e472a65f0b9e96e2ba1e1d5e757d1182c4b104dc483e` |
| 11 | `theorem` | [proveCore_forall_lt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-forall-lt-by-interval--da10bf628d55b238a983bc8a.md) | 129 | `result-track:da10bf628d55b238a983bc8a94523ed07194305331267bf8e8e18a9b7b8d7124` |
| 12 | `theorem` | [proveCore_forall_gt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/provecore-forall-gt-by-interval--a78c148cacc5090b96b6ea62.md) | 139 | `result-track:a78c148cacc5090b96b6ea621a8f64c633a13331285dacb1c866193d8b5402d6` |
| 13 | `theorem` | [prove_le_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/prove-le-by-interval--e2d7ce9b3ec3d88ec1e3b9ce.md) | 151 | `result-track:e2d7ce9b3ec3d88ec1e3b9ceb5d5b7b70a7870ca25e5f1effee7eb47554be197` |
| 14 | `theorem` | [prove_ge_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/prove-ge-by-interval--3d9b4b2552fa79448a2a58cf.md) | 158 | `result-track:3d9b4b2552fa79448a2a58cf87c3eaf5f4ba793698bf7e1371fd29cad004fbba` |
| 15 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--7a5de9bdc911ee153c260feb.md) | 183 | `declaration-track:7a5de9bdc911ee153c260febf9ab7cfd7245594392044fb093395985ddaf663a` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--a47a8b7d89b3b39b53f6444c.md) | 188 | `declaration-track:a47a8b7d89b3b39b53f6444c7ce9e143a11746ba66e78b043765cc48ee85f031` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--b55806f499fa7c91dda6c108.md) | 193 | `declaration-track:b55806f499fa7c91dda6c108b2978f411a32d97b6df1a2efc9a145fb679b10c1` |
| 18 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--ad1cee0468c6229d0474a25c.md) | 198 | `declaration-track:ad1cee0468c6229d0474a25c3c54035be4cbb3dd9c939933157bd856a3f8b404` |
| 19 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--ab31507380243f0250ef6592.md) | 203 | `declaration-track:ab31507380243f0250ef6592d9f64728f1bdc54cc7ad1e756e9836f66910331c` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--b3923bdd120df8b9528646a0.md) | 208 | `declaration-track:b3923bdd120df8b9528646a07066b4a1eeae123f906a88c8adb0eb748a49e7d5` |
| 21 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--94698eff1c14e3fc59e5de07.md) | 231 | `declaration-track:94698eff1c14e3fc59e5de079877e1c762b6fa8a3d5ffcc2bea8d6264f6c2b0d` |
| 22 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--d8a97d60c35ef07cf2488478.md) | 237 | `declaration-track:d8a97d60c35ef07cf24884788ae3279f360148f45669b45bdab8b2a58f98e009` |
| 23 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--02d56abc3d6cb159a0b0ab37.md) | 243 | `declaration-track:02d56abc3d6cb159a0b0ab37b384d02486dd46cbee7962c3733b227f061259da` |
| 24 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--051a9faee8056998c78d3711.md) | 249 | `declaration-track:051a9faee8056998c78d371152cc14edd1b058b0d7cfb33e3b9d4a0d8b00e521` |
| 25 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--b5aa3f8a761c691ef8bd6273.md) | 255 | `declaration-track:b5aa3f8a761c691ef8bd627386c39be1abcc051fe8f2406945360d2547fc1051` |
| 26 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant4e296bf36ece940b34d2d45a4bd879023a20a99e8a35f37231005afd45296569.lean/declarations/macro--7130e3238beddb9e5ce345b0.md) | 261 | `declaration-track:7130e3238beddb9e5ce345b06c6cd6d4f76e2a8f126f7ef59a35f041de10d25e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
