# Verification target: GRWTSK.Analysis.Complex.HolomorphicRestrictionGluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a123a0d14f1e3194d8e838d1110c05c5c9cc0ce",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicRestrictionGluing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a123a0d14f1e3194d8e838d1110c05c5c9cc0ce`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicRestrictionGluing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicRestrictionGluing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Gluing`](../../../../mathematics/Topology/PortFiber/Gluing.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicRestriction`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestriction.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryDomainCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/binarydomaincover--9edeaae36c0cbe3514e44d3b.md) | 9 | `declaration-track:9edeaae36c0cbe3514e44d3bca6091710e649021f40b3cdec8f1521f12dd0024` |
| 2 | `def` | [overlap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/overlap--50b34a6f04fee09de9dfe157.md) | 20 | `declaration-track:50b34a6f04fee09de9dfe1571c78ee8c723a82c1ed0f15d086d8eb108585b5ba` |
| 3 | `def` | [xToU](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/xtou--358f1d3b11d7e6ca7569b724.md) | 24 | `declaration-track:358f1d3b11d7e6ca7569b7241ea5d588e42526298a6772e956a373548a834604` |
| 4 | `def` | [xToV](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/xtov--26651d0cb9664a0b6f3670ac.md) | 28 | `declaration-track:26651d0cb9664a0b6f3670ac23526c0eb739a331b994aa4051abb2685a082ab6` |
| 5 | `def` | [uToOverlap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/utooverlap--efb0787940b5968dacbe3c75.md) | 32 | `declaration-track:efb0787940b5968dacbe3c75b97aa2909e6f58f1cf021a923fbd11e2bb0c4b89` |
| 6 | `def` | [vToOverlap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/vtooverlap--6acc59d5687bffa007a166e2.md) | 36 | `declaration-track:6acc59d5687bffa007a166e26f2fc68d14db0d70eafce284188823eb3e2a6f20` |
| 7 | `def` | [toPortCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/toportcover--4dc1e72dceec794515b09a51.md) | 40 | `declaration-track:4dc1e72dceec794515b09a51d0609b20e8628314ceb50a1457d7ea2b77ed08f8` |
| 8 | `theorem` | [matching_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/matching-apply--90c4d538a972ebec34f29bd8.md) | 56 | `result-track:90c4d538a972ebec34f29bd8a89eab4ea9ef4ac3313c929978026842228f50ac` |
| 9 | `def` | [glue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/glue--90347133242a9111e580af56.md) | 64 | `declaration-track:90347133242a9111e580af567318aac76789b58afe7901cefd428fcb81731dc3` |
| 10 | `theorem` | [restrict_glue_left](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/restrict-glue-left--81ecea302bbe1aaaf0efa15d.md) | 75 | `result-track:81ecea302bbe1aaaf0efa15d5d4ae23b042acf61fe2dd575aa54c3c85073e2f4` |
| 11 | `theorem` | [restrict_glue_right](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/restrict-glue-right--c6ae62cdbc8b109870e36146.md) | 84 | `result-track:c6ae62cdbc8b109870e3614616f9cc784b050cb4806269cdb8fecc4a649a7489` |
| 12 | `def` | [functionSheafCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/functionsheafcertificate--dc1e21b5dd34f895e0185b81.md) | 98 | `declaration-track:dc1e21b5dd34f895e0185b81566567db055708b74808956bcfa30137d7a41c2f` |
| 13 | `abbrev` | [MatchingData](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/matchingdata--68aee8ba8e7286b0cbf244f1.md) | 116 | `declaration-track:68aee8ba8e7286b0cbf244f1a0332b4bae6b52962972d92f39e6f0bafeaa4a97` |
| 14 | `def` | [glueMap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/gluemap--592277ff258c2eca144e63ea.md) | 121 | `declaration-track:592277ff258c2eca144e63ea465aaab74428a73540fbe38d3969006dd23fc737` |
| 15 | `theorem` | [glueMap_left](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/gluemap-left--1917a19294dd3e83e0add1f3.md) | 126 | `result-track:1917a19294dd3e83e0add1f35ee9f8efa3d636b9cc4c968247dccdec3b01dad1` |
| 16 | `theorem` | [glueMap_right](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/gluemap-right--e69c830d2acb9e79899ac3b9.md) | 131 | `result-track:e69c830d2acb9e79899ac3b965d77fa1a0ef7e892200130d1fef036d4337a750` |
| 17 | `structure` | [HolomorphicMatchingData](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/holomorphicmatchingdata--5a516bf2f4bd6a0c5dba7a95.md) | 136 | `declaration-track:5a516bf2f4bd6a0c5dba7a95e8346afce1bf96682657f8c1aafae59439ba63e9` |
| 18 | `structure` | [HolomorphicGlueCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/holomorphicgluecertificate--f1b370c618c25910776cf1bf.md) | 142 | `declaration-track:f1b370c618c25910776cf1bf54b7be3c0bbe3788065db367cd4fa9aa37c33ab9` |
| 19 | `theorem` | [global_holomorphic_of_certificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/global-holomorphic-of-certificate--188b2cfa84d6a050c3c7679d.md) | 148 | `result-track:188b2cfa84d6a050c3c7679d0fe0280b30595a56e35475e9a8bf9bc6e5ffdd34` |
| 20 | `def` | [lower](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/lower--11f112951ab54e66c7fbd40d.md) | 159 | `declaration-track:11f112951ab54e66c7fbd40d7286d8f6db1b2c73ca86a66d1cf994aa30487cca` |
| 21 | `def` | [halfPlaneCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/halfplanecover--2272f80e708a88774339d7b1.md) | 162 | `declaration-track:2272f80e708a88774339d7b1ead9bb2f44c78a710d81bbfda4e5d47060819a36` |
| 22 | `def` | [halfPlaneFunctionSheaf](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/declarations/halfplanefunctionsheaf--a33c2203a78f3463d6f41c09.md) | 173 | `declaration-track:a33c2203a78f3463d6f41c0967a4b743aec910b9ed01b45e95500b6f86ed0182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
