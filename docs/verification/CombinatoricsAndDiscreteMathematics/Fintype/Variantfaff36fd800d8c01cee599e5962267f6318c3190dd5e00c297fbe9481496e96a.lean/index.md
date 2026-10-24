# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679865a0f04b90fd1f7434949efe27f5fa154ca1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679865a0f04b90fd1f7434949efe27f5fa154ca1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DFunLike.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean/declarations/dfunlike-fintype--479539202cfb41fcf89a6e36.md) | 40 | `declaration-track:479539202cfb41fcf89a6e3674d81f846d33d01964df9489686dd7ddf828e210` |
| 2 | `def` | [FunLike.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean/declarations/funlike-fintype--9b27e2d950dc64bd1d0cb239.md) | 48 | `declaration-track:9b27e2d950dc64bd1d0cb23932fcbbbd99bf370ce0be0498a1789226d8cbc639` |
| 3 | `theorem` | [DFunLike.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean/declarations/dfunlike-finite--4e3679ba4b74caa61295bc66.md) | 62 | `result-track:4e3679ba4b74caa61295bc666778112eae0dc59b6cc0e294ca67a49f8895446c` |
| 4 | `theorem` | [FunLike.finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean/declarations/funlike-finite--fe2a89c69364613e8599a953.md) | 70 | `result-track:fe2a89c69364613e8599a953710b121ab18143299d66a1cc52b6c7352c2b4aaf` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fintype/Variantfaff36fd800d8c01cee599e5962267f6318c3190dd5e00c297fbe9481496e96a.lean/declarations/instance--f104a6888e8df61faf4f4c5c.md) | 76 | `declaration-track:f104a6888e8df61faf4f4c5c45230db87e03577769cf9decd129b4e986fa8dd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
