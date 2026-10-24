# Verification target: GRWTSK.Topology.GeneralTopology.Dini.Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ed32fdb37f0441190e19fde0d0eaad686d5e566",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ed32fdb37f0441190e19fde0d0eaad686d5e566`.

Source path: `GRWTSK/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompactConvergence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendstoLocallyUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstolocallyuniformly-of-forall-tendsto--a34e7524d0472f1fe15e74b5.md) | 56 | `result-track:a34e7524d0472f1fe15e74b5a648531f2e6c269c52889c4c20a8842ac6eb0f9d` |
| 2 | `lemma` | [tendstoLocallyUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstolocallyuniformlyon-of-forall-tendsto--dce60fe912f0b351535c8025.md) | 79 | `result-track:dce60fe912f0b351535c8025f38a8d1aeed725bfa4856badadc334be69c3eba1` |
| 3 | `lemma` | [tendstoUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstouniformly-of-forall-tendsto--55edabc3174afaf554d593dd.md) | 90 | `result-track:55edabc3174afaf554d593ddd5f4461bb12aca14b8eb937dfabb1b58dd12dfbf` |
| 4 | `lemma` | [tendstoUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstouniformlyon-of-forall-tendsto--ad13228a909810473b13216a.md) | 99 | `result-track:ad13228a909810473b13216af436342a2504d02958f633b2c17f7ed957575178` |
| 5 | `lemma` | [tendstoLocallyUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstolocallyuniformly-of-forall-tendsto--a1f285ff6f8a688e4792c07a.md) | 112 | `result-track:a1f285ff6f8a688e4792c07af74a6c3df9438dd56576687ddb7fa76b5a88e917` |
| 6 | `lemma` | [tendstoLocallyUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstolocallyuniformlyon-of-forall-tendsto--efc76f94349d13406a68a21c.md) | 121 | `result-track:efc76f94349d13406a68a21cd743f6953503af21bde0cddd0c085371ed5083a8` |
| 7 | `lemma` | [tendstoUniformly_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstouniformly-of-forall-tendsto--f9d196d604bb413334c6b27a.md) | 130 | `result-track:f9d196d604bb413334c6b27ad9fc38c59681fdf0ae717ff4b28ea7e38c2ba008` |
| 8 | `lemma` | [tendstoUniformlyOn_of_forall_tendsto](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendstouniformlyon-of-forall-tendsto--348e5f8d30c35064fa155e9e.md) | 137 | `result-track:348e5f8d30c35064fa155e9ecfd8679e44adf78e2cda457a1b21013e952e3808` |
| 9 | `lemma` | [tendsto_of_monotone_of_pointwise](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendsto-of-monotone-of-pointwise--2fdc30fa3f0bdf66c7eb6447.md) | 154 | `result-track:2fdc30fa3f0bdf66c7eb6447b234fb286406bdcddd35c3f40ec9aa8e48cdb438` |
| 10 | `lemma` | [tendsto_of_antitone_of_pointwise](../../../../../mathematics/Topology/GeneralTopology/Dini/Variant3992eaff5eea6dea308be22b01c6e6a1847c21d5a12e3201fe13915cee7f569b.lean/declarations/tendsto-of-antitone-of-pointwise--4fbcb96134dfbb04d44fc7c6.md) | 163 | `result-track:4fbcb96134dfbb04d44fc7c6d0c7b38236f8ebc0832bcab753e4882782c8e096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
