# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SMulAntidiagonal.Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb4ad3425170a7e4416bcd8d0fc4d0dfd92559cf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb4ad3425170a7e4416bcd8d0fc4d0dfd92559cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.SMulAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPWO.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/ispwo-smul--0b21e550f524373d52c3253b.md) | 38 | `result-track:0b21e550f524373d52c3253b4d03dddc917c007352c1ce7e83943e6996f43258` |
| 2 | `theorem` | [IsWF.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/iswf-smul--ad8e7d79f3d2bd450879a520.md) | 44 | `result-track:ad8e7d79f3d2bd450879a520244c3a60a13e9bd4f3a8ff56c5f5a00a693f48a4` |
| 3 | `theorem` | [IsWF.min_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/iswf-min-smul--d4963a646a4e317a85e9f8fc.md) | 49 | `result-track:d4963a646a4e317a85e9f8fcb21daae17552c94db215e0dfdf88b4b16ad2c4d9` |
| 4 | `def` | [SMulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/smulantidiagonal--44d1f8a413e989baec9010bb.md) | 75 | `declaration-track:44d1f8a413e989baec9010bb07b671ac59873a52c10b0bad43034fb028089fdb` |
| 5 | `theorem` | [mem_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/mem-smulantidiagonal--9f7ff9cfcd75b8d1ec83cfcc.md) | 80 | `result-track:9f7ff9cfcd75b8d1ec83cfccde4988d8499e6c41e0fb086f15c69e172a3dd91f` |
| 6 | `theorem` | [smulAntidiagonal_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/smulantidiagonal-mono-left--2a6169dbf16147ec8d5319a4.md) | 86 | `result-track:2a6169dbf16147ec8d5319a4253d6ecf213c4f1a2a10bb634d72801893857b98` |
| 7 | `theorem` | [smulAntidiagonal_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/smulantidiagonal-mono-right--34326e8eafa61596fefb76be.md) | 91 | `result-track:34326e8eafa61596fefb76be20de9dd46f91016f65de85338bea476147a16877` |
| 8 | `theorem` | [support_smulAntidiagonal_subset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/support-smulantidiagonal-subset-smul--b207df352b83cf92c860cb6d.md) | 96 | `result-track:b207df352b83cf92c860cb6d3a75e8f9015efbe13e37ce184f1bcb3f517f4429` |
| 9 | `theorem` | [isPWO_support_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/ispwo-support-smulantidiagonal--61955e6b03fc88c5d3364fbb.md) | 107 | `result-track:61955e6b03fc88c5d3364fbbbcbef70ef547964cf4dbfb5eef0731870a8a5519` |
| 10 | `theorem` | [smulAntidiagonal_min_smul_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/declarations/smulantidiagonal-min-smul-min--1ebc18e54f6bc2332990eb44.md) | 114 | `result-track:1ebc18e54f6bc2332990eb44404dc5e0f32521314aa9b0447c90e367aed8945a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
