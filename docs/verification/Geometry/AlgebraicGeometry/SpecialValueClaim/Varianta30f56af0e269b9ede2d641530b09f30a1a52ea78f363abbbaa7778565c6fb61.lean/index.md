# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SpecialValueClaim.Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2b33017d92044f9fabf80e27e691c7424a8b9cd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2b33017d92044f9fabf80e27e691c7424a8b9cd`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.LogicalStatus` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Determinant.Core` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpecialValueClaim](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/declarations/specialvalueclaim--b7b7dc273f9dcea7ae2903ac.md) | 38 | `declaration-track:b7b7dc273f9dcea7ae2903ac57d355a91d5589f02f2bf6ce87b9d2e354650ba9` |
| 2 | `def` | [spec](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/declarations/spec--7f93346095182e35fe01d111.md) | 56 | `declaration-track:7f93346095182e35fe01d111ca3e7fe957ff100e82f81b72b82856cea5929e4c` |
| 3 | `theorem` | [spec_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/declarations/spec-apply--e0805ad3437955e8acef0c9d.md) | 62 | `result-track:e0805ad3437955e8acef0c9d648e46dd4f6d0c928755234ae42a5f3425d2ba05` |
| 4 | `def` | [claim](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/declarations/claim--b8cfe65d22426513116ff652.md) | 69 | `declaration-track:b8cfe65d22426513116ff652a03ed72aa2683e609244294910370526a38494ce` |
| 5 | `theorem` | [certificate](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/declarations/certificate--8a1dcc2ef97c9dcd3974ae8f.md) | 75 | `result-track:8a1dcc2ef97c9dcd3974ae8f2ec6e93a879ec3aad88021b01a2bff12b0ff723c` |
| 6 | `def` | [conditionalCertificate](../../../../../mathematics/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/declarations/conditionalcertificate--df8818f1b09ecb47b259703f.md) | 82 | `declaration-track:df8818f1b09ecb47b259703f83f7583403a1b486260981fdf848c885bfe23777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
