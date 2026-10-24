# Verification target: GRWTSK.Analysis.Ray.Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd9d5e4c7c4c4406e0b366a22fb138f5e72565e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/index.md) · [Full source](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd9d5e4c7c4c4406e0b366a22fb138f5e72565e`.

Source path: `GRWTSK/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_add](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/norm-add--2953729f1ccd2767baff06f9.md) | 32 | `result-track:2953729f1ccd2767baff06f96775a8e1d59e77f1d80931e656cf8a2865900c06` |
| 2 | `theorem` | [norm_sub](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/norm-sub--20e9a1de0228c7f6a69866fd.md) | 38 | `result-track:20e9a1de0228c7f6a69866fd00a0c373870849559977c78a1702e62abaaee33f` |
| 3 | `theorem` | [norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/norm-smul-eq--5255c6f5906e79e7930c98bf.md) | 50 | `result-track:5255c6f5906e79e7930c98bf7b2cdbfa87054fd9e584b7df2535dccba28f63b6` |
| 4 | `theorem` | [norm_injOn_ray_left](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/norm-injon-ray-left--e7e23afa18a9681e902b622d.md) | 60 | `result-track:e7e23afa18a9681e902b622d97b62d6e6eb3b412faece293477c601f6068392a` |
| 5 | `theorem` | [norm_injOn_ray_right](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/norm-injon-ray-right--40ca91d094309dc58f7f9a09.md) | 69 | `result-track:40ca91d094309dc58f7f9a0963ec5e893923f9d4d157ed35023471795d0fa114` |
| 6 | `theorem` | [sameRay_iff_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/sameray-iff-norm-smul-eq--d47841f357cb8814bfc49c3b.md) | 73 | `result-track:d47841f357cb8814bfc49c3b31f3090857e0fd5eea57ec1259c0473488c1d29f` |
| 7 | `theorem` | [sameRay_iff_inv_norm_smul_eq_of_ne](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/sameray-iff-inv-norm-smul-eq-of-ne--d7d0759c556a885ec1deb62c.md) | 81 | `result-track:d7d0759c556a885ec1deb62cbaa5f755fb4306e33ed6c6df455df89fb845acf3` |
| 8 | `theorem` | [sameRay_iff_inv_norm_smul_eq](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/sameray-iff-inv-norm-smul-eq--bf3a97db476c927955eff1ab.md) | 92 | `result-track:bf3a97db476c927955eff1abac4303551388002789f8f51b240d33ca22f63828` |
| 9 | `theorem` | [sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/sameray-iff-of-norm-eq--291c67c2fbf8420a7d795291.md) | 99 | `result-track:291c67c2fbf8420a7d795291a7ef2535a95d2b55360066b6fcd8f69aea0dd445` |
| 10 | `theorem` | [not_sameRay_iff_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/not-sameray-iff-of-norm-eq--5a9983b4ba186eaefa9e91be.md) | 106 | `result-track:5a9983b4ba186eaefa9e91be0d340c76b27c6111e9a7d90584df3086b306cc5b` |
| 11 | `theorem` | [SameRay.eq_of_norm_eq](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/sameray-eq-of-norm-eq--3f6c9ce260c6eb45ae4ecc43.md) | 111 | `result-track:3f6c9ce260c6eb45ae4ecc43372c7dd5c46c5a9833570ad40d84b0b13542c566` |
| 12 | `theorem` | [SameRay.norm_eq_iff](../../../../mathematics/Analysis/Ray/Variant3c1f5f15a66e59800f1ec0b6b492a52ce847bfff50ba61ca0500ed3d691277ce.lean/declarations/sameray-norm-eq-iff--aeb27a82dd70ef55b04ecd67.md) | 116 | `result-track:aeb27a82dd70ef55b04ecd67ffdcb7736a05f0f635ade2c8f80fac99fdc63a2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
