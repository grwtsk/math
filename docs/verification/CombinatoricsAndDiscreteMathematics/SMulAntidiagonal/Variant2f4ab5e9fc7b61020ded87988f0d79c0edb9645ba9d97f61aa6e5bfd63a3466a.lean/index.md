# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SMulAntidiagonal.Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baee0432b79d152921febc5c33fcb55d9f87a116",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baee0432b79d152921febc5c33fcb55d9f87a116`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPWO.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/ispwo-smul--20441e032a854968f0f9f77d.md) | 33 | `result-track:20441e032a854968f0f9f77d151aaa3ceb6b6a876c3008f8deffc41ca10dc44d` |
| 2 | `theorem` | [IsWF.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/iswf-smul--d8778d3a84292802a630f205.md) | 39 | `result-track:d8778d3a84292802a630f205a4aec517a346f7a4dace2f321b64ac187f4931a0` |
| 3 | `theorem` | [IsWF.min_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/iswf-min-smul--0af01706f2d2045190f330c9.md) | 44 | `result-track:0af01706f2d2045190f330c92b1765d5e869afa8d685e6871a371160fc47ef4b` |
| 4 | `def` | [SMulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/smulantidiagonal--d7fbfe73f3a00ee038bba4fc.md) | 68 | `declaration-track:d7fbfe73f3a00ee038bba4fceeac1b853071ff7d89702d04437f8654e0531efe` |
| 5 | `theorem` | [mem_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/mem-smulantidiagonal--28f9b1d0078109632a7d0113.md) | 73 | `result-track:28f9b1d0078109632a7d01135185791ecb7fa36a62e6d1c5d6e3ccae54a69362` |
| 6 | `theorem` | [smulAntidiagonal_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/smulantidiagonal-mono-left--3b6ccfb30f5c076b5a9729b2.md) | 80 | `result-track:3b6ccfb30f5c076b5a9729b28116be70de4ce4616d2d996a78be15fab9802ac0` |
| 7 | `theorem` | [smulAntidiagonal_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/smulantidiagonal-mono-right--4823921f8355cb4b7f96c303.md) | 86 | `result-track:4823921f8355cb4b7f96c303957fe64383e77f4dea216c7d16061dfef99f1b77` |
| 8 | `theorem` | [support_smulAntidiagonal_subset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/support-smulantidiagonal-subset-smul--68606a41a1a18d5017ec6eb3.md) | 93 | `result-track:68606a41a1a18d5017ec6eb33671f458d7407cdeaeaa22f2c9213d058c967cca` |
| 9 | `theorem` | [isPWO_support_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/ispwo-support-smulantidiagonal--e8c6be36a5f92d3432b1ff86.md) | 102 | `result-track:e8c6be36a5f92d3432b1ff860a3dafe24dd19b02a3b2e92e119a6f93ca901a64` |
| 10 | `theorem` | [smulAntidiagonal_min_smul_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/declarations/smulantidiagonal-min-smul-min--939ab929dc3f6b7925db76eb.md) | 110 | `result-track:939ab929dc3f6b7925db76eb1f00336c874bea55cf3d44571021954d6b0e5b35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
