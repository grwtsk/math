# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5889ab1e48ab292e4f3727c11156fcc382e08ac5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5889ab1e48ab292e4f3727c11156fcc382e08ac5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/smulzeroclass--7104b8b387459c1d198cc2db.md) | 42 | `declaration-track:7104b8b387459c1d198cc2db1a4047a16d0a0a34389cbc9a04cf0482fe621139` |
| 2 | `instance` | [smulZeroClass'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/smulzeroclass--0c875812cdd40f04fe2e8e53.md) | 46 | `declaration-track:0c875812cdd40f04fe2e8e53ff65b7ce86ab1b111cbceb5c2be1d8bd76e2be36` |
| 3 | `instance` | [distribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/distribsmul--fcd41a098a4e7a3e0e5ceec1.md) | 50 | `declaration-track:fcd41a098a4e7a3e0e5ceec1b93fea33855ae6e04b398837490e41cb150b71fc` |
| 4 | `instance` | [distribSMul'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/distribsmul--fd2fd97b7fee0fcfbc7b5c60.md) | 55 | `declaration-track:fd2fd97b7fee0fcfbc7b5c6017872f0d87bb89f15aa03d5a52d62999e7437b5e` |
| 5 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/distribmulaction--9cbe212b76172a11ddfafefb.md) | 61 | `declaration-track:9cbe212b76172a11ddfafefb9bdc26c4324f219d8904f45d998456715554011a` |
| 6 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/distribmulaction--7a80d204ae7923cfc2184f99.md) | 65 | `declaration-track:7a80d204ae7923cfc2184f99f940648e44e9a3b15a4cc0de7656933f7c65ea43` |
| 7 | `theorem` | [single_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/single-smul--d1d59df7fdedf189e7551bbe.md) | 70 | `result-track:d1d59df7fdedf189e7551bbe4ee46f547e702e7c35c9706c153ecec155b3749f` |
| 8 | `theorem` | [single_smul'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/single-smul--ea41bcf0e8f6c50484d7f40e.md) | 77 | `result-track:ea41bcf0e8f6c50484d7f40e8712a0ad9736c76326371c86130f213dd47f8a1a` |
| 9 | `theorem` | [single_smul₀](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/single-smul--c83d0a53d30e8036656dc9ca.md) | 81 | `result-track:c83d0a53d30e8036656dc9ca5338c9ff2b34eff2a9e78205e43a47531afeb7ae` |
| 10 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/muldistribmulaction--964eefad4fa7788c3dd499ef.md) | 86 | `declaration-track:964eefad4fa7788c3dd499efc101ab00fff44a9273bfef9122e574612104f5b4` |
| 11 | `instance` | [mulDistribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantae2a0648c2b51fc7b45b0b0a734adf6ca5aa90251893d61f7cb49852b3fb65eb.lean/declarations/muldistribmulaction--2467b92c09c9c410470830c5.md) | 93 | `declaration-track:2467b92c09c9c410470830c5ba91233fcac992f36ffac709fe7ad299de973e28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
