# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Sobolev.Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7dea53e1e27ae29a1e6671eb8790031e379be67",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7dea53e1e27ae29a1e6671eb8790031e379be67`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean.json)

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
| 1 | `def` | [besselPotential](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/besselpotential--d040f6c557c726da6fedbbef.md) | 81 | `declaration-track:d040f6c557c726da6fedbbef92e64467892631f2c0a07a48fe79913f6bf05c35` |
| 2 | `theorem` | [besselPotential_zero](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/besselpotential-zero--c0b58862952c36e06c473f25.md) | 86 | `result-track:c0b58862952c36e06c473f2538fafa16a65982f7e3fb826202e2fe5cd4add58c` |
| 3 | `theorem` | [besselPotential_besselPotential_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/besselpotential-besselpotential-apply--60d99fe11e5293dfb927e7e3.md) | 91 | `result-track:60d99fe11e5293dfb927e7e3c610d6b1df24004faecf8a8fc3977bd8a980fd6c` |
| 4 | `theorem` | [besselPotential_compL_besselPotential](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/besselpotential-compl-besselpotential--aaa15f71211681300c6a12d9.md) | 104 | `result-track:aaa15f71211681300c6a12d986ee9af0ea82f9417aef2ccd7285e36d8afca95b` |
| 5 | `theorem` | [besselPotential_neg_apply_eq_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/besselpotential-neg-apply-eq-iff--34aa31571d228aa3232fcc60.md) | 109 | `result-track:34aa31571d228aa3232fcc60558fae554dd88187e0ae87d6857eef176d56c556` |
| 6 | `theorem` | [besselPotential_neg_one_lineDerivOp_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/besselpotential-neg-one-linederivop-eq--7e9193c6c40966b57e500a52.md) | 116 | `result-track:7e9193c6c40966b57e500a52c16cb3fefcc286523a160b97cec581e136645c67` |
| 7 | `theorem` | [besselPotential_neg_two_laplacian_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/besselpotential-neg-two-laplacian-eq--285f4707e956d3b96417aecf.md) | 127 | `result-track:285f4707e956d3b96417aecf140e0d0cf5c28669d81954cd6b37bfd243e42438` |
| 8 | `theorem` | [fourier_besselPotential_eq_smulLeftCLM_fourier_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/fourier-besselpotential-eq-smulleftclm-fourier-apply--5507b33be7d4ead184e13124.md) | 146 | `result-track:5507b33be7d4ead184e13124deb7a73768a127eb677d6440e008ddd26e6d44eb` |
| 9 | `def` | [MemSobolev](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev--eb26d8293b5503b8d6266ab1.md) | 161 | `declaration-track:eb26d8293b5503b8d6266ab1d2eceb1dbe832d5d2d9f597d39e452dd10952efa` |
| 10 | `theorem` | [memSobolev_zero_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-zero-iff--9564734ff1ea0800d45b597a.md) | 165 | `result-track:9564734ff1ea0800d45b597aa2a1b4b4edf3d07d78e0c5725021c070c8fa2b1b` |
| 11 | `theorem` | [MemSobolev.add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-add--766911fd8d15c90c8d2d48d9.md) | 169 | `result-track:766911fd8d15c90c8d2d48d99e1e2e6647b174c08589df0a638ef3dfc6098455` |
| 12 | `theorem` | [MemSobolev.sub](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-sub--2fbd84abd8c649146a905180.md) | 177 | `result-track:2fbd84abd8c649146a905180454fb9f80a9284634b2bb3e519ea0f8fb3a2615a` |
| 13 | `theorem` | [MemSobolev.neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-neg--b49b9f22c299389ced668d53.md) | 185 | `result-track:b49b9f22c299389ced668d53834411116fd61f53663e49fb8ee731e67e88b14f` |
| 14 | `theorem` | [MemSobolev.smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-smul--8436d1f4418567372247640b.md) | 192 | `result-track:8436d1f4418567372247640b00ca58f8e7f141f1b8eb82b41ba035ea0cbdcd12` |
| 15 | `theorem` | [memSobolev_fun_zero](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-fun-zero--8d31352b03379040d44fd4ff.md) | 201 | `result-track:8d31352b03379040d44fd4fff79d090954ee620e15ae8918c28f926fb60358ad` |
| 16 | `theorem` | [memSobolev_besselPotential_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-besselpotential-iff--91a1450376a3e6996c86c96c.md) | 208 | `result-track:91a1450376a3e6996c86c96c2fdc73966bc8150d03c7261d933635eed480c9a2` |
| 17 | `theorem` | [_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.BesselPotential.Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.SchwartzMap.memSobolev](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/root-grwtsk-analysis-harmonicanalysis-fourieranalysis-besselpotential-va--43dcebf4736ab1001f565d9e.md) | 213 | `result-track:43dcebf4736ab1001f565d9e5ac13b502370c3dd22dbbc8d12954c66ed0c71fc` |
| 18 | `theorem` | [memSobolev_iff_exists_smulLeftCLM_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-iff-exists-smulleftclm-fourier--aa834ac361a274a3269ad805.md) | 230 | `result-track:aa834ac361a274a3269ad805ba409696666fc8962264568789b5cd836ca9ab61` |
| 19 | `theorem` | [memSobolev_zero_iff_exists_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-zero-iff-exists-fourier--c3893f9098e10868e7101a83.md) | 245 | `result-track:c3893f9098e10868e7101a83dc4468e4028fd57c3d250828e1e71c63db4551c2` |
| 20 | `theorem` | [MemSobolev.fourier_memL1](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-fourier-meml1--7ee7040d46aa02789dfc63bf.md) | 253 | `result-track:7ee7040d46aa02789dfc63bf8028cb19a3d814cb2a46f5fd038c361f5ca297a6` |
| 21 | `theorem` | [MemSobolev.fourierMultiplierCLM_of_bounded](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-fouriermultiplierclm-of-bounded--b0a5e1f70aa4ea80f932a4f3.md) | 293 | `result-track:b0a5e1f70aa4ea80f932a4f34f38b9f575a0628d3f7902fa6bfb0d8e049c54a6` |
| 22 | `theorem` | [MemSobolev.mono](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-mono--df8c40a53da36c4a3dcdf505.md) | 310 | `result-track:df8c40a53da36c4a3dcdf5056a5d62bd38e0b6017ad27a4a4412f790bb37418b` |
| 23 | `theorem` | [MemSobolev.lineDerivOp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-linederivop--c49b5f169a3b0923482f2041.md) | 328 | `result-track:c49b5f169a3b0923482f20413d74511cc3388373d02b69ab5ab8c32542b6d627` |
| 24 | `theorem` | [MemSobolev.laplacian](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variant5cbe362eb2bb0fd9a83702fd9a8ec2e30d9766fd831db0e33705786b29bf3c3e.lean/declarations/memsobolev-laplacian--90a7d5a5f8c6bde7ab508068.md) | 356 | `result-track:90a7d5a5f8c6bde7ab508068371ed02bee5895167254ec6dc202618ae1e81eda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
