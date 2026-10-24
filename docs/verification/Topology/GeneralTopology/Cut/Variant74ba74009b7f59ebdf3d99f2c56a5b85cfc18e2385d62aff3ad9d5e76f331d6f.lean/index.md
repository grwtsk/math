# Verification target: GRWTSK.Topology.GeneralTopology.Cut.Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b2093b3f01e5fcfbd3e6e0fe85a4a0ce1fa1ddd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b2093b3f01e5fcfbd3e6e0fe85a4a0ce1fa1ddd`.

Source path: `GRWTSK/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeightConvention](../../../../../mathematics/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean/declarations/heightconvention--de585bb62d9c1078a4f69be0.md) | 21 | `declaration-track:de585bb62d9c1078a4f69be0557a3e642c4ffcd2742766895754e6390d80dbc8` |
| 2 | `structure` | [CriticalStripCut](../../../../../mathematics/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean/declarations/criticalstripcut--14ece881af42c703ffb66687.md) | 26 | `declaration-track:14ece881af42c703ffb66687b4e81af9d8519f7c9e9d6dd5598d0679025b9e4b` |
| 3 | `def` | [CriticalStripCut.owns](../../../../../mathematics/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean/declarations/criticalstripcut-owns--b98a137838c983877a087290.md) | 48 | `declaration-track:b98a137838c983877a087290eadadb3c53193d690e4c283dee09673bb28c6439` |
| 4 | `def` | [CriticalStripCut.boundaryOwned](../../../../../mathematics/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean/declarations/criticalstripcut-boundaryowned--4758b47f4a0c6adffa80ded2.md) | 56 | `declaration-track:4758b47f4a0c6adffa80ded2c92fd5225616e8580bc4cb1dba826931d06d482b` |
| 5 | `theorem` | [CriticalStripCut.boundaryOwned_sound](../../../../../mathematics/Topology/GeneralTopology/Cut/Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f.lean/declarations/criticalstripcut-boundaryowned-sound--28a145331072d103f64e0895.md) | 68 | `result-track:28a145331072d103f64e089598ad114e538503c69e71b1e9f38653050aa71715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
