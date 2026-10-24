# Verification target: GRWTSK.Topology.Alexandrov.Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51ab0966492e7a0dfed9f6a9e4b57a18bc3282ac",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/index.md) · [Full source](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51ab0966492e7a0dfed9f6a9e4b57a18bc3282ac`.

Source path: `GRWTSK/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [principalOpen](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/principalopen--e55faeb7c12b76ab9c23bb36.md) | 50 | `declaration-track:e55faeb7c12b76ab9c23bb3698cd88553ccea9d48949d63c70b7b6fa9ee62463` |
| 2 | `lemma` | [self_mem_principalOpen](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/self-mem-principalopen--b30ebc2330392f49d834bb6f.md) | 55 | `result-track:b30ebc2330392f49d834bb6ff06d7bd964d9cf30a04fd8b9517317eb05a306a1` |
| 3 | `lemma` | [principalOpen_le_iff](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/principalopen-le-iff--a1f56c10af1d5bfa2401296b.md) | 58 | `result-track:a1f56c10af1d5bfa2401296bca0d2052ea6f7c24cdb8d5371c07b8c552fc0d08` |
| 4 | `lemma` | [principalOpen_le](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/principalopen-le--466807af4a64b2c876c31ffb.md) | 65 | `result-track:466807af4a64b2c876c31ffbaa28636f7d15cd0026c81aed249233651d6d873c` |
| 5 | `def` | [principals](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/principals--752bab493e9b177fbf511993.md) | 72 | `declaration-track:752bab493e9b177fbf5119930699f0daa95ba722d2f762549b20bedce39800af` |
| 6 | `lemma` | [exists_le_of_le_sup](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/exists-le-of-le-sup--a2f6c60e6bac896a15d077d9.md) | 76 | `result-track:a2f6c60e6bac896a15d077d9ce4e4351e734a634a1b2483ce941b8e3e6a3e0ac` |
| 7 | `abbrev` | [principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/principalskanextension--d584e1772988dd6e73d183ad.md) | 82 | `declaration-track:d584e1772988dd6e73d183ad75231373e8623d784a32c622204d5af1c44e8e60` |
| 8 | `abbrev` | [generator](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/generator--0b63c421b3cb3a7a108dd338.md) | 87 | `declaration-track:0b63c421b3cb3a7a108dd338cd5ab7faadb51cceae48562362f7acec2f67d8c5` |
| 9 | `def` | [projSup](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/projsup--98d7ff234ff74cd54ea7d121.md) | 99 | `declaration-track:98d7ff234ff74cd54ea7d1219f837caee196bbe8a236ffde1445328f8dd3c888` |
| 10 | `def` | [lowerCone](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/lowercone--a815fd3342c525edac7c5c2e.md) | 110 | `declaration-track:a815fd3342c525edac7c5c2e2a61c821815db41c79ad2a9185c5fd88a975b646` |
| 11 | `def` | [isLimit](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/islimit--0729da22e1e2a396ef99795b.md) | 145 | `declaration-track:0729da22e1e2a396ef99795be935a020442444d1832bedfd7a2f672603972bf3` |
| 12 | `theorem` | [isSheaf_principalsKanExtension](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/issheaf-principalskanextension--c4c76ea9602558457295025e.md) | 179 | `result-track:c4c76ea9602558457295025e349b046d0289c263dadc71cab5bae0b12f9e7646` |
| 13 | `theorem` | [Topology.IsUpperSet.isSheaf_of_isRightKanExtension](../../../../mathematics/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/declarations/topology-isupperset-issheaf-of-isrightkanextension--6d4db47cfc1018264cc35597.md) | 198 | `result-track:6d4db47cfc1018264cc35597e4b939c7e21de3d5ad3249913a841597d7bd8112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
