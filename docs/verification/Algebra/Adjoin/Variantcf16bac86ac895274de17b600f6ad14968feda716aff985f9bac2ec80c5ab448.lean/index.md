# Verification target: GRWTSK.Algebra.Adjoin.Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66a7c7a829c695cc67f6f2d2ba2dc6cc8880339c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/index.md) · [Full source](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66a7c7a829c695cc67f6f2d2ba2dc6cc8880339c`.

Source path: `GRWTSK/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aevalEquivField](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/declarations/aevalequivfield--b045a6f203146197adbae8e3.md) | 36 | `declaration-track:b045a6f203146197adbae8e35f70491a6640bfa94db6eeab53b1dba8fc7f46a7` |
| 2 | `theorem` | [aevalEquivField_apply_coe](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/declarations/aevalequivfield-apply-coe--4663ffc5595550e417aad304.md) | 46 | `result-track:4663ffc5595550e417aad304af02450547f522956a0335abb525f89eb96efa00` |
| 3 | `theorem` | [aevalEquivField_algebraMap_apply_coe](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/declarations/aevalequivfield-algebramap-apply-coe--bff1fb4de64fb5e99162b018.md) | 50 | `result-track:bff1fb4de64fb5e99162b01840d5ddebfaf46099fe61acf29264d73f58faca44` |
| 4 | `def` | [reprField](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/declarations/reprfield--f422d1f80472770fa50f03fa.md) | 56 | `declaration-track:f422d1f80472770fa50f03fab46ac163a904318bd76f81d90c58bd392f5a24a0` |
| 5 | `theorem` | [lift_reprField](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/declarations/lift-reprfield--391a91c8d3b4b3fc067e55c5.md) | 60 | `result-track:391a91c8d3b4b3fc067e55c5af16be7fd8447821fc1e2db90715fc56703b0db2` |
| 6 | `theorem` | [liftAlgHom_comp_reprField](../../../../mathematics/Algebra/Adjoin/Variantcf16bac86ac895274de17b600f6ad14968feda716aff985f9bac2ec80c5ab448.lean/declarations/liftalghom-comp-reprfield--d3ca0c7eeb393998fc1f48ce.md) | 64 | `result-track:d3ca0c7eeb393998fc1f48cefe8c65e28c5d143610ff9a644b261ed39b7095a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
