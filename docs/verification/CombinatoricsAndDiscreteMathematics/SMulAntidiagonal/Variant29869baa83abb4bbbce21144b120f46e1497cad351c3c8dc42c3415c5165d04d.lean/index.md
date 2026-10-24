# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SMulAntidiagonal.Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "924fe242cce0f2375a5431739c0a51d5910d7020",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `924fe242cce0f2375a5431739c0a51d5910d7020`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.SMulAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPWO.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/ispwo-smul--d7aec80b4ffe72b267719e70.md) | 30 | `result-track:d7aec80b4ffe72b267719e70e17c8a953b862fd268d05829b322a1be229314ba` |
| 2 | `theorem` | [IsWF.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/iswf-smul--fcf26a7cd392109174892fa4.md) | 36 | `result-track:fcf26a7cd392109174892fa433eb39ee40dcd2cc455c3c2c10eb0124dd846c82` |
| 3 | `theorem` | [IsWF.min_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/iswf-min-smul--befc1f2a59c63ab95ce49d4e.md) | 41 | `result-track:befc1f2a59c63ab95ce49d4e1b5a27d771399d2217e70ae20e272d8e1905c9f0` |
| 4 | `def` | [SMulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/smulantidiagonal--4d6d9685ac1adc98e60ee9dc.md) | 67 | `declaration-track:4d6d9685ac1adc98e60ee9dcb83c27f3ee5592826173b4f44080a6cc2917b0b3` |
| 5 | `theorem` | [mem_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/mem-smulantidiagonal--386e2a0c00b0be40e7e40e10.md) | 72 | `result-track:386e2a0c00b0be40e7e40e1001047ec12917b6c85f0abe03702640e132bc58b2` |
| 6 | `theorem` | [smulAntidiagonal_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/smulantidiagonal-mono-left--4e1eef9accc01ad9b87a059e.md) | 78 | `result-track:4e1eef9accc01ad9b87a059e6129688e6a8dc3eb07d1a944dc232ec13800b749` |
| 7 | `theorem` | [smulAntidiagonal_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/smulantidiagonal-mono-right--1e6e30e8aa3c49b53925ee70.md) | 83 | `result-track:1e6e30e8aa3c49b53925ee70e66f7ae4fbf0e8ae4fe49094a154b25209ab9d13` |
| 8 | `theorem` | [support_smulAntidiagonal_subset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/support-smulantidiagonal-subset-smul--8bbc07a60ce1bbe783fa444a.md) | 88 | `result-track:8bbc07a60ce1bbe783fa444ad9dbb2f0dd403baec4c73060fc7cdea299961e08` |
| 9 | `theorem` | [isPWO_support_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/ispwo-support-smulantidiagonal--ed36f29de5601b83f7b5b864.md) | 99 | `result-track:ed36f29de5601b83f7b5b864ba818d149782f84d7d7cb55184f57b7fbdb6c8a2` |
| 10 | `theorem` | [smulAntidiagonal_min_smul_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant29869baa83abb4bbbce21144b120f46e1497cad351c3c8dc42c3415c5165d04d.lean/declarations/smulantidiagonal-min-smul-min--ecce4d5a5445d920490f189f.md) | 106 | `result-track:ecce4d5a5445d920490f189fbc7029260db7633bfe57916f26f9f78d833e35ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
