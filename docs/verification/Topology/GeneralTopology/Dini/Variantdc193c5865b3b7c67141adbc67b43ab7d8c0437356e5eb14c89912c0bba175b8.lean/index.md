# Verification target: GRWTSK.Topology.GeneralTopology.Dini.Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1`.

Source path: `GRWTSK/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompactConvergence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendstoLocallyUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstolocallyuniformly-of-forall-tendsto--32bbb3918b79ca26b5df2c5c.md) | 48 | `result-track:32bbb3918b79ca26b5df2c5ce407f6ab92d8f272b40485cab568ebee61f4c13b` |
| 2 | `lemma` | [tendstoLocallyUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstolocallyuniformlyon-of-forall-tendsto--afcc1deec322a6acaaba9592.md) | 71 | `result-track:afcc1deec322a6acaaba95921fc37e6f4b15b357f20656a006b101e3189ab719` |
| 3 | `lemma` | [tendstoUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstouniformly-of-forall-tendsto--b2611986fb7815d0dde44c0b.md) | 82 | `result-track:b2611986fb7815d0dde44c0b91588404be3af13d53c1cffa8f55fd39ef22d119` |
| 4 | `lemma` | [tendstoUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstouniformlyon-of-forall-tendsto--1f42ce30f3e34c2f8f2b47d7.md) | 91 | `result-track:1f42ce30f3e34c2f8f2b47d72652d310d89afe9134e645f9705cd65395751e44` |
| 5 | `lemma` | [tendstoLocallyUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstolocallyuniformly-of-forall-tendsto--cdd578e9ca47f034ce388d74.md) | 104 | `result-track:cdd578e9ca47f034ce388d749ae333191f097621d2ea6118607e783ef14f6645` |
| 6 | `lemma` | [tendstoLocallyUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstolocallyuniformlyon-of-forall-tendsto--b35e6990ec6a8e1b3a67f830.md) | 113 | `result-track:b35e6990ec6a8e1b3a67f8302114779929de1f5857c0675913ea3dda31ebac41` |
| 7 | `lemma` | [tendstoUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstouniformly-of-forall-tendsto--96702bfdfd8b95792f24799e.md) | 122 | `result-track:96702bfdfd8b95792f24799e38d94fccd86e4ba7332f50e73f8ff4efd4c242dc` |
| 8 | `lemma` | [tendstoUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendstouniformlyon-of-forall-tendsto--494addbd99150bcfe3477368.md) | 129 | `result-track:494addbd99150bcfe3477368fb1676dc5e178d671de3e721c7842b53531825f0` |
| 9 | `lemma` | [tendsto_of_monotone_of_pointwise](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendsto-of-monotone-of-pointwise--f9ca4124fa4c9264bbcf6b2c.md) | 146 | `result-track:f9ca4124fa4c9264bbcf6b2c15b342edaaf378b95ecca899bf5918886d0f2695` |
| 10 | `lemma` | [tendsto_of_antitone_of_pointwise](../../../../../mathematics/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/declarations/tendsto-of-antitone-of-pointwise--5468a9f27bee48686f4ba142.md) | 155 | `result-track:5468a9f27bee48686f4ba142da80543736bd4c74056468d213957f3725e7ea52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
