# Verification target: GRWTSK.Topology.GeneralTopology.Paracompact.Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b1535a9da88bef565020ff5fc790bb9fb76f03",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b1535a9da88bef565020ff5fc790bb9fb76f03`.

Source path: `GRWTSK/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ParacompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/paracompactspace--017524803a6d88774adbe83b.md) | 69 | `declaration-track:017524803a6d88774adbe83bee5e9239dda7e8bdaab85c5074f13bb0ccfc35ac` |
| 2 | `theorem` | [precise_refinement](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/precise-refinement--5ee7bfe1a5d2063329fc15fa.md) | 81 | `result-track:5ee7bfe1a5d2063329fc15fad505e9339a2f0958e478a682c77826dfff4ea94b` |
| 3 | `theorem` | [precise_refinement_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/precise-refinement-set--b221a6c8a2e074a5dc588bbe.md) | 107 | `result-track:b221a6c8a2e074a5dc588bbe075937f37d2843d2d14e3e6eadb6897c062014de` |
| 4 | `theorem` | [ClosedEmbedding.paracompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/closedembedding-paracompactspace--47fb4521ac7b59ce665b90ea.md) | 123 | `result-track:47fb4521ac7b59ce665b90eabb0638678c7c11c240c8ad9afb49843781833e6d` |
| 5 | `theorem` | [Homeomorph.paracompactSpace_iff](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/homeomorph-paracompactspace-iff--707b08ddc9d5e977d16ec4b9.md) | 135 | `result-track:707b08ddc9d5e977d16ec4b95292b115b74fe57ae4e0e6bef2bf23d7e57968d7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/instance--c1c2327f67256afc278ecc47.md) | 144 | `declaration-track:c1c2327f67256afc278ecc47536968655e018735beaab5d45927016c47b6dcab` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/instance--f520a562a22a2bbe82c83e42.md) | 170 | `declaration-track:f520a562a22a2bbe82c83e421f7bd81bb945111bb3d3765b3a5bb93d6e3ec891` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/instance--29cf535ad01ffd3224af0fa4.md) | 175 | `declaration-track:29cf535ad01ffd3224af0fa44efbe3a3b329f7887cbfb7fdcc479ec952e16671` |
| 9 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis-set--f9ec85b2c18f36a6c4a15e50.md) | 204 | `result-track:f9ec85b2c18f36a6c4a15e509f19c2fdc614e04fc6ebef465fa6fe17461d6797` |
| 10 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis--992d22f9ecd5c9aa18e48ba2.md) | 274 | `result-track:992d22f9ecd5c9aa18e48ba245c89defca3143ac911b49faf091e6b7a9701a4b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/instance--200fe51544f05279e0f5ad8f.md) | 287 | `declaration-track:200fe51544f05279e0f5ad8f29e5f7532eae5cbebcd91e9baf2f11e42548421c` |
| 12 | `theorem` | [normal_of_paracompact_t2](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/declarations/normal-of-paracompact-t2--3c774ab35cd22a0b03a3aa9b.md) | 300 | `result-track:3c774ab35cd22a0b03a3aa9b1dbdf2c3b691ac9b9fbcf59123726511bed796e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
