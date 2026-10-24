# Verification target: GRWTSK.Algebra.LinearAlgebra.SmithCertificate.Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23ce3de2fb204e802692326e08de25e8b6d0afc3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23ce3de2fb204e802692326e08de25e8b6d0afc3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.DegreeHomology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SmithTorsionCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/declarations/smithtorsioncoordinates--dafc8d48826f38110fe20b0d.md) | 28 | `declaration-track:dafc8d48826f38110fe20b0d603511d69a9d06be055c8a76513035858a24a7be` |
| 2 | `structure` | [DegreeSmithCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/declarations/degreesmithcertificate--11cfdd8fd7708c516f2c03d8.md) | 33 | `declaration-track:11cfdd8fd7708c516f2c03d85e4a6a1585c9e0637de7f9f4b3ecfb329c8df20b` |
| 3 | `theorem` | [torsionOrder_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/declarations/torsionorder-ne-zero--78bcdc5096ac8f67a5aace4e.md) | 76 | `result-track:78bcdc5096ac8f67a5aace4e2267ea5934c040f422cbeb3c2368b5198ee6a31a` |
| 4 | `instance` | [torsionFintype](../../../../../mathematics/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/declarations/torsionfintype--e1a9be7a85d1270117e90941.md) | 83 | `declaration-track:e1a9be7a85d1270117e909412a9ea764b569ac05158467ad9fbfeaa862be001f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
