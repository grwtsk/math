# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HermitianPosPart.Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43761ac8a5a980cf20b4651c582fc2a81ffb1744",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43761ac8a5a980cf20b4651c582fc2a81ffb1744`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/specmap--ed3d8751ce4fe8c18bbe2069.md) | 50 | `declaration-track:ed3d8751ce4fe8c18bbe20699a9977580b59860988d5cc3fd6730ce82936cba1` |
| 2 | `lemma` | [specMap_isHermitian](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/specmap-ishermitian--ae9bb539e962cc5690cab5c8.md) | 54 | `result-track:ae9bb539e962cc5690cab5c8cda1f1ad7a8ba672166d4afb5ad16717995ab6d7` |
| 3 | `lemma` | [specMap_id](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/specmap-id--103e2f7546911dd2b0a16f5e.md) | 61 | `result-track:103e2f7546911dd2b0a16f5ef1e41a7ef82c560fd515a0a0e3461a0b938a3aa3` |
| 4 | `lemma` | [specMap_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/specmap-sub--c5ee3fea2e128cea818bb5b7.md) | 66 | `result-track:c5ee3fea2e128cea818bb5b7378f0e7c0dff3952a995d010a63a2c57250a5dca` |
| 5 | `lemma` | [specMap_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/specmap-mul--f3a73770eec33cec0c35fff3.md) | 73 | `result-track:f3a73770eec33cec0c35fff3b774f396ad6b481562d547275192f20ddad4907f` |
| 6 | `lemma` | [specMap_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/specmap-zero--90cb92a54debc77480bb16ec.md) | 79 | `result-track:90cb92a54debc77480bb16ecf2acbf1430964afdc572c6a6dbb5f8a1e552b117` |
| 7 | `lemma` | [hermForm_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermform-specmap--08bd9c1382cea047cb4e35ae.md) | 85 | `result-track:08bd9c1382cea047cb4e35ae229dfcca85257b010f3fc1ad9012d19805d2942e` |
| 8 | `lemma` | [rtrace_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/rtrace-specmap--1370fe0434d8a7e666b22cef.md) | 109 | `result-track:1370fe0434d8a7e666b22cef8377189fa4197bfc4d61a210593c0a3651cad969` |
| 9 | `lemma` | [frobSq_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/frobsq-specmap--c3449f82c707864dd2556f58.md) | 117 | `result-track:c3449f82c707864dd2556f58fc4ee1fff138f4bf8b3ff0063699ad5be3d0b40f` |
| 10 | `lemma` | [rank_specMap](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/rank-specmap--ea8d3d5fde0ee95aac456a47.md) | 126 | `result-track:ea8d3d5fde0ee95aac456a472d89f8fb0583b97c97b4e2056a5d3d154c5988b8` |
| 11 | `lemma` | [specMap_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/specmap-possemidef--804166ea8daa7781ea7a00c9.md) | 142 | `result-track:804166ea8daa7781ea7a00c9be39c23def09da8e5affc7c1dfd7df668e0abe1f` |
| 12 | `def` | [hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermpospart--49d21f58e6070c64dc98d591.md) | 156 | `declaration-track:49d21f58e6070c64dc98d591a934cc1dae8f33f2ef1013a2d029e34c0162d578` |
| 13 | `def` | [hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermnegpart--cc179f1a5d824a22c59fa509.md) | 159 | `declaration-track:cc179f1a5d824a22c59fa5096a32273a56992d448a9b9d66e62f4906b7ca865c` |
| 14 | `lemma` | [hermPosPart_sub_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermpospart-sub-hermnegpart--a2b9c6c48a230eecf06bf650.md) | 161 | `result-track:a2b9c6c48a230eecf06bf65020a0e70456fb0aba6295280d73d2726e3dc22922` |
| 15 | `lemma` | [hermPosPart_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermpospart-possemidef--7cfeb2bea0932d04d015e147.md) | 166 | `result-track:7cfeb2bea0932d04d015e1474e266c95b394c71707305d65f17ac70b8c664b53` |
| 16 | `lemma` | [hermNegPart_posSemidef](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermnegpart-possemidef--22d44bd5f165e67f583b5c13.md) | 169 | `result-track:22d44bd5f165e67f583b5c13621883e860ee7fe81c481edfda3b9c8dff210eb4` |
| 17 | `lemma` | [real_posPart_mul_negPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/real-pospart-mul-negpart--5e60627045152a41763e11e3.md) | 172 | `result-track:5e60627045152a41763e11e368a5b9adf9ddbb5a6c08d19f2108f79c9c4cc218` |
| 18 | `lemma` | [hermPosPart_mul_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermpospart-mul-hermnegpart--e088f271a53a6198b7fee9fe.md) | 177 | `result-track:e088f271a53a6198b7fee9fe46a5e6490d789f185baa77942e707e3e897540b6` |
| 19 | `lemma` | [hermNegPart_mul_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/hermnegpart-mul-hermpospart--82a24646b0c91f406598f600.md) | 182 | `result-track:82a24646b0c91f406598f60039c12a1e006a80443cea6245734ad31e73a65b71` |
| 20 | `lemma` | [rank_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/rank-hermpospart--aef4e9fefda166b645169040.md) | 188 | `result-track:aef4e9fefda166b6451690406caed90fe20878c770385fb1c6f74c0ae65a36af` |
| 21 | `lemma` | [rtrace_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/rtrace-hermpospart--8dd8882cf537bee7c0efac07.md) | 194 | `result-track:8dd8882cf537bee7c0efac0745a0cf13c56111cd956547c8f865a0bf32b409b6` |
| 22 | `lemma` | [rtrace_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/rtrace-hermnegpart--a054c4fbd09fd46882605e33.md) | 197 | `result-track:a054c4fbd09fd46882605e337bc2441b3d836ec93af9f7e5885be66dd5200a90` |
| 23 | `lemma` | [rtrace_sub_decomp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/rtrace-sub-decomp--c2070a39213fef25c7b17933.md) | 200 | `result-track:c2070a39213fef25c7b17933476245c807cc5f50940b77000293a158185a7397` |
| 24 | `lemma` | [frobSq_hermPosPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/frobsq-hermpospart--f3972ddf74d20e18407ead42.md) | 204 | `result-track:f3972ddf74d20e18407ead42767a028c3843b30faed1a8b455f2705e9bfb76bc` |
| 25 | `lemma` | [frobSq_hermNegPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Variant91f74c8b2befd70d3d734b52bdb2d4716164310989f66e633bbecef9fb38620c.lean/declarations/frobsq-hermnegpart--88d853393709ab13c5879bdb.md) | 207 | `result-track:88d853393709ab13c5879bdb9402e1a09bec99209fd05f24ffe0bf7f888011d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
