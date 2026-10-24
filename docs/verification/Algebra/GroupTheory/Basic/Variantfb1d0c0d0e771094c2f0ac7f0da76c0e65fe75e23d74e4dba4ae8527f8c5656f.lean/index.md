# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01247252a042f56d84280a9e5c0a9e8990c341db",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01247252a042f56d84280a9e5c0a9e8990c341db`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.WithOne.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instInvolutiveInv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/instinvolutiveinv--27a49d93472dfb4472feca7e.md) | 31 | `declaration-track:27a49d93472dfb4472feca7ec47298158c36d83358e57cedc6c9b09dfd6733ce` |
| 2 | `def` | [coeMulHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/coemulhom--9035465a63c1cfa96d5667b7.md) | 38 | `declaration-track:9035465a63c1cfa96d5667b71d7c1998c60b09706d51b0ccd8fbeb69ede8dbb3` |
| 3 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/lift--ed58ff9a40befc3bbe964788.md) | 50 | `declaration-track:ed58ff9a40befc3bbe964788b40a6b6bfa5cc745330874a0643a481493b45d81` |
| 4 | `theorem` | [lift_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/lift-coe--e8aa0652ec421fb4be57b0c1.md) | 63 | `result-track:e8aa0652ec421fb4be57b0c10637823b839a01ecf73ab23d0a86122f718402a2` |
| 5 | `theorem` | [lift_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/lift-one--c4e4af656295f95e0cea05b7.md) | 67 | `result-track:c4e4af656295f95e0cea05b707ae15986ce3eaa5696cb553d710e74f2faac231` |
| 6 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/lift-unique--a021923c2366cb0998dd224b.md) | 71 | `result-track:a021923c2366cb0998dd224ba74946083435a56776ec58f203ec8b6601eaf0a4` |
| 7 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/map--30fc210ac8c879031de8454b.md) | 84 | `declaration-track:30fc210ac8c879031de8454b239b35d45df1a0680a95b29b1da67c1f73272bfc` |
| 8 | `theorem` | [map_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/map-coe--5233db2ff67cdea259818441.md) | 88 | `result-track:5233db2ff67cdea2598184410c2c519181edf72530bb58de24ec53c1bbf0b01e` |
| 9 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/map-id--c3fb89b06f61e5e489a3ef23.md) | 92 | `result-track:c3fb89b06f61e5e489a3ef23e86383255822da9f230644d173a45b0bdcedd252` |
| 10 | `theorem` | [map_map](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/map-map--72956bd28da59142ebf3cb0d.md) | 97 | `result-track:72956bd28da59142ebf3cb0dd4f334df6485151be525ce4b91585f0b29a4c88a` |
| 11 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/map-comp--472daa08b30b22f6c2ca6dfc.md) | 101 | `result-track:472daa08b30b22f6c2ca6dfc1cb073579d3c3d29aabd4cf1762bf1d3f3cbbfd1` |
| 12 | `def` | [_root_.MulEquiv.withOneCongr](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/root-mulequiv-withonecongr--19a1f9048a029805fad6077d.md) | 106 | `declaration-track:19a1f9048a029805fad6077db7ec0b51ec4f584da0ce317ba57460418ae8dbe6` |
| 13 | `theorem` | [_root_.MulEquiv.withOneCongr_refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/root-mulequiv-withonecongr-refl--c42599b866f374f61b0da90e.md) | 113 | `result-track:c42599b866f374f61b0da90ec36c8e844529d536032a138062e37ec0266f74ee` |
| 14 | `theorem` | [_root_.MulEquiv.withOneCongr_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/root-mulequiv-withonecongr-symm--4a9b2fadb36fe5eae3ea3907.md) | 117 | `result-track:4a9b2fadb36fe5eae3ea3907f406b0545c00b995a5c93b06a813dc4fb64d5116` |
| 15 | `theorem` | [_root_.MulEquiv.withOneCongr_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.lean/declarations/root-mulequiv-withonecongr-trans--4c2698d7668b0183bbbd7135.md) | 122 | `result-track:4c2698d7668b0183bbbd713508833ce5f0157cc645f0822a7d58da095306a2ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
