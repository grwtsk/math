# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MulAntidiagonal.Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "983032590eeaa27ab3193ba11f89475d1c82766b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `983032590eeaa27ab3193ba11f89475d1c82766b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.MulAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPWO.mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/ispwo-mul--11ff3343376fec2964d906b6.md) | 32 | `result-track:11ff3343376fec2964d906b68e5ca12d014919fb17979eb4a4c0d556fd76df8a` |
| 2 | `theorem` | [IsWF.mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/iswf-mul--3a7e43efaca3951d0413b345.md) | 40 | `result-track:3a7e43efaca3951d0413b34565b16757dd04b513d355a66b4716f0ed0eeddf8d` |
| 3 | `theorem` | [IsWF.min_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/iswf-min-mul--7074b8c5a99b4a4a4dcfdfd7.md) | 44 | `result-track:7074b8c5a99b4a4a4dcfdfd7e9d902e442b78a0e64799274ebee7da33d87fcf8` |
| 4 | `def` | [mulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/mulantidiagonal--b6abe10d79932ce77decffbb.md) | 67 | `declaration-track:b6abe10d79932ce77decffbb3e3af0558406567fe51ce55728e203932e06ba90` |
| 5 | `theorem` | [mem_mulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/mem-mulantidiagonal--1f43c880a86375e725451811.md) | 73 | `result-track:1f43c880a86375e72545181196b94032112d60e3808d6cb1f07482f931bbcfd2` |
| 6 | `theorem` | [mulAntidiagonal_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/mulantidiagonal-mono-left--140f9949896ca07e28e4450f.md) | 77 | `result-track:140f9949896ca07e28e4450f5e563f18fe38db320d873eff97775e1560121031` |
| 7 | `theorem` | [mulAntidiagonal_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/mulantidiagonal-mono-right--7cb50f433021e9f794f3d59c.md) | 81 | `result-track:7cb50f433021e9f794f3d59c781b80740f49382632c8bcba3f78d56b926d7425` |
| 8 | `theorem` | [swap_mem_mulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/swap-mem-mulantidiagonal--54d7a1d9dfbd0a5e8d17059d.md) | 86 | `result-track:54d7a1d9dfbd0a5e8d17059ddb181c0d024990e1be43be9fa90789676fe7a34b` |
| 9 | `theorem` | [support_mulAntidiagonal_subset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/support-mulantidiagonal-subset-mul--0f287fd53a0498dfdcc4a3cd.md) | 91 | `result-track:0f287fd53a0498dfdcc4a3cdaddb22037547aabaf7e45124de38133f7a9d3f77` |
| 10 | `theorem` | [isPWO_support_mulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/ispwo-support-mulantidiagonal--b6b9af0fea71aeddaee82451.md) | 97 | `result-track:b6b9af0fea71aeddaee8245137358dd9a48528bac9e4bfeb84fd06e37a77eb5a` |
| 11 | `theorem` | [mulAntidiagonal_min_mul_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta2880107e3d7e11bb31b998e4b159e214069583d9d5cae7c2ee42ea50ab2c7f4.lean/declarations/mulantidiagonal-min-mul-min--38af0a01f5b9d14e260ad620.md) | 101 | `result-track:38af0a01f5b9d14e260ad62074084e1c0f3857c3f5e731f0c100bbd9eccd3213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
