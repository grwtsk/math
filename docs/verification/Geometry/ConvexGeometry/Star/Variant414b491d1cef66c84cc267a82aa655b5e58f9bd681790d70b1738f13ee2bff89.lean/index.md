# Verification target: GRWTSK.Geometry.ConvexGeometry.Star.Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6cd79d5f4d8b263aea99d0577185431f251e79b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6cd79d5f4d8b263aea99d0577185431f251e79b`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsStarConvexSet](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset--870735efbd174199feeca9bc.md) | 49 | `declaration-track:870735efbd174199feeca9bc05bd54209721770df90304a0afebd754834f6a53` |
| 2 | `lemma` | [IsStarConvexSet.empty](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-empty--97348f3a172c9aafd77f97f9.md) | 52 | `result-track:97348f3a172c9aafd77f97f9ec472343fb40b9bc8ce81c7e7d37757418d3107f` |
| 3 | `lemma` | [IsStarConvexSet.univ](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-univ--b88b5887cfc3867f14cc33c5.md) | 55 | `result-track:b88b5887cfc3867f14cc33c551a438d70e0227484a572141d846b44d4d095d0a` |
| 4 | `lemma` | [IsStarConvexSet.singleton](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-singleton--1edf5f41653ff0667453789c.md) | 57 | `result-track:1edf5f41653ff0667453789c2d26f51d408666f2f1d09b95c2d25405dc4f66bb` |
| 5 | `lemma` | [IsStarConvexSet.inter](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-inter--873f327f3f4ec95a3eb419eb.md) | 61 | `result-track:873f327f3f4ec95a3eb419eb378902d340ac8779f22e147bfd9a0f1e585fe2b3` |
| 6 | `lemma` | [IsStarConvexSet.union](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-union--d96490394806bf71bcbf14cc.md) | 65 | `result-track:d96490394806bf71bcbf14cc3a43918c43c705f5daab3fff0d03d8c634373fbc` |
| 7 | `lemma` | [IsStarConvexSet.sInter](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-sinter--1355c53e72476283ef25ec2a.md) | 69 | `result-track:1355c53e72476283ef25ec2ad6cf1831c27619c89780576e07eb5e87d09372a9` |
| 8 | `lemma` | [IsStarConvexSet.iInter](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-iinter--b12f6edeb905d17dea67f83b.md) | 73 | `result-track:b12f6edeb905d17dea67f83bb5ad081c2188a601aa3cfaa467535327b681fe5f` |
| 9 | `lemma` | [IsStarConvexSet.iInter₂](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-iinter--7a4bdbdbbf091ef7c13ef9ac.md) | 76 | `result-track:7a4bdbdbbf091ef7c13ef9ac672940657802fba3767c3205de484a60a2a7c7f1` |
| 10 | `lemma` | [IsStarConvexSet.sUnion](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-sunion--7b8d820d18c5331915594907.md) | 80 | `result-track:7b8d820d18c533191559490762112cb99b038970194d3c0823a62d1ce63edbd6` |
| 11 | `lemma` | [IsStarConvexSet.iUnion](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-iunion--cdc74f4833f7ecc5eeea114f.md) | 85 | `result-track:cdc74f4833f7ecc5eeea114fb15c1091d227edc726112a3f8cb73b637c680846` |
| 12 | `lemma` | [IsStarConvexSet.iUnion₂](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-iunion--fcfa73aa8f8e1862fc724dec.md) | 88 | `result-track:fcfa73aa8f8e1862fc724dec6625a53db60ba8bb6d2de86e655ef28e5b15427f` |
| 13 | `lemma` | [IsConvexSet.isStarConvexSet](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isconvexset-isstarconvexset--c62fb03abaaa692c979460dd.md) | 92 | `result-track:c62fb03abaaa692c979460dd67037f2f57847ae86f272ad2cb36eaf98f9330ef` |
| 14 | `lemma` | [IsStarConvexSet.mem](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-mem--a910302a1ba223308ed9e0b4.md) | 95 | `result-track:a910302a1ba223308ed9e0b4953791e4db220e6afadbc4c9196c1b2ba008ad35` |
| 15 | `lemma` | [IsStarConvexSet.preimage](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-preimage--6ea362fd0c25d65c02764f2a.md) | 99 | `result-track:6ea362fd0c25d65c02764f2a89aa062020a76a45fbdf140ece9d3e459eaaf172` |
| 16 | `lemma` | [IsStarConvexSet.image](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-image--dbda272479cb70c5e294b209.md) | 104 | `result-track:dbda272479cb70c5e294b209fb6a8f95a640bed7dc3ecc5339910fa61a2e3084` |
| 17 | `lemma` | [IsStarConvexSet.prod](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-prod--cc28b0c2b924c6d168437766.md) | 109 | `result-track:cc28b0c2b924c6d168437766be0ff15d4b430854f2833fc71719c6660908303a` |
| 18 | `lemma` | [IsStarConvexSet.pi](../../../../../mathematics/Geometry/ConvexGeometry/Star/Variant414b491d1cef66c84cc267a82aa655b5e58f9bd681790d70b1738f13ee2bff89.lean/declarations/isstarconvexset-pi--272e33adc4741a7648aa7086.md) | 114 | `result-track:272e33adc4741a7648aa708699f866dbe52c6242902bca4a11988c1c5e2f33ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
