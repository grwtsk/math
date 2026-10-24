# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqFun.Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ad0ba162157dffca44b3e22920ff52841eb425a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ad0ba162157dffca44b3e22920ff52841eb425a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean.json)

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
| 1 | `def` | [Integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable--4da48fdef2143693ee56bd58.md) | 56 | `declaration-track:4da48fdef2143693ee56bd586c8bc9eccb03272827c76e6e789a034d0777c8a2` |
| 2 | `theorem` | [integrable_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-mk--d53241a2be3bfaea609c0cfa.md) | 59 | `result-track:d53241a2be3bfaea609c0cfa01ecc58a91d2d973e180c26161dedfc92af23191` |
| 3 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-coefn--79245fc607b7f67415abe1f8.md) | 65 | `result-track:79245fc607b7f67415abe1f8d5824d4d05008bef37d08bd389de7c333849d6f7` |
| 4 | `theorem` | [integrable_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-zero--5655cc4fcbab889260877ffa.md) | 68 | `result-track:5655cc4fcbab889260877ffac8e83839ccba9ba1815e30b1df9333daa9970b63` |
| 5 | `theorem` | [Integrable.neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-neg--da74c6449b639cc719cce699.md) | 75 | `result-track:da74c6449b639cc719cce69983132f464a476472a53e6aa7a5d104fdcf4c3641` |
| 6 | `theorem` | [integrable_iff_mem_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-iff-mem-l1--d53bcafd0cdb1c6a2f15488e.md) | 80 | `result-track:d53bcafd0cdb1c6a2f15488e6933b77e01d796a1205f11695c0b1e8159057175` |
| 7 | `theorem` | [Integrable.add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-add--84a1cc2bad84516f829a98a5.md) | 84 | `result-track:84a1cc2bad84516f829a98a5ba737a2818f81773260e5f83583fff57d2ba5cb7` |
| 8 | `theorem` | [Integrable.sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-sub--e4aab1783a782fd4412f021b.md) | 89 | `result-track:e4aab1783a782fd4412f021b2c37aa4d1400a25b304be66157270ea0ab252556` |
| 9 | `theorem` | [Integrable.smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-smul--be3aa7da563be117a265d0c6.md) | 99 | `result-track:be3aa7da563be117a265d0c62d040c4393f2cb0849a134e4bb0b566afc809ee2` |
| 10 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/integrable-coefn--bf767ebb8dc7315bdc32e767.md) | 112 | `result-track:bf767ebb8dc7315bdc32e767340d9d78e5d364e68e5748a9743bcc992f379bc9` |
| 11 | `theorem` | [hasFiniteIntegral_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/hasfiniteintegral-coefn--99a7ca81e1b1548686599817.md) | 116 | `result-track:99a7ca81e1b15486865998173ddb30886be797965e4d014b8595ca40debca396` |
| 12 | `theorem` | [stronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/stronglymeasurable-coefn--f1016e779327b6a496a9e7d7.md) | 120 | `result-track:f1016e779327b6a496a9e7d7967f8077cc92456dd6d9f60e84ad5707db5dde41` |
| 13 | `theorem` | [measurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/measurable-coefn--8b6c2f40cdef5b1678475641.md) | 124 | `result-track:8b6c2f40cdef5b1678475641ea1c8778eee28c4f19963ac589425f5b9c28ce80` |
| 14 | `theorem` | [aestronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/aestronglymeasurable-coefn--d5dc8515bdd3ef13f35b3ffa.md) | 128 | `result-track:d5dc8515bdd3ef13f35b3ffae2233dc18b898ac4b24f3ea3833a5afebf51f570` |
| 15 | `theorem` | [aemeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/aemeasurable-coefn--02572bc82b4a0f5af869a7c4.md) | 132 | `result-track:02572bc82b4a0f5af869a7c47ddcb62488fece8da418eb6d16ad418d1057df0f` |
| 16 | `theorem` | [edist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/edist-def--4a1fc888c71ef302839356c8.md) | 135 | `result-track:4a1fc888c71ef302839356c84c1a49e22d2444f3da4cbbe82712bc4ded2008d3` |
| 17 | `theorem` | [dist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/dist-def--8617cbadaba7184444909bc2.md) | 140 | `result-track:8617cbadaba7184444909bc240c93c029d2997ad769cb0076715c1322a40c040` |
| 18 | `theorem` | [norm_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/norm-def--d1c5d51434237fe1351db4ce.md) | 143 | `result-track:d1c5d51434237fe1351db4cefc77d7e67e8364d0ffc59573c9b57c5ce1149b0e` |
| 19 | `theorem` | [norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/norm-sub-eq-lintegral--7cb230d7bb886aafdac70d7e.md) | 149 | `result-track:7cb230d7bb886aafdac70d7eca43366e8c701f0518a35e7e7fa09933462b373d` |
| 20 | `theorem` | [ofReal_norm_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/ofreal-norm-eq-lintegral--0b3dba870f7b6ab12b992f16.md) | 156 | `result-track:0b3dba870f7b6ab12b992f1627cbe4fabc8233acadb9b59b84302ef7b2f086a9` |
| 21 | `theorem` | [ofReal_norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/ofreal-norm-sub-eq-lintegral--7393c173d6cf174f13830a1f.md) | 163 | `result-track:7393c173d6cf174f13830a1f8ce320223e25d349d3c778fa972c763920819b32` |
| 22 | `def` | [toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1--8ec4e7fce42776825266694e.md) | 177 | `declaration-track:8ec4e7fce42776825266694e463370d20c407dff1759dea61884cb5b71b47935` |
| 23 | `theorem` | [toL1_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-coefn--4dc54cfbd13cdcb857d2fd82.md) | 181 | `result-track:4dc54cfbd13cdcb857d2fd82d24cd80115aaad8501d69842cfab82c8cf30806b` |
| 24 | `theorem` | [coeFn_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/coefn-tol1--51568b2fd0a1c774344a6e3a.md) | 184 | `result-track:51568b2fd0a1c774344a6e3a06a9737ed26ab0679145267190da9a02bd948c11` |
| 25 | `theorem` | [toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-zero--00cf01d188aaf2465525eb43.md) | 188 | `result-track:00cf01d188aaf2465525eb431f112058ef8134810dc18892a77506e05653f22a` |
| 26 | `theorem` | [toL1_eq_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-eq-mk--47ab16cffaa968c5aa4121aa.md) | 192 | `result-track:47ab16cffaa968c5aa4121aad7eeca5795a02dc8eb3787aac9bb245e4f95aa6f` |
| 27 | `theorem` | [toL1_eq_toL1_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-eq-tol1-iff--31080b8104b430dc3d382087.md) | 197 | `result-track:31080b8104b430dc3d382087e769c2cc8f35b50f6cbbd2ad36964e6b8ad48369` |
| 28 | `theorem` | [toL1_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-add--954d5416dc41fa3e41687354.md) | 201 | `result-track:954d5416dc41fa3e41687354ad6b4fe238e7b1ef66c09c5487b1029ef2bc8460` |
| 29 | `theorem` | [toL1_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-neg--52ef27f77d4a6623351c0b4d.md) | 205 | `result-track:52ef27f77d4a6623351c0b4dad6f888fb49e46ea41bab2d7a7fd55660d3c7c9e` |
| 30 | `theorem` | [toL1_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-sub--3ad40e51067116b164b15261.md) | 208 | `result-track:3ad40e51067116b164b15261be69e036f21d25cfb959c9df91515cb19b885028` |
| 31 | `theorem` | [norm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/norm-tol1--a7ded1d3030d910356e7db48.md) | 212 | `result-track:a7ded1d3030d910356e7db486347c110eafc1f35b776fbb394cce6161b218947` |
| 32 | `theorem` | [enorm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/enorm-tol1--b47cc8f4ea01617ed5e585c9.md) | 217 | `result-track:b47cc8f4ea01617ed5e585c95501770b3c9f43c0a041ac05ac3649c35f88505f` |
| 33 | `theorem` | [norm_toL1_eq_lintegral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/norm-tol1-eq-lintegral-norm--72fc0905311a0b7ea63d4532.md) | 221 | `result-track:72fc0905311a0b7ea63d453225a80e37668ba476e25a4f8aa30f2909afc0786f` |
| 34 | `theorem` | [norm_toL1_eq_lintegral_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/norm-tol1-eq-lintegral-enorm--c3e84633288f622bdb923c43.md) | 225 | `result-track:c3e84633288f622bdb923c435fdcbaa54c1d143b0ffaecd5eaf73f4f11f0fead` |
| 35 | `theorem` | [edist_toL1_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/edist-tol1-tol1--753b9c8b405cfcfe2cd28982.md) | 230 | `result-track:753b9c8b405cfcfe2cd289823a598afd0a19cfc2257a9eb26cbbaa66a1bdfafc` |
| 36 | `theorem` | [edist_toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/edist-tol1-zero--6ae81b873bd58568802db363.md) | 238 | `result-track:6ae81b873bd58568802db363afdd3ac7697e0591051bfd652d054021979f1ff3` |
| 37 | `theorem` | [toL1_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-smul--b5b55d9799075d031d77f12a.md) | 245 | `result-track:b5b55d9799075d031d77f12a5bad54ff7a970c45d5276b34a7d17334e858698b` |
| 38 | `theorem` | [toL1_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant41fc8759c4f5e72dda53d90cc01c4049b06c754c0ddd6f9052bed2066a7dbe58.lean/declarations/tol1-smul--001e52345ee90bae227b9607.md) | 249 | `result-track:001e52345ee90bae227b96073d5173db71ea5896e7f996fcc40ed665a6a693f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
