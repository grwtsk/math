# Verification target: GRWTSK.Algebra.FieldNormNum.Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ee4a2e03927a6553db513734bdfbe609b61ff8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ee4a2e03927a6553db513734bdfbe609b61ff8`.

Source path: `GRWTSK/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.FieldNormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.SynthInstance` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.LitValues` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Util.SafeExponentiation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/context--af274b6d56499e324da7d242.md) | 17 | `declaration-track:af274b6d56499e324da7d24255328709c88e2802591edf8cd10ca56879e8d213` |
| 2 | `abbrev` | [M](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/m--241153e0d4011b0a52b3a6f6.md) | 25 | `declaration-track:241153e0d4011b0a52b3a6f67cadabfbe93834089af055d4a52bd25eba6f612c` |
| 3 | `def` | [run?](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/run--682a100b846a5272a7d5a49d.md) | 27 | `declaration-track:682a100b846a5272a7d5a49dce1b0c9d8d03d2dcf046ce8929ade249bdaeb104` |
| 4 | `def` | [isAddInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isaddinst--c60ec617e6cabd48d745a3e0.md) | 38 | `declaration-track:c60ec617e6cabd48d745a3e00b922649cc869046b7eac2fa07a5ffd3abafc70e` |
| 5 | `def` | [isMulInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/ismulinst--006505ed88b29f5555d9b367.md) | 43 | `declaration-track:006505ed88b29f5555d9b367d59da14807af6509cc7e6c5c43825de217292910` |
| 6 | `def` | [isSubInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/issubinst--3113c8e4d6424d3f0c27d759.md) | 48 | `declaration-track:3113c8e4d6424d3f0c27d759c4a0af5f0c84f7871a0f13faee1bc9a34708143f` |
| 7 | `def` | [isDivInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isdivinst--a2456888ed622ecd6909559d.md) | 53 | `declaration-track:a2456888ed622ecd6909559d910c9e95eab65222e2f9612b9fda14cee79491ec` |
| 8 | `def` | [isNegInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isneginst--25dd5bcd747fa420b28b653b.md) | 58 | `declaration-track:25dd5bcd747fa420b28b653b50adffc794a2f3655e75b52b56f566bbee37ac20` |
| 9 | `def` | [isInvInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isinvinst--829ef1c5302c1c679218c2a9.md) | 63 | `declaration-track:829ef1c5302c1c679218c2a9c1cf5907f3c9c0f4beeee7136733f8b7ec4eb5f1` |
| 10 | `def` | [isNPowInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isnpowinst--a40a914296ea63175257709b.md) | 68 | `declaration-track:a40a914296ea63175257709b0786acd33a880de51aeccf0f534e5deef96b1c7a` |
| 11 | `def` | [isZPowInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/iszpowinst--483510f13b063931ea9e7b22.md) | 73 | `declaration-track:483510f13b063931ea9e7b227dc5203c2ee0e1e2f004e140742a1f8fad7f0c1b` |
| 12 | `def` | [isOfNatInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isofnatinst--fd505784d862af436f7c28d2.md) | 78 | `declaration-track:fd505784d862af436f7c28d2720a30e1e5628e645f393566b5d5e0e6fe211444` |
| 13 | `def` | [mkNatCastInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/mknatcastinst--e3588f09ff927b5f548a9c57.md) | 83 | `declaration-track:e3588f09ff927b5f548a9c570f7169f3baa67d792577e572f40c57e15fa1be37` |
| 14 | `def` | [isNatCastInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isnatcastinst--20135a08136b414326013e81.md) | 87 | `declaration-track:20135a08136b414326013e81f6e92155500ffc5f87a8b12f4f7f7aa602c0380d` |
| 15 | `def` | [mkNatCast](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/mknatcast--ba544027607359cc1e026f0b.md) | 90 | `declaration-track:ba544027607359cc1e026f0b45a53f35056eb66c4680456162c037d9acf55120` |
| 16 | `def` | [mkIntCastInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/mkintcastinst--499b474f6ec5a5c21b8da411.md) | 102 | `declaration-track:499b474f6ec5a5c21b8da411cd392b90e2701bfdab2c2f08d875595aecd7d044` |
| 17 | `def` | [isIntCastInst](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isintcastinst--f97cac36a10fc2b67f1fd5ea.md) | 106 | `declaration-track:f97cac36a10fc2b67f1fd5ea04a4b7956c6056bb4816437a895d6d243cd40e7e` |
| 18 | `def` | [mkIntCast](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/mkintcast--dae5fe1d62f1cd273683adcb.md) | 109 | `declaration-track:dae5fe1d62f1cd273683adcb861ffa44534746dab697a84ab445ef0656045cba` |
| 19 | `def` | [mkBin](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/mkbin--052a23c154e5bd6299e859b5.md) | 121 | `declaration-track:052a23c154e5bd6299e859b5869de24ef75525aa9fc8f6de91b336664c3762ed` |
| 20 | `def` | [mkUnary](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/mkunary--82d43d4042a2111837788105.md) | 130 | `declaration-track:82d43d4042a2111837788105728d6252debd4dceebf5e5faae2c157b10de96d5` |
| 21 | `def` | [eval](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/eval--aa30d1b5e67df01cbb32f04a.md) | 137 | `declaration-track:aa30d1b5e67df01cbb32f04ac0761aba4999d30977f0fc53acee8750cbae2d24` |
| 22 | `def` | [isApplicable](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/isapplicable--b1ecec0710efde0f9e07ece5.md) | 200 | `declaration-track:b1ecec0710efde0f9e07ece5adcf7b76062a051c402e666fa2b7d2e5a6c08dae` |
| 23 | `def` | [evalFieldExpr?](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/evalfieldexpr--802f86cb3487d07fb0287109.md) | 222 | `declaration-track:802f86cb3487d07fb028710983dce40165a09c446439ca73ddfda415594866b2` |
| 24 | `def` | [normFieldExpr?](../../../../mathematics/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/declarations/normfieldexpr--306c9e0f9156cd8f9475e131.md) | 226 | `declaration-track:306c9e0f9156cd8f9475e13162aa944bb2b90522b44b7d2760dfd76d4ff6f392` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
