# Verification target: GRWTSK.Topology.GeneralTopology.FloorPow.Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "727ec07b1953f85544a65afbbd5ebacb8b85cbd5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `727ec07b1953f85544a65afbbd5ebacb8b85cbd5`.

Source path: `GRWTSK/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean.json)

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
| 1 | `theorem` | [tendsto_div_of_monotone_of_exists_subseq_tendsto_div](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/declarations/tendsto-div-of-monotone-of-exists-subseq-tendsto-div--5fa110a1fd4faea3f25cc65b.md) | 39 | `result-track:5fa110a1fd4faea3f25cc65bb0b858f0699dc8543656ad76645091ddeb1dc328` |
| 2 | `theorem` | [tendsto_div_of_monotone_of_tendsto_div_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/declarations/tendsto-div-of-monotone-of-tendsto-div-floor-pow--8a0d57c9cebc835d08df180b.md) | 190 | `result-track:8a0d57c9cebc835d08df180b1469502dd7de59c778d9340ee8b3f34b57c6c0a6` |
| 3 | `theorem` | [sum_div_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/declarations/sum-div-pow-sq-le-div-sq--998924d2c82c764fcc217ce9.md) | 222 | `result-track:998924d2c82c764fcc217ce98e75ee8efa089cd8d1afb9712a7510fbf6b057eb` |
| 4 | `theorem` | [mul_pow_le_nat_floor_pow](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/declarations/mul-pow-le-nat-floor-pow--e3c3abb3a3ec27cfed87340c.md) | 266 | `result-track:e3c3abb3a3ec27cfed87340cb839544e16b75a95dc964ae71a27219c0fec8d84` |
| 5 | `theorem` | [sum_div_nat_floor_pow_sq_le_div_sq](../../../../../mathematics/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/declarations/sum-div-nat-floor-pow-sq-le-div-sq--43e755c84b7d1dfea34f8078.md) | 279 | `result-track:43e755c84b7d1dfea34f8078134300ec2e22f6bfbce5e9d51b05cb8cf097a35f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
