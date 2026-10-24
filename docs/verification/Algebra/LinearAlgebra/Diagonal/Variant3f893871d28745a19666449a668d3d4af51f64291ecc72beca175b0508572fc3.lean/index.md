# Verification target: GRWTSK.Algebra.LinearAlgebra.Diagonal.Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e2ed3dd9e2cffda7fc3fe9fe127785b695d4bfb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e2ed3dd9e2cffda7fc3fe9fe127785b695d4bfb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [proj_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/declarations/proj-diagonal--7edfa0697b8b441f3a3d20eb.md) | 41 | `result-track:7edfa0697b8b441f3a3d20ebb0183b70ea8818dc8e7e274f5de9503bd155c446` |
| 2 | `theorem` | [diagonal_comp_single](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/declarations/diagonal-comp-single--242a775bec0710389ee3961a.md) | 44 | `result-track:242a775bec0710389ee3961a4f7fa62a184011e90bbb873acf47b566dd9d5162` |
| 3 | `theorem` | [diagonal_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/declarations/diagonal-tolin--956f2767027c3ebef4afb687.md) | 49 | `result-track:956f2767027c3ebef4afb6878b7d1e17cf0fe189d1b701163a34735fd469ef04` |
| 4 | `theorem` | [ker_diagonal_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/declarations/ker-diagonal-tolin--9a5e2b56bbbbc857b6244ddf.md) | 60 | `result-track:9a5e2b56bbbbc857b6244ddff52c3e87041820fc51f3d262960a41f72d2f9f3d` |
| 5 | `theorem` | [range_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/declarations/range-diagonal--8a03603eaa3442b5c574cfe3.md) | 70 | `result-track:8a03603eaa3442b5c574cfe347119a22911970f95c64cecbb9898b3dfb178eb8` |
| 6 | `theorem` | [rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant3f893871d28745a19666449a668d3d4af51f64291ecc72beca175b0508572fc3.lean/declarations/rank-diagonal--fd2480b4a9fff9863ed11f3f.md) | 88 | `result-track:fd2480b4a9fff9863ed11f3f5c617f66712a6abbc4e8f5329038a7653467feb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
