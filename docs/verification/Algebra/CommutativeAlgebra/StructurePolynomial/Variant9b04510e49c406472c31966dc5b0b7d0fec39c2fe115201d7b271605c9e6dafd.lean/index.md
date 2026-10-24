# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StructurePolynomial.Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ee1ade278846b14868c9cf530dd5e0a4a842b27",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ee1ade278846b14868c9cf530dd5e0a4a842b27`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.WittPolynomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructurerat--93171469f014d15994fc8e6e.md) | 136 | `declaration-track:93171469f014d15994fc8e6ef2a69113c1566ffaa9d4b8fc4bc1033f75b2e74d` |
| 2 | `theorem` | [wittStructureRat_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructurerat-prop--f0628f0402a76a7c9faee1d5.md) | 140 | `result-track:f0628f0402a76a7c9faee1d5d0cf226fef4eb40cfc74f97c71533726f971e6b3` |
| 3 | `theorem` | [wittStructureRat_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructurerat-existsunique--3b147aa6aeaa331ac1c30f9a.md) | 151 | `result-track:3b147aa6aeaa331ac1c30f9a1408498716749360c82d8c1cdd96a125ba8aae88` |
| 4 | `theorem` | [wittStructureRat_rec_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructurerat-rec-aux--f419ff484455ab892725d11d.md) | 164 | `result-track:f419ff484455ab892725d11dc67c48b394659a8d631d69175a2b5e92f21cff92` |
| 5 | `theorem` | [wittStructureRat_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructurerat-rec--9b5c95c0da75f0596df1a1ac.md) | 179 | `result-track:9b5c95c0da75f0596df1a1acaacb3f2857d47cff6b1667fe71ec569401cd7d9a` |
| 6 | `def` | [wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructureint--1f2b6faa8b3b615cd5ad7d2b.md) | 203 | `declaration-track:1f2b6faa8b3b615cd5ad7d2b926a538d5889e82c8d4e80fa5d0e1b3da031208b` |
| 7 | `theorem` | [bind₁_rename_expand_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/bind-rename-expand-wittpolynomial--694e2ad6455dfee309eb469b.md) | 209 | `result-track:694e2ad6455dfee309eb469b71f7515a84759c91c528ead26899a57ba60bd948` |
| 8 | `theorem` | [C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/c-p-pow-dvd-bind-rename-wittpolynomial-sub-sum--bbda0f61b2b0f07750a67fa5.md) | 229 | `result-track:bbda0f61b2b0f07750a67fa57989d30a27f54edd98bed7dcd679b7b221914f3d` |
| 9 | `theorem` | [map_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/map-wittstructureint--7ef88bb4170a9355c85e1d1a.md) | 276 | `result-track:7ef88bb4170a9355c85e1d1a692deb40edc403d8d472f1e889fe3c3666da7ebc` |
| 10 | `theorem` | [wittStructureInt_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructureint-prop--59cfd4e97334eb7df861a867.md) | 303 | `result-track:59cfd4e97334eb7df861a8678f28bd98e3ab5258b901ab1ea0eeca61e941ac9f` |
| 11 | `theorem` | [eq_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/eq-wittstructureint--2856818d2b52fee522de6bcb.md) | 312 | `result-track:2856818d2b52fee522de6bcb6b10784e2bc6fa039460cf81a389056d96212864` |
| 12 | `theorem` | [wittStructureInt_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructureint-existsunique--ff3eedd5c0d88ea89419b559.md) | 330 | `result-track:ff3eedd5c0d88ea89419b559faa06f321c9d8997989331ab71cb3e0a050a0846` |
| 13 | `theorem` | [witt_structure_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/witt-structure-prop--2a5942d6c2c33982280348f9.md) | 337 | `result-track:2a5942d6c2c33982280348f9aad270deef49ce036899b12edffb1d221b00a7b3` |
| 14 | `theorem` | [wittStructureInt_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructureint-rename--3b28a16c7f510ad516ca0fdf.md) | 347 | `result-track:3b28a16c7f510ad516ca0fdfe9916e8c73a53b2a058f3380b41e56c0f8d63b20` |
| 15 | `theorem` | [constantCoeff_wittStructureRat_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/constantcoeff-wittstructurerat-zero--54d354eeb8c4447e4df89eb6.md) | 356 | `result-track:54d354eeb8c4447e4df89eb6a812b70ab0c355ca6bf135d40c2e25be5a3c365b` |
| 16 | `theorem` | [constantCoeff_wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/constantcoeff-wittstructurerat--76809b173625e01489a6c5d8.md) | 363 | `result-track:76809b173625e01489a6c5d8eca30d5678868c97a7fbe0d8ceb57098ed300ce8` |
| 17 | `theorem` | [constantCoeff_wittStructureInt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/constantcoeff-wittstructureint-zero--009feaa005f288ee064482be.md) | 371 | `result-track:009feaa005f288ee064482be28756a27833f41b6410ba48f2cfa105be645cd0f` |
| 18 | `theorem` | [constantCoeff_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/constantcoeff-wittstructureint--f51465393dc3708ab0630a8d.md) | 379 | `result-track:f51465393dc3708ab0630a8dba1164e35163084756fac2f62b87cb3707ef9666` |
| 19 | `theorem` | [wittStructureRat_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructurerat-vars--2fd8382dfc30bf3bb14e635b.md) | 391 | `result-track:2fd8382dfc30bf3bb14e635b3a31873b87f28c96a3126be4be931f39ed81caa7` |
| 20 | `theorem` | [wittStructureInt_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variant9b04510e49c406472c31966dc5b0b7d0fec39c2fe115201d7b271605c9e6dafd.lean/declarations/wittstructureint-vars--ad2f67b0c1b5a759d984d1b0.md) | 407 | `result-track:ad2f67b0c1b5a759d984d1b00c4586066b83ea692c644f611fc1b0966ac60846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
