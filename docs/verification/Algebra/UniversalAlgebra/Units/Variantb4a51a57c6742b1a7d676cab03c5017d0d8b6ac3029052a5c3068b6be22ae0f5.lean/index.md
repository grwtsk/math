# Verification target: GRWTSK.Algebra.UniversalAlgebra.Units.Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a03ae7b95e9cb1f7c643637fdecca27604322765",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a03ae7b95e9cb1f7c643637fdecca27604322765`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_mk0](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/smul-mk0--20b26571883a9dcee4346f4d.md) | 35 | `result-track:20b26571883a9dcee4346f4dcce5a1be666fd1d8bfa565b16f442d76b9bf6cee` |
| 2 | `lemma` | [inv_smul_smul₀](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/inv-smul-smul--e2ff37e552a8db700a425d79.md) | 42 | `result-track:e2ff37e552a8db700a425d79e0ed7ec385be9e1ce0c93ac602c020e52ea14369` |
| 3 | `lemma` | [smul_inv_smul₀](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/smul-inv-smul--40d30097f9d9d843f02bacf2.md) | 46 | `result-track:40d30097f9d9d843f02bacf216b4a5e1bc49d6cdf0cc3611ac6f3724e8061273` |
| 4 | `lemma` | [inv_smul_eq_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/inv-smul-eq-iff--6fbedeb3b7571c4494fa74b5.md) | 48 | `result-track:6fbedeb3b7571c4494fa74b5e5fa29f96c6ff81f6d85d0a7ee908e01a365a3df` |
| 5 | `lemma` | [eq_inv_smul_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/eq-inv-smul-iff--0fc0bb35d62d2bf8c23bc2ad.md) | 51 | `result-track:0fc0bb35d62d2bf8c23bc2adbaced558a3abc6dada9ce5cd52b1d5aeeaa3af28` |
| 6 | `lemma` | [Commute.smul_right_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/commute-smul-right-iff--f4cf72ce6f5841fbf4cbcb55.md) | 55 | `result-track:f4cf72ce6f5841fbf4cbcb5532fe0a93acb4fb61391767e930db1efaa0cda4a8` |
| 7 | `lemma` | [Commute.smul_left_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/commute-smul-left-iff--524bcffcea4a335e5f896178.md) | 59 | `result-track:524bcffcea4a335e5f89617880f6358c8ee856ad59297828a180d919d2ff9419` |
| 8 | `def` | [Equiv.smulRight](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/equiv-smulright--ed58b307c74d73fd6e9b4f37.md) | 63 | `declaration-track:ed58b307c74d73fd6e9b4f378b434dc15e472335030e3fcda49eb32d63550a5c` |
| 9 | `instance` | [instSMulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/instsmulzeroclass--61100dc0382393b167ef3dc7.md) | 75 | `declaration-track:61100dc0382393b167ef3dc7f628a09d8a33642190b618651c84d1d12977259a` |
| 10 | `instance` | [instDistribSMulUnits](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/instdistribsmulunits--ff783cecbce07b59a96d4d1d.md) | 79 | `declaration-track:ff783cecbce07b59a96d4d1d725d372325482eb66d1802e65800595caf0e14be` |
| 11 | `instance` | [instDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/instdistribmulaction--993dfb27ee3b465c8d742970.md) | 82 | `declaration-track:993dfb27ee3b465c8d742970fa57c2f83113ead48e9a61a0d960fa58f700266f` |
| 12 | `instance` | [instMulDistribMulAction](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/instmuldistribmulaction--c2134440693d65f503a83050.md) | 88 | `declaration-track:c2134440693d65f503a830502e39da736ebcb8fcfc46b7722765a105e5750d0f` |
| 13 | `instance` | [mulDistribMulAction'](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/muldistribmulaction--96e0a009be0e0f758a66bb32.md) | 96 | `declaration-track:96e0a009be0e0f758a66bb32a88b62f066a110f7cf4384547e37d158987a89a3` |
| 14 | `lemma` | [IsUnit.smul_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variantb4a51a57c6742b1a7d676cab03c5017d0d8b6ac3029052a5c3068b6be22ae0f5.lean/declarations/isunit-smul-eq-zero--616e28269f00925965548199.md) | 108 | `result-track:616e28269f0092596554819941570ea6999b731efc17f9c25902c1a566f1f61e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
