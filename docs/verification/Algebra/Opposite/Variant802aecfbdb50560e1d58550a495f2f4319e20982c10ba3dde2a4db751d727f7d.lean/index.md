# Verification target: GRWTSK.Algebra.Opposite.Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d912c876ea07cd12a19901ab0a9acaedee5bac7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d912c876ea07cd12a19901ab0a9acaedee5bac7`.

Source path: `GRWTSK/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instnnratcast--f3bdbb2028aa0791029ef615.md) | 20 | `declaration-track:f3bdbb2028aa0791029ef61541a7fef6a1aae410e8d849caa880d3ac85b7596f` |
| 2 | `instance` | [instRatCast](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instratcast--4ec4e5d516d005da3f16d261.md) | 21 | `declaration-track:4ec4e5d516d005da3f16d2613f4beca8dd89cc0f11d58fee521024bb426b4164` |
| 3 | `lemma` | [op_nnratCast](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/op-nnratcast--f60f81d8fa77521721cb3b67.md) | 24 | `result-track:f60f81d8fa77521721cb3b67c477aaeca5e4622f8c01548d57f71c9672d6becc` |
| 4 | `lemma` | [unop_nnratCast](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/unop-nnratcast--16f29e630feda41a8322f816.md) | 27 | `result-track:16f29e630feda41a8322f81644d59047493dbb6126a35d73bdb6daaffbf267fc` |
| 5 | `lemma` | [op_ratCast](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/op-ratcast--33b5b700d8b2bb31850af8c7.md) | 30 | `result-track:33b5b700d8b2bb31850af8c7f80266e3800d7192e547855485fbc8713f89d82b` |
| 6 | `lemma` | [unop_ratCast](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/unop-ratcast--e0119b667d909d13fb6719cf.md) | 33 | `result-track:e0119b667d909d13fb6719cf2493feed4fde9a97cb3c682944861f751172341e` |
| 7 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instdivisionsemiring--35dcc4d24107f4e231d2f70e.md) | 35 | `declaration-track:35dcc4d24107f4e231d2f70e9519a623edd781983549c47100d4b0830e65bb0b` |
| 8 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instdivisionring--eeb0b603d1f8408622a92f71.md) | 43 | `declaration-track:eeb0b603d1f8408622a92f71a79f2d98c1737a9a395c0898f45076deb517109c` |
| 9 | `instance` | [instSemifield](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instsemifield--cd0b45f68a3cf50231cd3a11.md) | 51 | `declaration-track:cd0b45f68a3cf50231cd3a1110b11400f8979fe6499bef7e70272f5bc130dd77` |
| 10 | `instance` | [instField](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instfield--e2fd1a606ec274b681f0f342.md) | 55 | `declaration-track:e2fd1a606ec274b681f0f3426acf96befd6e447df7197d722db0725605f114b6` |
| 11 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instdivisionsemiring--98cd040013cab5aae5155368.md) | 63 | `declaration-track:98cd040013cab5aae515536857710f58db2f835d334f3626b32ae86ae4a1c5ef` |
| 12 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instdivisionring--8cd00c5fb8320b33e712d27f.md) | 71 | `declaration-track:8cd00c5fb8320b33e712d27fcc1568103e3b2c47246070e3ef9755c70696fd3c` |
| 13 | `instance` | [instSemifield](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instsemifield--4f2ae43f14b3367564cf2884.md) | 79 | `declaration-track:4f2ae43f14b3367564cf28840b7367b2484b2bfaa7fa61e6f58168a85d8da6fb` |
| 14 | `instance` | [instField](../../../../mathematics/Algebra/Opposite/Variant802aecfbdb50560e1d58550a495f2f4319e20982c10ba3dde2a4db751d727f7d.lean/declarations/instfield--d0a0cfa9fdfbc4c1e3cf7147.md) | 83 | `declaration-track:d0a0cfa9fdfbc4c1e3cf7147999ed04747c02dae1d28e8293d6e0595d699c09d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
