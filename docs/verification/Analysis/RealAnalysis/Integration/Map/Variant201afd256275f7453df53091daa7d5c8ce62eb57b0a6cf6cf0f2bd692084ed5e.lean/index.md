# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Map.Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceab01e59c172258e6c530cb297917c73e13f525",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceab01e59c172258e6c530cb297917c73e13f525`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-map--8b9232f0f23e2b9cd26dbf99.md) | 23 | `result-track:8b9232f0f23e2b9cd26dbf99d311556c1ce5e2a64776b46f1823629cdb308e93` |
| 2 | `theorem` | [lintegral_map'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-map--3435faa30764059ef055b373.md) | 32 | `result-track:3435faa30764059ef055b37397875ae5306a327159921ad04e33c1a299c03354` |
| 3 | `theorem` | [lintegral_map_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-map-le--119f109e4482d31c97ff1e35.md) | 45 | `result-track:119f109e4482d31c97ff1e352fbc0cefce77026d0f6e13beed0d604314af8d2a` |
| 4 | `theorem` | [lintegral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-comp--0341cde0eeb2d38b531a7265.md) | 54 | `result-track:0341cde0eeb2d38b531a72650fd1d5aaf90a6bd102073275ead91566805eb7ba` |
| 5 | `theorem` | [setLIntegral_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/setlintegral-map--c15d130f1d7e1ada56877ab3.md) | 58 | `result-track:c15d130f1d7e1ada56877ab3c59a5e323edb46dfeea530fde7d557deb05026ce` |
| 6 | `theorem` | [lintegral_indicator_const_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-indicator-const-comp--89e3254552e715238a51c761.md) | 63 | `result-track:89e3254552e715238a51c76164be231442409de95c221c44a2a5a8062c844996` |
| 7 | `theorem` | [_root_.MeasurableEmbedding.lintegral_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/root-measurableembedding-lintegral-map--c8fe0fa6f1489c2ed761596f.md) | 72 | `result-track:c8fe0fa6f1489c2ed761596ff67384093e8cbc6ac58be88426d145fd57d5d224` |
| 8 | `theorem` | [lintegral_map_equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-map-equiv--66e527408c881703ac9f18d8.md) | 87 | `result-track:66e527408c881703ac9f18d800badfbeff421142d447880405c24eb5ace2495c` |
| 9 | `theorem` | [lintegral_subtype_comap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-subtype-comap--f68f964ffe9851cf5b393b9b.md) | 91 | `result-track:f68f964ffe9851cf5b393b9b8c5f7c7f693067e116ab578ef3c6d3b1e6838486` |
| 10 | `theorem` | [setLIntegral_subtype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/setlintegral-subtype--ca114817a634101ba8dcaf51.md) | 95 | `result-track:ca114817a634101ba8dcaf516c8d4c994b75001552f40fc56b3068d3c9b62cc1` |
| 11 | `theorem` | [lintegral_map_equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-map-equiv--f611b933dfe730dc0169f7d2.md) | 106 | `result-track:f611b933dfe730dc0169f7d2f33812566ff920a3f005f462071710e45b2d6315` |
| 12 | `theorem` | [lintegral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-comp--12b76659ed550a91ac39eac8.md) | 112 | `result-track:12b76659ed550a91ac39eac8cfa682aeb311e44dc3ddffed6161f800ae1a4395` |
| 13 | `theorem` | [lintegral_comp_emb](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/lintegral-comp-emb--7be5de5d277df3278cc55a24.md) | 115 | `result-track:7be5de5d277df3278cc55a2444bef82474d67b165b987e3b51b255c9e25ba7d0` |
| 14 | `theorem` | [setLIntegral_comp_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/setlintegral-comp-preimage--dc42c7de45bfac627b1c9f17.md) | 118 | `result-track:dc42c7de45bfac627b1c9f176b8704533633873a2eab1c6c346afd2971c168ea` |
| 15 | `theorem` | [setLIntegral_comp_preimage_emb](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/setlintegral-comp-preimage-emb--f77b71d35e47fd429d0bfca2.md) | 123 | `result-track:f77b71d35e47fd429d0bfca23b528886eca9ff4e76d9653a088846c12839e120` |
| 16 | `theorem` | [setLIntegral_comp_emb](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.lean/declarations/setlintegral-comp-emb--87f9b357805ef9f31c89b22c.md) | 127 | `result-track:87f9b357805ef9f31c89b22c0cea173c70adaff76455d0a6de31e78765a58f6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
