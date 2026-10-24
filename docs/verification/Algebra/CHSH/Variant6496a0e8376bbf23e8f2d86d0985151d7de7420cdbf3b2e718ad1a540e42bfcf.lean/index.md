# Verification target: GRWTSK.Algebra.CHSH.Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a03e749e0a2249a9b1aef9fae60fb13404aec037",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/index.md) · [Full source](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a03e749e0a2249a9b1aef9fae60fb13404aec037`.

Source path: `GRWTSK/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Star` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Polyrith` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCHSHTuple](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/declarations/ischshtuple--64d2c4f6fa559d7cfb52f72f.md) | 86 | `declaration-track:64d2c4f6fa559d7cfb52f72f16d77bcabf930b019656cbf38a3bbaa6a515a38e` |
| 2 | `theorem` | [CHSH_id](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/declarations/chsh-id--cfca6f68e476a545cfe14494.md) | 102 | `result-track:cfca6f68e476a545cfe144949589e558286b19ef49041397777ca02f2d12061c` |
| 3 | `theorem` | [CHSH_inequality_of_comm](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/declarations/chsh-inequality-of-comm--1c1cd612621f5b4c00c015d1.md) | 117 | `result-track:1c1cd612621f5b4c00c015d140a12b4ef1d199c2af3af22cc00c49a680291b05` |
| 4 | `theorem` | [tsirelson_inequality_aux](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/declarations/tsirelson-inequality-aux--1338edf5778362e5b1c30975.md) | 153 | `result-track:1338edf5778362e5b1c30975f56e3760377afb76863ecfaa6ed393f076ae7be2` |
| 5 | `theorem` | [sqrt_two_inv_mul_self](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/declarations/sqrt-two-inv-mul-self--ce5dde6ba0f15cb7e948dc5f.md) | 159 | `result-track:ce5dde6ba0f15cb7e948dc5f521b90b7d2128f8408ed9f09db64ee308f5166f1` |
| 6 | `theorem` | [tsirelson_inequality](../../../../mathematics/Algebra/CHSH/Variant6496a0e8376bbf23e8f2d86d0985151d7de7420cdbf3b2e718ad1a540e42bfcf.lean/declarations/tsirelson-inequality--6deb52076ece218e68c650ad.md) | 176 | `result-track:6deb52076ece218e68c650ad7810fd0056c7a7edb776d58c818289198a2beb9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
