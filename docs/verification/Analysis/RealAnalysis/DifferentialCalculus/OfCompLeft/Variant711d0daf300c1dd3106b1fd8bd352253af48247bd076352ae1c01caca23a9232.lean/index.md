# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.OfCompLeft.Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40073ef9a332f9c54564aa68e5ab05b6d5da10ad",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40073ef9a332f9c54564aa68e5ab05b6d5da10ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.OpenPartialHomeomorph.Continuity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFDerivAtFilter.of_comp_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivatfilter-of-comp-aux--19ffdab67be7a657d990cdea.md) | 49 | `result-track:19ffdab67be7a657d990cdeac71d8a8bff1e64452a9309cbb4aea308779d210e` |
| 2 | `theorem` | [HasFDerivAtFilter.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivatfilter-of-comp-of-leftinverse--6dec6fa9f3a84f0bfa9a41e4.md) | 72 | `result-track:6dec6fa9f3a84f0bfa9a41e467baf07bb244519e46694f41f51825d1a71f3be1` |
| 3 | `theorem` | [HasFDerivWithinAt.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivwithinat-of-comp-of-leftinverse--19b00dc44df5dc59da9ae75e.md) | 82 | `result-track:19b00dc44df5dc59da9ae75e4c6fee1072b081fc28c675c4a35aa21779df92dd` |
| 4 | `theorem` | [HasFDerivAt.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivat-of-comp-of-leftinverse--067083915be837993a9de12f.md) | 91 | `result-track:067083915be837993a9de12f72a079300d1cb5cff2dbb7ceb092aa2c64d2c17e` |
| 5 | `theorem` | [HasStrictFDerivAt.of_comp_of_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasstrictfderivat-of-comp-of-leftinverse--469c93f432c0ff8006d03753.md) | 100 | `result-track:469c93f432c0ff8006d0375353284087e058a9307fc7d6b0db68c683068b574d` |
| 6 | `theorem` | [HasFDerivAtFilter.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivatfilter-of-comp-of-isembedding--cba3ef33c9a23136175ab156.md) | 116 | `result-track:cba3ef33c9a23136175ab156b5ed22928913d5d708460cab87d63dab9132d1a7` |
| 7 | `theorem` | [HasFDerivWithinAt.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivwithinat-of-comp-of-isembedding--b8612571a20fd60ecc9b82ae.md) | 125 | `result-track:b8612571a20fd60ecc9b82ae2d372813907f16944743d158027350b17023055a` |
| 8 | `theorem` | [HasFDerivAt.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivat-of-comp-of-isembedding--8e1a3b8a3fe6b7bd304f4c0a.md) | 134 | `result-track:8e1a3b8a3fe6b7bd304f4c0a3707614f0102a9e84c19f4acc736fd0d381120ca` |
| 9 | `theorem` | [HasStrictFDerivAt.of_comp_of_isEmbedding](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasstrictfderivat-of-comp-of-isembedding--3296f3d59ea4b3aab13a2c6e.md) | 143 | `result-track:3296f3d59ea4b3aab13a2c6e61d38eb69fa3dabac72dd13e09f3bf57397f9455` |
| 10 | `theorem` | [HasFDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivat-of-local-left-inverse--8e002e484338b10adbf70804.md) | 165 | `result-track:8e002e484338b10adbf70804ffcdd6b8511fbe044850675ca93e77351d4130e2` |
| 11 | `theorem` | [HasFDerivWithinAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasfderivwithinat-of-local-left-inverse--f19fccfe9a109d61e5df5f0f.md) | 178 | `result-track:f19fccfe9a109d61e5df5f0fd3a1fb3320d03278f23444727182690679b145e1` |
| 12 | `theorem` | [HasStrictFDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/hasstrictfderivat-of-local-left-inverse--33f5f3ac61cdc118d38b78f0.md) | 191 | `result-track:33f5f3ac61cdc118d38b78f0905ad0aa7f0ad173e8f6f47422f68faf3b561701` |
| 13 | `theorem` | [OpenPartialHomeomorph.hasStrictFDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/openpartialhomeomorph-hasstrictfderivat-symm--5e26f4940e9174da472f143c.md) | 203 | `result-track:5e26f4940e9174da472f143c101f16a207aa25135bdab4d15bcf2070604c9dbc` |
| 14 | `theorem` | [OpenPartialHomeomorph.hasFDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/declarations/openpartialhomeomorph-hasfderivat-symm--97a3f078b3dbe80618d5251e.md) | 214 | `result-track:97a3f078b3dbe80618d5251e514107b7557ed8ff80dc37c741f9562fec5faec6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
