# Verification target: GRWTSK.Algebra.BitVec.Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91b58fec3c86846b5d77aa390fe265ead5ce0295",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/index.md) · [Full source](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91b58fec3c86846b5d77aa390fe265ead5ce0295`.

Source path: `GRWTSK/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toNat_injective](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/tonat-injective--8bd1b86093c9e95061716fb0.md) | 28 | `result-track:8bd1b86093c9e95061716fb068b39e4299195f74b9ad3aa8ead5dc63c91c7d10` |
| 2 | `theorem` | [toFin_injective](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/tofin-injective--1ef485cd9e0b1e90b01ce4b0.md) | 31 | `result-track:1ef485cd9e0b1e90b01ce4b0a32c9384691d3bb7f847c1e36b98db110e640b03` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/instance--0ff874c152f235e36d68abd7.md) | 39 | `declaration-track:0ff874c152f235e36d68abd718a74572f5ad92934a33f1f654f8e220788fe413` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/instance--3171058aab6ff8d5fc58f09e.md) | 40 | `declaration-track:3171058aab6ff8d5fc58f09ed264c81bbfaf266bd4cc72ad1ab23fed8d2e0662` |
| 5 | `lemma` | [toFin_nsmul](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/tofin-nsmul--c0bc7112a46da762ce3bc021.md) | 41 | `result-track:c0bc7112a46da762ce3bc021e584b9d4e733e81ac63bba2e4477f3c081501a3a` |
| 6 | `lemma` | [toFin_zsmul](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/tofin-zsmul--fb961620e4a3798895b862ce.md) | 42 | `result-track:fb961620e4a3798895b862cebc91a947f2027eec0099a93d979f289d38466750` |
| 7 | `lemma` | [toFin_pow](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/tofin-pow--308bbdc8ea19ff1bebe3f34d.md) | 43 | `result-track:308bbdc8ea19ff1bebe3f34d56dec1ba7ea115b10223d416ae539f2b6d450b1b` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/instance--f915c05ed4c09f359e0860c5.md) | 52 | `declaration-track:f915c05ed4c09f359e0860c529538a7fe98f9c2f07b1ab748a1a30c836065f7a` |
| 9 | `lemma` | [ofFin_neg](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/offin-neg--a53a0f923ec4e1e59eb01fa1.md) | 63 | `result-track:a53a0f923ec4e1e59eb01fa1101124cc399eb5157068651297f70a46e65abef3` |
| 10 | `lemma` | [ofFin_natCast](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/offin-natcast--ac7a62ed7e4c0dd9cb5e48ff.md) | 66 | `result-track:ac7a62ed7e4c0dd9cb5e48ff91d1f07e8928acb9eade5a74caad13cb207cae18` |
| 11 | `lemma` | [toFin_natCast](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/tofin-natcast--54a6094810e07fe2aa7c0b84.md) | 69 | `result-track:54a6094810e07fe2aa7c0b840a815a3c5526c77fda20109d478055a657197dce` |
| 12 | `theorem` | [ofFin_intCast](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/offin-intcast--e60859af92bfe2e2ac7281eb.md) | 72 | `result-track:e60859af92bfe2e2ac7281eb6557a669fc4f256ae4bd0bfb715a0ea9d6573a46` |
| 13 | `theorem` | [toFin_intCast](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/tofin-intcast--777a4605f6d8088573253ddc.md) | 86 | `result-track:777a4605f6d8088573253ddc1633dad6d2bb8753c0f6825466242757ba8d3c7a` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/instance--26a85342291b28cc03a41772.md) | 89 | `declaration-track:26a85342291b28cc03a417725783e18f08f1771ef6202ac99487291b0aa8f73b` |
| 15 | `def` | [equivFin](../../../../mathematics/Algebra/BitVec/Variantc8324be2cbe3cbd6055a94ddb617b5a313236eccd1c015a29e969425d5dc4b27.lean/declarations/equivfin--4bff4514af9e7b6b53c42df6.md) | 96 | `declaration-track:4bff4514af9e7b6b53c42df69cbdb486e2677a576d09bddc4f3d7889e15cf442` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
