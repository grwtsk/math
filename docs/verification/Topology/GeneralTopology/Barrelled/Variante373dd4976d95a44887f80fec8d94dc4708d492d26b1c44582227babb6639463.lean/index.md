# Verification target: GRWTSK.Topology.GeneralTopology.Barrelled.Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04b275fea6ec14a06b23eea6a8c9f88f8bf0de50",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04b275fea6ec14a06b23eea6a8c9f88f8bf0de50`.

Source path: `GRWTSK/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Baire` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/declarations/barrelledspace--93c705ce2d21987ef6b106c6.md) | 91 | `declaration-track:93c705ce2d21987ef6b106c6b88585c680f4a7630a6117acc118c4247e513c17` |
| 2 | `theorem` | [Seminorm.continuous_of_lowerSemicontinuous](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/declarations/seminorm-continuous-of-lowersemicontinuous--3e3a140ec00606d46f67fa6c.md) | 96 | `result-track:3e3a140ec00606d46f67fa6c3435bc5f73d1f8936cccc58b0bcd30553deadf53` |
| 3 | `theorem` | [Seminorm.continuous_iSup](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/declarations/seminorm-continuous-isup--52d97bf17346002cb856fe84.md) | 101 | `result-track:52d97bf17346002cb856fe84218a1d33456b75661f02871f8da68494a8fc010b` |
| 4 | `instance` | [BaireSpace.instBarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/declarations/bairespace-instbarrelledspace--a87d8fbc3d1067e295c833e5.md) | 122 | `declaration-track:a87d8fbc3d1067e295c833e579c310cd26cfb878c1cd5d74053cb6b8391ec57f` |
| 5 | `theorem` | [banach_steinhaus](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/declarations/banach-steinhaus--560db16fb9754e688331a4c5.md) | 163 | `result-track:560db16fb9754e688331a4c5238d16c7a2ce3835b7fce200acf24ae3cb1c70b8` |
| 6 | `def` | [continuousLinearMapOfTendsto](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variante373dd4976d95a44887f80fec8d94dc4708d492d26b1c44582227babb6639463.lean/declarations/continuouslinearmapoftendsto--352b08b7cc3cd60e98859ccd.md) | 186 | `declaration-track:352b08b7cc3cd60e98859ccd003f34b0c78156b54773f22c03c4b911b4cfd58c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
