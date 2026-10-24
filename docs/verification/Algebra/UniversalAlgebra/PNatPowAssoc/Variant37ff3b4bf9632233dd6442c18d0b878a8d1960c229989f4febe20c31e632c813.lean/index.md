# Verification target: GRWTSK.Algebra.UniversalAlgebra.PNatPowAssoc.Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aaa8476fba78ba72c7b64f1ad5956d28e139efe",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aaa8476fba78ba72c7b64f1ad5956d28e139efe`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PNat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PNatPowAssoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/pnatpowassoc--cc30946246db7d5e5777052d.md) | 52 | `declaration-track:cc30946246db7d5e5777052dd511575b0d0f8056297c3a987a3b3a1e412ed12c` |
| 2 | `theorem` | [ppow_add](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/ppow-add--0e2643a0a6e492c2a10c9a4f.md) | 62 | `result-track:0e2643a0a6e492c2a10c9a4f23df258856439cabc98188e890b5f2acc5b4ea86` |
| 3 | `theorem` | [ppow_one](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/ppow-one--b63aee12e95ff7b86b2007b0.md) | 66 | `result-track:b63aee12e95ff7b86b2007b0ebd322851c2fa0527737d99512e9bf0b61c6eb40` |
| 4 | `theorem` | [ppow_mul_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/ppow-mul-assoc--5d85a7ee4e814e21f717ce8c.md) | 69 | `result-track:5d85a7ee4e814e21f717ce8c70e6a51fcaf06f08c46789cf58fd719e96676267` |
| 5 | `theorem` | [ppow_mul_comm](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/ppow-mul-comm--d6bfbe11a1d5345abfbc49f5.md) | 73 | `result-track:d6bfbe11a1d5345abfbc49f5c52659b08ae30a6d4bbe1308a60d2d1d789d7cd9` |
| 6 | `theorem` | [ppow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/ppow-mul--820f571b3f2aff2e8ec22883.md) | 76 | `result-track:820f571b3f2aff2e8ec228836046198b955bdc9830dd8d43e6765bdb9e7f0baf` |
| 7 | `theorem` | [ppow_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/ppow-mul--c84de0e8be071faf1e17f19c.md) | 81 | `result-track:c84de0e8be071faf1e17f19cb3ca1fa8b0f80bbf55c332f5138afc44dca2da0e` |
| 8 | `instance` | [Pi.instPNatPowAssoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/pi-instpnatpowassoc--0ba2d19d6377cca644b737a0.md) | 87 | `declaration-track:0ba2d19d6377cca644b737a0663ec9fb2a8f68d57ed0dfe76c36029be5029b9a` |
| 9 | `instance` | [Prod.instPNatPowAssoc](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/prod-instpnatpowassoc--c863c8af040d317be3d90ae1.md) | 92 | `declaration-track:c863c8af040d317be3d90ae1bd2a05efeb697621c22b87448ac4b86ada407fff` |
| 10 | `theorem` | [ppow_eq_pow](../../../../../mathematics/Algebra/UniversalAlgebra/PNatPowAssoc/Variant37ff3b4bf9632233dd6442c18d0b878a8d1960c229989f4febe20c31e632c813.lean/declarations/ppow-eq-pow--aa6c2d08833e558554c17384.md) | 97 | `result-track:aa6c2d08833e558554c1738466d4cb1145cd6e625e8b571eced3c6ec251dad8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
