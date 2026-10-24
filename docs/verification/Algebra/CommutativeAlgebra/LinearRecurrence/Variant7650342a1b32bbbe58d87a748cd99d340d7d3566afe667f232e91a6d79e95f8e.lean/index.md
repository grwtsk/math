# Verification target: GRWTSK.Algebra.CommutativeAlgebra.LinearRecurrence.Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2beb4f2e24e0ea1788212c52e6bfe10abab4508",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2beb4f2e24e0ea1788212c52e6bfe10abab4508`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRecurrence](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/linearrecurrence--3a713a5b992cc9a21c44904c.md) | 49 | `declaration-track:3a713a5b992cc9a21c44904cdb2c59432a2f6b530d39437392bf89dadcce6134` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/instance--21a40354308dd7a5b4e9c303.md) | 54 | `declaration-track:21a40354308dd7a5b4e9c30308d99b6c91c93285ed8f804165c1b00e0dca82bc` |
| 3 | `def` | [IsSolution](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/issolution--1ed3705a5e3f4242cacd3913.md) | 65 | `declaration-track:1ed3705a5e3f4242cacd391383d3575be814930de34345ae0bf815787a6c3c70` |
| 4 | `def` | [mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/mksol--71f1297a20d87642abfce673.md) | 71 | `declaration-track:71f1297a20d87642abfce6737e36e6fbdfab7adef12f9a40daf7dbfa96389a76` |
| 5 | `theorem` | [is_sol_mkSol](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/is-sol-mksol--bdab410ad9a3476603f238f5.md) | 85 | `result-track:bdab410ad9a3476603f238f5f0c71b63c8c37376914ae070e51adb911f2be4fa` |
| 6 | `theorem` | [mkSol_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/mksol-eq-init--9fbdbfa5736e9e3437203bdc.md) | 92 | `result-track:9fbdbfa5736e9e3437203bdc56211b6099453f2bb70faabfb48b6048e19e1384` |
| 7 | `theorem` | [eq_mk_of_is_sol_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/eq-mk-of-is-sol-of-eq-init--97793a2ef96309b6fabe0caa.md) | 100 | `result-track:97793a2ef96309b6fabe0caab269f7423736f4852d7e03ba2171fc25df6001a1` |
| 8 | `theorem` | [eq_mk_of_is_sol_of_eq_init'](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/eq-mk-of-is-sol-of-eq-init--a31af4d5dc18d066e27efef9.md) | 121 | `result-track:a31af4d5dc18d066e27efef963ae1603527d471ad498396555bbb58931bd6818` |
| 9 | `def` | [solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/solspace--84e96ca6e5a279ea31257830.md) | 127 | `declaration-track:84e96ca6e5a279ea3125783066937d1bb7b1ded542ef9a03600a15921ff47dd3` |
| 10 | `theorem` | [is_sol_iff_mem_solSpace](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/is-sol-iff-mem-solspace--848bcdd6f5cbb88ad96be8dd.md) | 136 | `result-track:848bcdd6f5cbb88ad96be8dd3e4d3af9ab92c9b459bdbe334f8835f36785e31b` |
| 11 | `def` | [toInit](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/toinit--b8d26d41fbbfc645bb028975.md) | 142 | `declaration-track:b8d26d41fbbfc645bb028975ea5742a2581b82f7c923edb9e74483dad27f043f` |
| 12 | `theorem` | [sol_eq_of_eq_init](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/sol-eq-of-eq-init--8f0555312c8a5cc07872e590.md) | 156 | `result-track:8f0555312c8a5cc07872e590ad1b5980fe3e16a311f2378c69761a58eefa26b8` |
| 13 | `def` | [tupleSucc](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/tuplesucc--4bc92276edd609445891a50c.md) | 176 | `declaration-track:4bc92276edd609445891a50c58452155971a24773a23dbf7f5c10cbe46693669` |
| 14 | `theorem` | [solSpace_rank](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/solspace-rank--1fb287560809fc9ae416a98e.md) | 198 | `result-track:1fb287560809fc9ae416a98ec7b898c11f1d0e616950f3bb0db4e3aad1129860` |
| 15 | `def` | [charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/charpoly--12cb5cbe19c8d503efec61d2.md) | 211 | `declaration-track:12cb5cbe19c8d503efec61d23c60d3532cf7029298c71704f09b99d27b136ce5` |
| 16 | `theorem` | [geom_sol_iff_root_charPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/declarations/geom-sol-iff-root-charpoly--2adb9e39b794ab340f10d0cd.md) | 217 | `result-track:2adb9e39b794ab340f10d0cd1279f48703680bd3fc525b6c432d8e3a9869978f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
