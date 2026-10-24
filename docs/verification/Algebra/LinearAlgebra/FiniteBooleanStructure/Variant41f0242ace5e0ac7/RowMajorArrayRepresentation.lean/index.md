# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.RowMajorArrayRepresentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d377dfca894cf45fa0178a946fb7d8c3d059a00",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d377dfca894cf45fa0178a946fb7d8c3d059a00`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.DeclarativeBooleanMatrices`](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/DeclarativeBooleanMatrices.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitMatrix.ArrayBacked](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/bitmatrix-arraybacked--79efb2935ebb6317f0098b5c.md) | 55 | `declaration-track:79efb2935ebb6317f0098b5c559aa9afa63906bcc7b36ccf9eeedc08f60e9f9a` |
| 2 | `def` | [flatIdx](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/flatidx--f82bba6d4f675e4907c7ec66.md) | 69 | `declaration-track:f82bba6d4f675e4907c7ec666f3c0a0e7d9da31cc0b691e09b462be558c35952` |
| 3 | `def` | [ofArray?](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/ofarray--e029466c527d9e320fa6120a.md) | 88 | `declaration-track:e029466c527d9e320fa6120a6dd7b9f4ae06caf314f55a4c81b461f683a1c842` |
| 4 | `def` | [fill](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/fill--e94939faead3f726c0f905ef.md) | 99 | `declaration-track:e94939faead3f726c0f905ef836d68b4bffff2c28f4677a0565d33013f2ce1a6` |
| 5 | `def` | [get](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/get--cd3030ade4779100ca3375a1.md) | 112 | `declaration-track:cd3030ade4779100ca3375a1858c7233a15537bdd45b276009bdbf3a1642f4b9` |
| 6 | `def` | [toMatrix](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/tomatrix--68770bfbb3c1464e579a50e1.md) | 122 | `declaration-track:68770bfbb3c1464e579a50e179fbe6e2ba4a412997a49dbad284f475201a2935` |
| 7 | `def` | [mapInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/mapinplace--294568d7e279729234f5e559.md) | 134 | `declaration-track:294568d7e279729234f5e559a563c49df7af7af62ee927eec14b6be6a2bd888f` |
| 8 | `def` | [zipWithInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/zipwithinplace--960cecd2c3aaafc2cf663870.md) | 148 | `declaration-track:960cecd2c3aaafc2cf663870229a916d394f77f8ae1591a2b91551cea1744734` |
| 9 | `def` | [andInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/andinplace--eac7b27010567f6e8e02b820.md) | 162 | `declaration-track:eac7b27010567f6e8e02b820b47a1c42791da31dc0fe0cd3e18bff72438d5b51` |
| 10 | `def` | [orInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/orinplace--e4a734bd321285905808dc64.md) | 168 | `declaration-track:e4a734bd321285905808dc64ce26716c469ceeadbbd21a49915603f766a4e93f` |
| 11 | `def` | [xorInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/xorinplace--d8d79b20dc161a13d2280445.md) | 174 | `declaration-track:d8d79b20dc161a13d22804459cfb0a0b1a6d164b2aae507c8a736d00d5408526` |
| 12 | `def` | [notInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/declarations/notinplace--04dc69027f395d5e43c3e6d8.md) | 180 | `declaration-track:04dc69027f395d5e43c3e6d82b8ad069f3a5b2076b264b6be859f7c663700296` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
