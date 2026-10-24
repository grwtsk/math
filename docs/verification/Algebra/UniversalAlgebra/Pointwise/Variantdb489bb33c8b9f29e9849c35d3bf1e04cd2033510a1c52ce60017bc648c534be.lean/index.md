# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pointwise.Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19b10529a7296f567449041937d3325cb96ff313",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19b10529a7296f567449041937d3325cb96ff313`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.sInf_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-sinf-smul-of-nonneg--c43b9260f9d52e2d416186e9.md) | 45 | `result-track:c43b9260f9d52e2d416186e9ac079b47fbabb1490a6de40e3bb92910b79d0bc6` |
| 2 | `theorem` | [Real.smul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-smul-iinf-of-nonneg--cf00ccef199ac1311745fb36.md) | 56 | `result-track:cf00ccef199ac1311745fb362862b74cdd44aa3a290d85c6e60188c5a77677ab` |
| 3 | `theorem` | [Real.sSup_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-ssup-smul-of-nonneg--2bab46b19b3682ca615b3404.md) | 59 | `result-track:2bab46b19b3682ca615b3404d69e868b36c0b3b3a1145f272912beefd80b5d98` |
| 4 | `theorem` | [Real.smul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-smul-isup-of-nonneg--da1689a96a5eee36fc978615.md) | 70 | `result-track:da1689a96a5eee36fc9786154aa240f4ff0c9112b262c73e3e13afa74729623a` |
| 5 | `theorem` | [Real.sInf_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-sinf-smul-of-nonpos--85ab8019c71f360957944abb.md) | 79 | `result-track:85ab8019c71f360957944abb1e18a3149376c187d1fa31ae497d8ac685840481` |
| 6 | `theorem` | [Real.smul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-smul-isup-of-nonpos--cad1d8f1472efce53b72d63a.md) | 90 | `result-track:cad1d8f1472efce53b72d63a39dce2216cde63659b4de0a8b4d5df1ef1fafbbd` |
| 7 | `theorem` | [Real.sSup_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-ssup-smul-of-nonpos--3d49b591cbd9ffa18bb503a8.md) | 93 | `result-track:3d49b591cbd9ffa18bb503a8224f5dd12e3aebbd8d7e500ade2f0fbcb9d0a47c` |
| 8 | `theorem` | [Real.smul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-smul-iinf-of-nonpos--685b1ab1d27028b838a0300f.md) | 104 | `result-track:685b1ab1d27028b838a0300f1f4cc99cbf228075fa654358ea433d98ca024290` |
| 9 | `theorem` | [Real.mul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-mul-iinf-of-nonneg--c1da27070a694d0b40d17e7b.md) | 116 | `result-track:c1da27070a694d0b40d17e7b6749eaf621bd3eb0a3dbde8c857a8e419aa13226` |
| 10 | `theorem` | [Real.mul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-mul-isup-of-nonneg--9f57497a3c4dc0715b56be05.md) | 119 | `result-track:9f57497a3c4dc0715b56be056d7721c26f057615f9c06d523dbc434bfbc724b4` |
| 11 | `theorem` | [Real.mul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-mul-iinf-of-nonpos--fc4c36ea66c116d7dd4f7b02.md) | 122 | `result-track:fc4c36ea66c116d7dd4f7b028899c99466e75f65f605d90dcde820896ba03c01` |
| 12 | `theorem` | [Real.mul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-mul-isup-of-nonpos--8f5b6df66be977973dfc3c9a.md) | 125 | `result-track:8f5b6df66be977973dfc3c9a261fde00491ebddddbecbb06275d06eedaefc819` |
| 13 | `theorem` | [Real.iInf_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-iinf-mul-of-nonneg--be4d78efd8a16c2830e9ccda.md) | 128 | `result-track:be4d78efd8a16c2830e9ccda902522d247ae33fde4749d638573d194982351bb` |
| 14 | `theorem` | [Real.iSup_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-isup-mul-of-nonneg--41e95a969df4b6e37ff6da08.md) | 131 | `result-track:41e95a969df4b6e37ff6da08163ce9cc0faf98d42dec4b67a6404fdaf20e9e94` |
| 15 | `theorem` | [Real.iInf_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-iinf-mul-of-nonpos--1eeecba0ff571312fd72c7f4.md) | 134 | `result-track:1eeecba0ff571312fd72c7f4edeb0cd91f463ba57965805357190b4ee2af1512` |
| 16 | `theorem` | [Real.iSup_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantdb489bb33c8b9f29e9849c35d3bf1e04cd2033510a1c52ce60017bc648c534be.lean/declarations/real-isup-mul-of-nonpos--6b5a5c3a5cc54ed196547770.md) | 137 | `result-track:6b5a5c3a5cc54ed196547770562f1a2af844a4b094ee76c346f245c2933db1e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
