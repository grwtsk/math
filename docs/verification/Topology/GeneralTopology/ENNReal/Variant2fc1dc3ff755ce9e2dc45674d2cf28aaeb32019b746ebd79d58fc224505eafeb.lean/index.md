# Verification target: GRWTSK.Topology.GeneralTopology.ENNReal.Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb2b790a5ae4d75730726cbb55c6c2ba2c976d96",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb2b790a5ae4d75730726cbb55c6c2ba2c976d96`.

Source path: `GRWTSK/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [limsSup_of_not_isCobounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limssup-of-not-iscobounded--d7f133efc9f1e5c88bca167c.md) | 30 | `result-track:d7f133efc9f1e5c88bca167c08cf47306798214698d049e2fe098fb04a8548c0` |
| 2 | `lemma` | [limsSup_of_not_isBounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limssup-of-not-isbounded--9e04df793d73b386c94b8285.md) | 34 | `result-track:9e04df793d73b386c94b8285e26936480e50fc8e33acd0feacd427f279c01ca1` |
| 3 | `lemma` | [limsInf_of_not_isCobounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsinf-of-not-iscobounded--67580b6c482f194988f6529b.md) | 40 | `result-track:67580b6c482f194988f6529bbf8ee275f74f9826017c2895d042bd4fe0602606` |
| 4 | `lemma` | [limsInf_of_not_isBounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsinf-of-not-isbounded--1767a096b3f59643bf12ba48.md) | 44 | `result-track:1767a096b3f59643bf12ba4886c46eb7c3dd4974d0fc2c7109e6a8dc72b33020` |
| 5 | `lemma` | [limsup_of_not_isCoboundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-of-not-iscoboundedunder--215da360f28a7ed6abd44f8f.md) | 50 | `result-track:215da360f28a7ed6abd44f8f3795de896f52925ad428496317ef3c97acdaac56` |
| 6 | `lemma` | [limsup_of_not_isBoundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-of-not-isboundedunder--68b062269b80a61e3fb87ab0.md) | 54 | `result-track:68b062269b80a61e3fb87ab0d3787faf3f694d700cb777f336a1aaecaacf62df` |
| 7 | `lemma` | [liminf_of_not_isCoboundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/liminf-of-not-iscoboundedunder--de06e2750bf304dfe7df5fb1.md) | 58 | `result-track:de06e2750bf304dfe7df5fb1b6ee2827f86c84b3e68b0a2e6e17fa54800c9418` |
| 8 | `lemma` | [liminf_of_not_isBoundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/liminf-of-not-isboundedunder--c21aa52cbf2f58818aa4fd0a.md) | 62 | `result-track:c21aa52cbf2f58818aa4fd0a445dd8701fb3a94eb1bd1c5142b166058e647c64` |
| 9 | `lemma` | [isBoundedUnder_le_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/isboundedunder-le-toreal--46c944eb4ce2224f55834906.md) | 70 | `result-track:46c944eb4ce2224f5583490636cf2280fd30bce5daec2841d8cf54c6e16bc3f9` |
| 10 | `lemma` | [isBoundedUnder_ge_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/isboundedunder-ge-toreal--b6eb5898fdbcf6181bdfd2fe.md) | 79 | `result-track:b6eb5898fdbcf6181bdfd2feb26f889e3d3f6a95b2299fd6c766ebfee3a04a61` |
| 11 | `lemma` | [isCoboundedUnder_le_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/iscoboundedunder-le-toreal--395e1c575ef8df9f3cfcce44.md) | 88 | `result-track:395e1c575ef8df9f3cfcce442aba291b9479362f49c9e4809ceef22378cc1e72` |
| 12 | `lemma` | [isCoboundedUnder_ge_toReal](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/iscoboundedunder-ge-toreal--588b8336b7693f5389be3b9f.md) | 98 | `result-track:588b8336b7693f5389be3b9f67b7c08cf1a7ad96c37e3eea67bb78b53ad297f8` |
| 13 | `lemma` | [limsSup_of_not_isBounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limssup-of-not-isbounded--d6a9e9ebdfe61cb258fee72f.md) | 112 | `result-track:d6a9e9ebdfe61cb258fee72ff52b2a46e12c6da0ab38c6c7189e868c0145ad14` |
| 14 | `lemma` | [limsInf_of_not_isCobounded](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsinf-of-not-iscobounded--36b332489203758500cf1678.md) | 118 | `result-track:36b332489203758500cf16789b4ec2e5a55de34ddeabaf37821a3435d6826ed8` |
| 15 | `lemma` | [limsup_of_not_isBoundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-of-not-isboundedunder--b05d3e4e6cb4bccdff2b4b60.md) | 122 | `result-track:b05d3e4e6cb4bccdff2b4b6033c8501f2ece3adc30c920ab25e01a47c9fcca0d` |
| 16 | `lemma` | [liminf_of_not_isCoboundedUnder](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/liminf-of-not-iscoboundedunder--29239d557ed28c6cb1472a73.md) | 126 | `result-track:29239d557ed28c6cb1472a73b3c221c38d3cd599a2ee36a7312eb7cb71c50779` |
| 17 | `lemma` | [toReal_liminf](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/toreal-liminf--a6b0a6f08b7b6a5f47cc43ca.md) | 130 | `result-track:a6b0a6f08b7b6a5f47cc43caf07d513df9c85a9e1722e1ffdcd47d6cc797080c` |
| 18 | `lemma` | [toReal_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/toreal-limsup--f0286e16eec69bf116654fd6.md) | 141 | `result-track:f0286e16eec69bf116654fd6a6c7946ee1e792cb6af656a2f59ca766b4d89296` |
| 19 | `theorem` | [eventually_le_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/eventually-le-limsup--554fcb9a573a849a01bd5768.md) | 160 | `result-track:554fcb9a573a849a01bd57686cf7f20d0d03e46ff1d67416a39e6b8032cc1329` |
| 20 | `theorem` | [limsup_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-eq-zero-iff--3ac45c647161962b0cd7b31c.md) | 164 | `result-track:3ac45c647161962b0cd7b31c7380a368252b51fc3913d845ca1585d4c1211c56` |
| 21 | `theorem` | [limsup_const_mul_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-const-mul-of-ne-top--6f2e61b4aaaebea0d7c50f01.md) | 168 | `result-track:6f2e61b4aaaebea0d7c50f018dc21b3b0aac8eadb8e21e232aa2263b2e6b134e` |
| 22 | `theorem` | [limsup_const_mul](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-const-mul--27061e54dfbf99892c871e1b.md) | 184 | `result-track:27061e54dfbf99892c871e1ba1a7f1a3c3255608c2682166619541117e11f752` |
| 23 | `theorem` | [limsup_mul_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-mul-le--ecc753a78706a9fb2b164c20.md) | 205 | `result-track:ecc753a78706a9fb2b164c203d4a82e96afe24721147c0eff444d8f2f282ceef` |
| 24 | `theorem` | [limsup_add_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-add-le--66a4e83b9b3eb1389977cb1d.md) | 213 | `result-track:66a4e83b9b3eb1389977cb1d34ba14d903f871ece7f0de82d85354c56b17f7b5` |
| 25 | `theorem` | [limsup_liminf_le_liminf_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variant2fc1dc3ff755ce9e2dc45674d2cf28aaeb32019b746ebd79d58fc224505eafeb.lean/declarations/limsup-liminf-le-liminf-limsup--e2cad47f7160b4c71eef54fc.md) | 218 | `result-track:e2cad47f7160b4c71eef54fcaa636b519007daf51acb1b2e3aa4e78da5337e00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
