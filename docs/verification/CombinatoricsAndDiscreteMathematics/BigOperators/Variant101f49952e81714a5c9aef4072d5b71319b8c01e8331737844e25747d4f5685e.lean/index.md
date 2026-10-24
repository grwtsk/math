# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3c17cba725522fba308eba0e88c628010c6c532",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3c17cba725522fba308eba0e88c628010c6c532`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.sum_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/list-sum-smul--6faf89495efa700608d15b51.md) | 20 | `result-track:6faf89495efa700608d15b519800d5c02890e996ffae7ebbc330b970b9d20e28` |
| 2 | `theorem` | [Multiset.sum_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/multiset-sum-smul--4acbf05f69796577d51ccb18.md) | 23 | `result-track:4acbf05f69796577d51ccb18a7097469cef548b4b3c43d23ee887ac0966e8152` |
| 3 | `theorem` | [Multiset.sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/multiset-sum-smul-sum--a43af31e6b8f4575e91e226f.md) | 26 | `result-track:a43af31e6b8f4575e91e226f2b71f802975c3f0310efa21fd03466ff78085aeb` |
| 4 | `theorem` | [Finset.sum_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/finset-sum-smul--cde7b151aab45d12cc460ecc.md) | 32 | `result-track:cde7b151aab45d12cc460ecc07f51694ff303c688c7aee4bfaa4d91176b1f2d2` |
| 5 | `lemma` | [Finset.sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/finset-sum-smul-sum--1b0c1292ae7b4c904c7c9a2b.md) | 35 | `result-track:1b0c1292ae7b4c904c7c9a2b6fc735ea9db94de18179c214edbfb0d382b77736` |
| 6 | `lemma` | [Fintype.sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/fintype-sum-smul-sum--5e3eceee086ec8114b1037f7.md) | 39 | `result-track:5e3eceee086ec8114b1037f71170004d9c1edd27aa770eee6fd48a98f32037f3` |
| 7 | `theorem` | [Finset.cast_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/finset-cast-card--f67a482114c44f25b13dd905.md) | 46 | `result-track:f67a482114c44f25b13dd905941f4029367a5ccb6eccc61b6b9670ca96490329` |
| 8 | `lemma` | [sum_piFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant101f49952e81714a5c9aef4072d5b71319b8c01e8331737844e25747d4f5685e.lean/declarations/sum-pifinset-apply--3a39727bfa3185a12d4a556e.md) | 52 | `result-track:3a39727bfa3185a12d4a556e2f83cd91b4b0558bc7a45d8e9528e18683782f4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
