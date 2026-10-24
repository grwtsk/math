# Verification target: GRWTSK.Algebra.IsField.Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0a69f55c8b70ab9289a1d423c1ba29288496b79",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0a69f55c8b70ab9289a1d423c1ba29288496b79`.

Source path: `GRWTSK/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsField](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/isfield--9abca3dd1048af459216aed5.md) | 29 | `declaration-track:9abca3dd1048af459216aed5587b3c862581075d2840ade733ea5a78ad87e2f9` |
| 2 | `theorem` | [Semifield.toIsField](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/semifield-toisfield--09ffc3ad52fd3e623ddec974.md) | 38 | `result-track:09ffc3ad52fd3e623ddec974386c838565d496600beae23e20e3d186fe56173a` |
| 3 | `theorem` | [Field.toIsField](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/field-toisfield--d90b305cd9a6dac8ca77b688.md) | 43 | `result-track:d90b305cd9a6dac8ca77b6889388f991e3133ba792a8fe27313737ccaee0fc81` |
| 4 | `theorem` | [IsField.nontrivial](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/isfield-nontrivial--a60cce86a5d05c0e2da72725.md) | 47 | `result-track:a60cce86a5d05c0e2da72725069bb80cb055cffaf10e3593d452532aa52ddec7` |
| 5 | `theorem` | [not_isField_of_subsingleton](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/not-isfield-of-subsingleton--45246e0d38aa253cfa31ad0e.md) | 51 | `result-track:45246e0d38aa253cfa31ad0ecdbd84713da7b3e42faa54959fad19a47b0f1200` |
| 6 | `def` | [IsField.toSemifield](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/isfield-tosemifield--7330b1d01e007433897312cd.md) | 58 | `declaration-track:7330b1d01e007433897312cd2de9d21dd12b4dbde147ec3989bd5eb9d23b7e75` |
| 7 | `def` | [IsField.toField](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/isfield-tofield--43d70b3f9493dbb634dfe370.md) | 68 | `declaration-track:43d70b3f9493dbb634dfe370cdcf6f8235712d905025b189e3b8031b6c27f8ec` |
| 8 | `theorem` | [uniq_inv_of_isField](../../../../mathematics/Algebra/IsField/Variant0509deaf3076e2e46b7dca4dcb18b0bfd5c51c1cdd2b1436def64c93c83b9d7a.lean/declarations/uniq-inv-of-isfield--6002c990b1d76f29abc33ae7.md) | 78 | `result-track:6002c990b1d76f29abc33ae75ec9eb8b4210b8ba07bf364453ad9aff5b21e847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
