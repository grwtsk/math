# Verification target: GRWTSK.Algebra.UniversalAlgebra.SMulWithZero.Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b2f791841f83e82dc7548bc1f08e5c7dbba5071",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b2f791841f83e82dc7548bc1f08e5c7dbba5071`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/smulzeroclass--0967fe1c53f97a7e2d157c6b.md) | 48 | `declaration-track:0967fe1c53f97a7e2d157c6b18bc88534e36359edf520fc86bcb2b687f13b371` |
| 2 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/coe-smul--749cde23dfafe5038f8b2e4d.md) | 60 | `result-track:749cde23dfafe5038f8b2e4dbf9380e41409d875325344e797d49442c59a4e70` |
| 3 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/smul-apply--5343d759d4f5b70033234d96.md) | 63 | `result-track:5343d759d4f5b70033234d96d97ebae20b16ad0535e4137b8880e4a47c0fe6c5` |
| 4 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/instsmulwithzero--89e2ae1b0f2bf544d7128321.md) | 67 | `declaration-track:89e2ae1b0f2bf544d7128321843cd480de8f5410455d11b74e05fce034fef3e1` |
| 5 | `instance` | [distribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/distribsmul--9702c120fa68e377d81441bd.md) | 72 | `declaration-track:9702c120fa68e377d81441bd63586d822116d2f72c189ce5d41d4bd3a8e57432` |
| 6 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/isscalartower--91966180405dd43521c31352.md) | 77 | `declaration-track:91966180405dd43521c3135293d97bf501d5c78af4df3fa0a54114f21862fe1b` |
| 7 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/smulcommclass--3f7390516bbc7e4ae3e2f0e6.md) | 81 | `declaration-track:3f7390516bbc7e4ae3e2f0e6fab079206137ccb207f4ab02e8f6e139be68148d` |
| 8 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/iscentralscalar--3df64f9921557ed614e1301f.md) | 85 | `declaration-track:3df64f9921557ed614e1301fd685ea5da3704853c79f5da5f19abab88ec06a4a` |
| 9 | `theorem` | [support_smul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/support-smul--f46192f2e983a04e754ea118.md) | 91 | `result-track:f46192f2e983a04e754ea1182496ff113584c3285c1db4ee41c80348f5b0f428` |
| 10 | `theorem` | [smul_single](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/smul-single--47325fc42a41b125a6fd42d9.md) | 97 | `result-track:47325fc42a41b125a6fd42d90b13d5c907ebb5b7d5f0b5e09f257ab8b36dcb18` |
| 11 | `theorem` | [mapRange_smul'](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/maprange-smul--364a11af1e553e0002504712.md) | 101 | `result-track:364a11af1e553e000250471273dd150bee57fc432bc1618ef25691f845035ead` |
| 12 | `theorem` | [mapRange_smul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant91284b966fd37c32545842946e2746521cd4632d25b8dfe2b70d0dd5a1a9a6ef.lean/declarations/maprange-smul--45d1592544e1ada158133f03.md) | 107 | `result-track:45d1592544e1ada158133f03d8bd4c6eab29ff574398d219ee906a9e4ba0ad74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
