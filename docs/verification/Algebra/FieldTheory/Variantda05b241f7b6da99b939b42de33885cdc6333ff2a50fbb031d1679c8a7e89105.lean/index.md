# Verification target: GRWTSK.Algebra.Field.Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7090ac26b2343e8e343d985ba7ebba5de9983c06",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7090ac26b2343e8e343d985ba7ebba5de9983c06`.

Source path: `GRWTSK/Algebra/Field/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FieldTheory/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean/declarations/instance--578b503d714f26e10774caf7.md) | 20 | `declaration-track:578b503d714f26e10774caf71a2aeb7aaa79da8318129f038737c68fe677994d` |
| 2 | `theorem` | [mod_eq](../../../../mathematics/Algebra/FieldTheory/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean/declarations/mod-eq--3b59812e649841fca61ed338.md) | 33 | `result-track:3b59812e649841fca61ed338a3d3c63b6222861d20142086aca5d159cd892512` |
| 3 | `theorem` | [gcd_eq](../../../../mathematics/Algebra/FieldTheory/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean/declarations/gcd-eq--b7a2f230d34e95943cf3a1f3.md) | 36 | `result-track:b7a2f230d34e95943cf3a1f3c2bc3b22a446ddd7849a5b798fb6b697ef9a4529` |
| 4 | `theorem` | [gcd_zero_eq](../../../../mathematics/Algebra/FieldTheory/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean/declarations/gcd-zero-eq--5e752d16bb997ee02c3a9ce0.md) | 41 | `result-track:5e752d16bb997ee02c3a9ce07445599a8e1cd9a1a18da35b98018362336e22da` |
| 5 | `theorem` | [gcd_eq_of_ne](../../../../mathematics/Algebra/FieldTheory/Variantda05b241f7b6da99b939b42de33885cdc6333ff2a50fbb031d1679c8a7e89105.lean/declarations/gcd-eq-of-ne--cfef02a575e6f3bfb30e1201.md) | 45 | `result-track:cfef02a575e6f3bfb30e12014a31b61fbf8898a43e550d140b96604f867333c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
