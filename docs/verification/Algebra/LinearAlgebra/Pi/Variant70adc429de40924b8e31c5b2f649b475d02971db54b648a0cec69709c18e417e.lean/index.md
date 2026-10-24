# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afc3f6bbed5f8a9e8cd52922ed8bf2b5618e70f0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afc3f6bbed5f8a9e8cd52922ed8bf2b5618e70f0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_ext](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pi-ext--601cb1e970a5a0dfbf2346a2.md) | 40 | `result-track:601cb1e970a5a0dfbf2346a236e575b678a8d2cce9a3693ee79e852517f75151` |
| 2 | `def` | [piFamily](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily--8f0ccc4903942272398c5ebb.md) | 73 | `declaration-track:8f0ccc4903942272398c5ebb6a3101f7fe85c93150c44487b20b13947cfef76a` |
| 3 | `theorem` | [piFamily_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily-single--0f8990cd59071fe9e4d7acad.md) | 87 | `result-track:0f8990cd59071fe9e4d7acad4aff1c1317eea5bf2a7ba7de2335d6b546774715` |
| 4 | `theorem` | [piFamily_single_left_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily-single-left-apply--185811c05f987c71ab11a679.md) | 103 | `result-track:185811c05f987c71ab11a679de74449006c1918e4699fb00974918cabe033fa7` |
| 5 | `theorem` | [piFamily_single_left](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily-single-left--fdfc5fcc2c7ed6e21ab24318.md) | 111 | `result-track:fdfc5fcc2c7ed6e21ab24318fc07240170f10de6c8819d330c3d770618559ee5` |
| 6 | `theorem` | [piFamily_compLinearMap_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily-complinearmap-lsingle--8255dacd6cc52b30447dbf01.md) | 118 | `result-track:8255dacd6cc52b30447dbf014787e09e02a8ea155a804a70cee6e1e6105ea2b6` |
| 7 | `theorem` | [piFamily_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily-zero--d04313f909605b6728147763.md) | 125 | `result-track:d04313f909605b6728147763e1c5dc172883fa174cbe13a1e1d62edd6fe301c3` |
| 8 | `theorem` | [piFamily_add](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily-add--8905c5f64c9b9cbb1c7c45ed.md) | 130 | `result-track:8905c5f64c9b9cbb1c7c45edda028f50964adfb4c8efcb59dcaec36ff17e8a60` |
| 9 | `theorem` | [piFamily_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily-smul--73619a1c37b3e1817b6e3e7e.md) | 135 | `result-track:73619a1c37b3e1817b6e3e7e9bcc61ad10dcc5edae43edd3013ffc81c9a582cb` |
| 10 | `def` | [piFamilyₗ](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/declarations/pifamily--dd0c7123b7cdbb6f2a1a542b.md) | 151 | `declaration-track:dd0c7123b7cdbb6f2a1a542b54b4d0c2de0d493d5b2ea2b6af586ab1452193cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
