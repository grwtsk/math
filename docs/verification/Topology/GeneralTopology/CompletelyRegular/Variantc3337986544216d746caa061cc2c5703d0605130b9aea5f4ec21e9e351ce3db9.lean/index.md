# Verification target: GRWTSK.Topology.GeneralTopology.CompletelyRegular.Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78757f98f10a2a14fa36649f4aa13d5a11650a99`.

Source path: `GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Indicator` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace--ea5dfb1edd09120695111d45.md) | 70 | `declaration-track:ea5dfb1edd09120695111d4599cd66aacb6b58b3eb9d09ed18d941ebeca7be5c` |
| 2 | `lemma` | [completelyRegularSpace_iff_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-iff-isopen--c27175f051c7a3c84cc2ce7a.md) | 74 | `result-track:c27175f051c7a3c84cc2ce7ad2cfb1eda81a2c35eaa4c8bc5f71e174740c2195` |
| 3 | `lemma` | [CompletelyRegularSpace.completely_regular_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-completely-regular-isopen--79dccc9cac525f67ecb68217.md) | 81 | `result-track:79dccc9cac525f67ecb682171bca4b156f91ce7562202e046bd329a7e69821a5` |
| 4 | `instance` | [CompletelyRegularSpace.instRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-instregularspace--fbc67f6cd0a1c1f45bdc7e60.md) | 86 | `declaration-track:fbc67f6cd0a1c1f45bdc7e60c9554dac1ea150e0c0b1c557523fea7d854bedc3` |
| 5 | `instance` | [NormalSpace.instCompletelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/normalspace-instcompletelyregularspace--727fcd70af15f9ccb4ed8482.md) | 95 | `declaration-track:727fcd70af15f9ccb4ed8482729d5568adef9eb1d085a435ae765ead0d4860af` |
| 6 | `lemma` | [Topology.IsInducing.completelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/topology-isinducing-completelyregularspace--a42de599c729c4da9fa1eb14.md) | 111 | `result-track:a42de599c729c4da9fa1eb14bdc3c507958b45a407d6367a4581b6371a0e4a59` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/instance--cb35eb7657c6cb63c1916ec5.md) | 123 | `declaration-track:cb35eb7657c6cb63c1916ec5e034f1794aaaaba0b4e9b84144c49f4d1371c864` |
| 8 | `lemma` | [completelyRegularSpace_induced](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-induced--7b967eda7e8d89bc6c9fdeb9.md) | 126 | `result-track:7b967eda7e8d89bc6c9fdeb91b2ff42dfdb9a09ef91b8cec72fa9636ccd75804` |
| 9 | `lemma` | [completelyRegularSpace_iInf](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-iinf--e44183e9168e0423fa1877cc.md) | 131 | `result-track:e44183e9168e0423fa1877cc17f9231430ff6ff79b12142236ce52cdb07b1535` |
| 10 | `lemma` | [completelyRegularSpace_inf](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-inf--43cf8ca92bafab54a2fd7651.md) | 155 | `result-track:43cf8ca92bafab54a2fd7651ce0b17715ce331aacc5343d1749728916e34a57c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/instance--55afb9f464a604ea480a52c3.md) | 160 | `declaration-track:55afb9f464a604ea480a52c31bf10088d588a74fd0a6e7d8ef54e7460a364ea2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/instance--f6f184d1dd26498926b89f6a.md) | 164 | `declaration-track:f6f184d1dd26498926b89f6a378d99e97f34b5427c98cb3d4da4ab68d5b59273` |
| 13 | `lemma` | [isInducing_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/isinducing-stonecechunit--e5d458dca68536ed1d86af61.md) | 170 | `result-track:e5d458dca68536ed1d86af619014496a5a2210d3314b1165bfc76813791b8201` |
| 14 | `lemma` | [isDenseInducing_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/isdenseinducing-stonecechunit--376077ca29095f9fe2335aaa.md) | 187 | `result-track:376077ca29095f9fe2335aaac86aea433f7da782cf11acb947d2cdfbf047b72e` |
| 15 | `lemma` | [completelyRegularSpace_iff_isInducing_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-iff-isinducing-stonecechunit--082463a22347c415ca3ad2f0.md) | 192 | `result-track:082463a22347c415ca3ad2f0da2000da3a6ef0affcb1e56f6ff60f679b7629e3` |
| 16 | `theorem` | [CompletelyRegularSpace.of_isTopologicalBasis_clopens](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-of-istopologicalbasis-clopens--ecd6eca5b680e69b456fef8f.md) | 197 | `result-track:ecd6eca5b680e69b456fef8f55eb7e05dff3c9673efeb5ad47ab19680a7f582b` |
| 17 | `theorem` | [CompletelyRegularSpace.isTopologicalBasis_clopens_of_cardinalMk_lt_continuum](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/completelyregularspace-istopologicalbasis-clopens-of-cardinalmk-lt-conti--ae2c7f305ee85ca6f5798c98.md) | 207 | `result-track:ae2c7f305ee85ca6f5798c9811861c999897af6677e8107e17d7eb99edfe1822` |
| 18 | `class` | [T35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/t35space--252a95007442b24ff4dbaeee.md) | 228 | `declaration-track:252a95007442b24ff4dbaeeed9d4e0f80ff00f7aca1d0e038eadc0521dcfe0f9` |
| 19 | `instance` | [T35Space.instT3space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/t35space-instt3space--287e938854436c26bc275f05.md) | 230 | `declaration-track:287e938854436c26bc275f05f3cd2a14ddf069a93e59f81f2b1a3565c10edca1` |
| 20 | `instance` | [T4Space.instT35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/t4space-instt35space--929869edf18d61fc7871c9e3.md) | 232 | `declaration-track:929869edf18d61fc7871c9e3d46cf8370938dd44e54d5408ee0ccbc54c7be245` |
| 21 | `lemma` | [Topology.IsEmbedding.t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/topology-isembedding-t35space--23df19503c674b77f4f3535e.md) | 234 | `result-track:23df19503c674b77f4f3535ef1c117d49995231586a77dd2beaebb386cb7590e` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/instance--afd8cb6c026e4312657e5b3c.md) | 239 | `declaration-track:afd8cb6c026e4312657e5b3c5dd3cde728d2c6188dc44277814c2934b858116b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/instance--d0c7e72b2eff1185f7c5ab8b.md) | 241 | `declaration-track:d0c7e72b2eff1185f7c5ab8bd082a766fdf5c4877aa2d906ed6d97f81155c7d1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/instance--940c83c257f0a8100cbce4c5.md) | 244 | `declaration-track:940c83c257f0a8100cbce4c55576295e62dfd2ff394776efb1a7d7f5faa387ba` |
| 25 | `lemma` | [separatesPoints_continuous_of_t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/separatespoints-continuous-of-t35space--3405f1862acaa82771d96d27.md) | 247 | `result-track:3405f1862acaa82771d96d27e2f1eeb312d3797ac2d45269c9f3731c8838ff26` |
| 26 | `lemma` | [separatesPoints_continuous_of_t35Space_Icc](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/separatespoints-continuous-of-t35space-icc--e5ea310b6b4f422bd0aa66c4.md) | 254 | `result-track:e5ea310b6b4f422bd0aa66c4878531f4621ebe262a2d4e9430fe4500ca67d0d3` |
| 27 | `lemma` | [injective_stoneCechUnit_of_t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/injective-stonecechunit-of-t35space--9a9da3c9bdb31d56c5c8b2eb.md) | 261 | `result-track:9a9da3c9bdb31d56c5c8b2eb6b66de858c3322a471a9243c2e01b03944bb6f85` |
| 28 | `lemma` | [isEmbedding_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/isembedding-stonecechunit--1df60ca9d3c62f6f8a5cf7ab.md) | 268 | `result-track:1df60ca9d3c62f6f8a5cf7abe2c54121dd56b61bb4f7bc8612cff21eaa2c7401` |
| 29 | `lemma` | [isDenseEmbedding_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/isdenseembedding-stonecechunit--2ead4d38cd5b5e22d53595cb.md) | 273 | `result-track:2ead4d38cd5b5e22d53595cb62486a589427c30b349eba4460b6eb1c0a955e84` |
| 30 | `lemma` | [t35Space_iff_isEmbedding_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/declarations/t35space-iff-isembedding-stonecechunit--cce8846b494900d119a29313.md) | 278 | `result-track:cce8846b494900d119a2931366d9b53d99ac9d70cd9c5341509bb16b6684aa9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
