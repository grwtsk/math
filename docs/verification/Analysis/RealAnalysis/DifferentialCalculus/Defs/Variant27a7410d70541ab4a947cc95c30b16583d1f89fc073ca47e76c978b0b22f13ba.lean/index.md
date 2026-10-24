# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Defs.Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c479bbd434b4a8c90b5a3ed4e7a451839a748625",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c479bbd434b4a8c90b5a3ed4e7a451839a748625`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean.json)

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
| 1 | `structure` | [HasFDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivatfilter--8b4c0a6a8562989885b48041.md) | 110 | `declaration-track:8b4c0a6a8562989885b480418f826d5576dbdf408e9dcaab84f08a88a16e596a` |
| 2 | `def` | [HasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivwithinat--4fc77ee948e5890800334d5b.md) | 117 | `declaration-track:4fc77ee948e5890800334d5b89a8ae8118f12bff0ccf7e061e4329bae28ec864` |
| 3 | `def` | [HasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivat--5877128f7bed65027caf03a7.md) | 123 | `declaration-track:5877128f7bed65027caf03a739839164f42db439bdeb5be0758437618852d953` |
| 4 | `def` | [HasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasstrictfderivat--d72408866a97013e6c252dd7.md) | 131 | `declaration-track:d72408866a97013e6c252dd7922029c2d726b5f49fd170322cf0d64a5456335b` |
| 5 | `def` | [DifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/differentiablewithinat--11cc16cd087e99db0c55021d.md) | 139 | `declaration-track:11cc16cd087e99db0c55021de83acc3332fd03616c87e563693a35170a7f6bbc` |
| 6 | `def` | [DifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/differentiableat--55c6480e2a076ecd4d30dc1a.md) | 145 | `declaration-track:55c6480e2a076ecd4d30dc1a5036e8474ffb79c6196a24161bdea6599e294bcc` |
| 7 | `def` | [DifferentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/differentiableon--3a0dd5102b81fad92facb58e.md) | 165 | `declaration-track:3a0dd5102b81fad92facb58e0f2e30f3ae76e3a32a99ebc642e7655f2a4e4934` |
| 8 | `def` | [Differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/differentiable--912266fef0e684f0f13f5dcf.md) | 170 | `declaration-track:912266fef0e684f0f13f5dcf4de46c85d4c53fc090e1d20b58c13afa2d3ca821` |
| 9 | `theorem` | [hasFDerivAt_iff_isLittleOTVS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivat-iff-islittleotvs--3c0509d24db2da63239a2e3e.md) | 180 | `result-track:3c0509d24db2da63239a2e3ea795d14a39922729f0566748f958a548ae2fdf60` |
| 10 | `theorem` | [hasFDerivWithinAt_iff_isLittleOTVS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivwithinat-iff-islittleotvs--cb6434cc7bcea8a34c89b210.md) | 186 | `result-track:cb6434cc7bcea8a34c89b2103d4c784f30cfcdb9401650f6d566d5a580229fe9` |
| 11 | `theorem` | [hasStrictFDerivAt_iff_isLittleOTVS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasstrictfderivat-iff-islittleotvs--920bc3a5fe09ca16eea38097.md) | 194 | `result-track:920bc3a5fe09ca16eea38097cbc6fc7fe733327f259637891cbec50d8441c11c` |
| 12 | `theorem` | [fderivWithin_zero_of_not_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/fderivwithin-zero-of-not-differentiablewithinat--9a48ed43507a07fa8added6e.md) | 199 | `result-track:9a48ed43507a07fa8added6ee321e889920f7a626e47fdcca741cb1927bed6da` |
| 13 | `theorem` | [fderivWithin_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/fderivwithin-univ--f5d39656b4cde4301316dce4.md) | 204 | `result-track:f5d39656b4cde4301316dce4c650204a39b08824ab7617d9bce76ed886f09714` |
| 14 | `theorem` | [hasFDerivAtFilter_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivatfilter-iff-islittleo--635e6287e0d630c3d53e4ccc.md) | 219 | `result-track:635e6287e0d630c3d53e4cccab9f9590e49f5a7f37ef3c514190b5bc5c40dcb2` |
| 15 | `theorem` | [hasFDerivAt_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivat-iff-islittleo--56731bdf2c1f4bc4c5507e3d.md) | 226 | `result-track:56731bdf2c1f4bc4c5507e3d1084cd139d1b0077bf4d2ecab10a5c7f1dca01c5` |
| 16 | `theorem` | [hasFDerivWithinAt_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasfderivwithinat-iff-islittleo--24a582048646f1869b012b50.md) | 232 | `result-track:24a582048646f1869b012b50e21af86181786665e9d4f6468607eb0fde00c43c` |
| 17 | `theorem` | [hasStrictFDerivAt_iff_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/declarations/hasstrictfderivat-iff-islittleo--26ebc20edddbf7ddf7af6d8e.md) | 240 | `result-track:26ebc20edddbf7ddf7af6d8ed27d6e6746b8f11a94dfc73d4922168fbf629bb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
