# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ErdosGinzburgZiv.Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b1bb2cf9f910d2087ce41bdfc150a3981834093",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b1bb2cf9f910d2087ce41bdfc150a3981834093`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.ChevalleyWarning` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [f₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/f--3e35a5710adbc7cbd0085957.md) | 40 | `declaration-track:3e35a5710adbc7cbd0085957ef94ea9a5da76ac576d329e2e31e2e8f2abd1207` |
| 2 | `def` | [f₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/f--8c0e3673057584bbb8f9240e.md) | 44 | `declaration-track:8c0e3673057584bbb8f9240eb34d55f6f1129736cde4ac343c396f4ae1053d35` |
| 3 | `lemma` | [totalDegree_f₁_add_totalDegree_f₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/totaldegree-f-add-totaldegree-f--234671c3ebd67ef6d9762024.md) | 47 | `result-track:234671c3ebd67ef6d976202467cca8b83adf73e1fcdd4b93e90b06cb341cf283` |
| 4 | `theorem` | [ZMod.erdos_ginzburg_ziv_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/zmod-erdos-ginzburg-ziv-prime--d5e871317de9adb51513c143.md) | 60 | `result-track:d5e871317de9adb51513c14343c4acb86d80443364b71bc987f2fb483cb1117c` |
| 5 | `theorem` | [Int.erdos_ginzburg_ziv_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/int-erdos-ginzburg-ziv-prime--3c87eeb96a9d2b08121af6f8.md) | 100 | `result-track:3c87eeb96a9d2b08121af6f82a59f5f6a35bd255ba30d17d1884326ff9aa02fd` |
| 6 | `theorem` | [Int.erdos_ginzburg_ziv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/int-erdos-ginzburg-ziv--c33256a1f93bac79e9e6984d.md) | 114 | `result-track:c33256a1f93bac79e9e6984da484d6945797547edb7dd633fdd30f5f95e823c6` |
| 7 | `theorem` | [ZMod.erdos_ginzburg_ziv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/zmod-erdos-ginzburg-ziv--aead29541ca4960c7aaaaeec.md) | 188 | `result-track:aead29541ca4960c7aaaaeecd9f8fb1f884ce49b8e21f94261ab6f65ad571c22` |
| 8 | `theorem` | [Int.erdos_ginzburg_ziv_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/int-erdos-ginzburg-ziv-multiset--4c132c9b60cf3a9e623e211f.md) | 196 | `result-track:4c132c9b60cf3a9e623e211f3ea5f1c1d4e84325a9514256880a2dba6898296b` |
| 9 | `theorem` | [ZMod.erdos_ginzburg_ziv_multiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/declarations/zmod-erdos-ginzburg-ziv-multiset--5b4ff9f3cf68b0496fd7230a.md) | 205 | `result-track:5b4ff9f3cf68b0496fd7230ab10888333d88e2cf5ff8519836a02ad8d75226e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
