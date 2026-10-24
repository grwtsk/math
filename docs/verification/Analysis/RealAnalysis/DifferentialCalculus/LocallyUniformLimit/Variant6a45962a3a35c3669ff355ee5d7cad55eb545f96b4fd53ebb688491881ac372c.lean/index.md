# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocallyUniformLimit.Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4a9947620884b5c98eb2aefbbf1a9e39f34244a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4a9947620884b5c98eb2aefbbf1a9e39f34244a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean.json)

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
| 1 | `def` | [cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/cderiv--7906a6ef8ee9b44b92b172ac.md) | 43 | `declaration-track:7906a6ef8ee9b44b92b172ac2e3f9820a6088efb8ec55742859e76780519923a` |
| 2 | `theorem` | [cderiv_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/cderiv-eq-deriv--d4d4c3c6ab218f59a47fe163.md) | 46 | `result-track:d4d4c3c6ab218f59a47fe163ce6c68faf0745925ab065b8be9f6b5d760b9dc68` |
| 3 | `theorem` | [norm_cderiv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/norm-cderiv-le--111c4bbb0628e2dc5958644a.md) | 50 | `result-track:111c4bbb0628e2dc5958644ae06f67aa816ace4a14aeb73e5c3836f46f27edaf` |
| 4 | `theorem` | [cderiv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/cderiv-sub--189097b18756141950f2bbb4.md) | 65 | `result-track:189097b18756141950f2bbb45cfeda55ce6e75301af42cf4cdc64f7caa56c0fc` |
| 5 | `theorem` | [norm_cderiv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/norm-cderiv-lt--11144b32bc843f70a41ef1f5.md) | 77 | `result-track:11144b32bc843f70a41ef1f55fc3196b48f0a3638143a685f6b934b114ce37ca` |
| 6 | `theorem` | [norm_cderiv_sub_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/norm-cderiv-sub-lt--1e1f7a30c5c2adb466bd082b.md) | 86 | `result-track:1e1f7a30c5c2adb466bd082bb5b73cdff7335fdd42c7d042da269f2ef2ffed87` |
| 7 | `theorem` | [_root_.TendstoUniformlyOn.cderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/root-tendstouniformlyon-cderiv--9ad2cbde51e65f511c99d2ce.md) | 91 | `result-track:9ad2cbde51e65f511c99d2ce49e36e749748726b142022df174bb6d004879309` |
| 8 | `theorem` | [tendstoUniformlyOn_deriv_of_cthickening_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/tendstouniformlyon-deriv-of-cthickening-subset--4f324c5ec4daf26cf12520b8.md) | 114 | `result-track:4f324c5ec4daf26cf12520b8aac0b01d844f375a1c13d21602e51b93abd7a671` |
| 9 | `theorem` | [exists_cthickening_tendstoUniformlyOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/exists-cthickening-tendstouniformlyon--0a8968e384e7a840d91d5791.md) | 127 | `result-track:0a8968e384e7a840d91d5791e47afdbcd6001259ee656dda874bb6766797e1df` |
| 10 | `theorem` | [_root_.TendstoLocallyUniformlyOn.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/root-tendstolocallyuniformlyon-differentiableon--530c450140c535c4c6e8c48c.md) | 136 | `result-track:530c450140c535c4c6e8c48c5b273522d5c6941325023f78633bdee71105aabb` |
| 11 | `theorem` | [_root_.TendstoLocallyUniformlyOn.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/root-tendstolocallyuniformlyon-deriv--dec3b8bf75fb705b306d48cd.md) | 154 | `result-track:dec3b8bf75fb705b306d48cdad27cb7afba0fa3cddac29f7137face3c93e0a82` |
| 12 | `theorem` | [differentiableOn_tsum_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/differentiableon-tsum-of-summable-norm--d40c3e65570d561aa1e8f4b3.md) | 171 | `result-track:d40c3e65570d561aa1e8f4b3004c061bac952755492c4cdb25f086aebc2ad31d` |
| 13 | `theorem` | [hasSum_deriv_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/hassum-deriv-of-summable-norm--eeb7647c5885b5012219770a.md) | 182 | `result-track:eeb7647c5885b5012219770a17d13fb637ea93141f965f160a7c6b1df6ec4b68` |
| 14 | `theorem` | [logDeriv_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LocallyUniformLimit/Variant6a45962a3a35c3669ff355ee5d7cad55eb545f96b4fd53ebb688491881ac372c.lean/declarations/logderiv-tendsto--210d52917a559319f0b3172d.md) | 201 | `result-track:210d52917a559319f0b3172dbdf6653ff3461816414662e01463ffc5a08bff38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
