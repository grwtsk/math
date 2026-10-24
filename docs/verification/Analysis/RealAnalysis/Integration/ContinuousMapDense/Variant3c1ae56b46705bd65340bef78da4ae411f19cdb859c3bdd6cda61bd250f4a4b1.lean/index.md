# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ContinuousMapDense.Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2e0b3b8f7e7468d1389b8f4ab139bb492e1f24`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_continuous_eLpNorm_sub_le_of_closed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/exists-continuous-elpnorm-sub-le-of-closed--132f441d079f7352ba3d9515.md) | 87 | `result-track:132f441d079f7352ba3d951542b7d6b44c774b517a04e03ef920ac7fe25516de` |
| 2 | `theorem` | [MemLp.exists_hasCompactSupport_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/memlp-exists-hascompactsupport-elpnorm-sub-le--2f6b1e71807b8cf06c36179c.md) | 149 | `result-track:2f6b1e71807b8cf06c36179ce1728c7fa8f415de92ef6f5f5d9e5944959ea89e` |
| 3 | `theorem` | [MemLp.exists_hasCompactSupport_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/memlp-exists-hascompactsupport-integral-rpow-sub-le--2930a469f29a6b96ea0e968f.md) | 197 | `result-track:2930a469f29a6b96ea0e968f8a29fdab940414e631340a29cb14a9b9b97a8ed9` |
| 4 | `theorem` | [Integrable.exists_hasCompactSupport_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/integrable-exists-hascompactsupport-lintegral-sub-le--d3953484d5d279ab4e090fee.md) | 219 | `result-track:d3953484d5d279ab4e090fee2012327d6b5b0f9d191ee0071f553d505ac3f78c` |
| 5 | `theorem` | [Integrable.exists_hasCompactSupport_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/integrable-exists-hascompactsupport-integral-sub-le--20e6ea82a5251b7f4cf15a8a.md) | 234 | `result-track:20e6ea82a5251b7f4cf15a8ae10cc83b91e298c30fb2be3c7a6aa386df3fa902` |
| 6 | `theorem` | [MemLp.exists_boundedContinuous_eLpNorm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/memlp-exists-boundedcontinuous-elpnorm-sub-le--5915de598ef760c5e883e77e.md) | 245 | `result-track:5915de598ef760c5e883e77e967d83b580006a879323c7783d642da5fd25c120` |
| 7 | `theorem` | [MemLp.exists_boundedContinuous_integral_rpow_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/memlp-exists-boundedcontinuous-integral-rpow-sub-le--35624aec9d06c84854153451.md) | 290 | `result-track:35624aec9d06c848541534514405a26648f630c4ae359d078ea426534c55e0ce` |
| 8 | `theorem` | [Integrable.exists_boundedContinuous_lintegral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/integrable-exists-boundedcontinuous-lintegral-sub-le--8165a8745f040bf9448f721a.md) | 307 | `result-track:8165a8745f040bf9448f721added1ed6246801a789c868cd00f6d54354df6ace` |
| 9 | `theorem` | [Integrable.exists_boundedContinuous_integral_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/integrable-exists-boundedcontinuous-integral-sub-le--06d82c504e04193e52479b67.md) | 319 | `result-track:06d82c504e04193e52479b678e2fa5070827ff82344cd35d311727b0c173bfc2` |
| 10 | `theorem` | [boundedContinuousFunction_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/boundedcontinuousfunction-dense--016d34412de3d1214c5da714.md) | 331 | `result-track:016d34412de3d1214c5da7144300c9ca6a4212b974d9e4b31fe9be74a2fea96f` |
| 11 | `theorem` | [boundedContinuousFunction_topologicalClosure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/boundedcontinuousfunction-topologicalclosure--0d27a7e421e66220cc7d0415.md) | 343 | `result-track:0d27a7e421e66220cc7d04157d7b9d6460c1706506e335b37995be264e66b5ab` |
| 12 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/tolp-denserange--7757315c62ac39a8b71501c6.md) | 359 | `result-track:7757315c62ac39a8b71501c6bd816a4facdd4960980a13e34c8d379a62ddc5ae` |
| 13 | `theorem` | [toLp_denseRange](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant3c1ae56b46705bd65340bef78da4ae411f19cdb859c3bdd6cda61bd250f4a4b1.lean/declarations/tolp-denserange--af7bf86ac629e48dcb608147.md) | 371 | `result-track:af7bf86ac629e48dcb608147ae99a4b791ab9f7ab01a9e69245b7a0f682a8a92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
