# Verification target: GRWTSK.Algebra.LinearAlgebra.PosDef.Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b256cbbb9bc35c2705556109351220075d21ef74",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b256cbbb9bc35c2705556109351220075d21ef74`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PosDef](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef--af9760ab97cddaa662ec9011.md) | 38 | `declaration-track:af9760ab97cddaa662ec901100c91b16febbad00bbaf822a3601da95b9e92333` |
| 2 | `theorem` | [PosDef.isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-ishermitian--fef32039cae06656030f32be.md) | 42 | `result-track:fef32039cae06656030f32beb273280c00c6c3924479524b59af67d5030b81f4` |
| 3 | `theorem` | [PosDef.re_dotProduct_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-re-dotproduct-pos--237d0391c0b0155725ab61a5.md) | 46 | `result-track:237d0391c0b0155725ab61a56ab48ea63290ba28403dbbc18b5b8126b57b7803` |
| 4 | `def` | [PosSemidef](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/possemidef--0d466fa26f00e5a0e13f616e.md) | 52 | `declaration-track:0d466fa26f00e5a0e13f616ed8588d0c9577c3ba83031b2c9697802d288bf6b4` |
| 5 | `theorem` | [PosSemidef.re_dotProduct_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/possemidef-re-dotproduct-nonneg--62956ee4c27fb9c095a0ff9f.md) | 56 | `result-track:62956ee4c27fb9c095a0ff9ff528791116e4958eaf2bd36c1e5704b7f6242850` |
| 6 | `theorem` | [PosDef.posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-possemidef--33f5891fd6fd8900f54c7e21.md) | 60 | `result-track:33f5891fd6fd8900f54c7e21c9fcde9dba4bbb4ba4790e8141ca3e130852fb83` |
| 7 | `theorem` | [PosSemidef.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/possemidef-submatrix--c172987eabf7cf3728472071.md) | 69 | `result-track:c172987eabf7cf372847207118da4050fad62eefccd0f354c3e668c15204adce` |
| 8 | `theorem` | [posSemidef_submatrix_equiv](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/possemidef-submatrix-equiv--226bc5a25bf674dbf8e074bb.md) | 86 | `result-track:226bc5a25bf674dbf8e074bb785037fc7db8e63fb1c0457917455d0f539b76ac` |
| 9 | `theorem` | [PosDef.transpose](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-transpose--b43603235d39ff6cbb53b562.md) | 91 | `result-track:b43603235d39ff6cbb53b562b2145d0c5e539a7b4ad7a6eb261a46c3ec52fca3` |
| 10 | `theorem` | [posDef_of_toQuadraticForm'](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-of-toquadraticform--702ae499f64ae2a74a469a31.md) | 97 | `result-track:702ae499f64ae2a74a469a31f40afa06c6677058a08679173589492707ef18dd` |
| 11 | `theorem` | [posDef_toQuadraticForm'](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-toquadraticform--92f4ca96d3188abfda1ba002.md) | 105 | `result-track:92f4ca96d3188abfda1ba00223bfd633d925f2a4901175296b030eaad40e4265` |
| 12 | `theorem` | [posSemidef_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/possemidef-conjtranspose-mul-self--a6a70ae20a739da41de11636.md) | 113 | `result-track:a6a70ae20a739da41de11636e359742bf4ee8d83b539583913dc722dbf445106` |
| 13 | `theorem` | [posSemidef_self_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/possemidef-self-mul-conjtranspose--a5171b3c98cea38df40158b3.md) | 119 | `result-track:a5171b3c98cea38df40158b3828ea1969b7751e2cee95f4857812141ea7ccc7c` |
| 14 | `lemma` | [PosDef.eigenvalues_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-eigenvalues-pos--66eb9ef1a0bd80c7ed7ce683.md) | 123 | `result-track:66eb9ef1a0bd80c7ed7ce683b2442a6a454a720a021c4614f68db2e6757cf88d` |
| 15 | `lemma` | [PosSemidef.eigenvalues_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/possemidef-eigenvalues-nonneg--0487a3fd68de4d2a87dc154f.md) | 129 | `result-track:0487a3fd68de4d2a87dc154f39179ec340440668583aabc885ca8ebb523d524b` |
| 16 | `theorem` | [det_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/det-pos--cb9b665d6229fb4260a3197b.md) | 137 | `result-track:cb9b665d6229fb4260a3197bf2d916eba56cafca63d92a42331dc265a1339d43` |
| 17 | `theorem` | [posDef_of_toMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-of-tomatrix--2cb15c13703d8364e6627428.md) | 157 | `result-track:2cb15c13703d8364e66274289c7affccc08cfc2a8b77eb0ace19e66ae4335c8a` |
| 18 | `theorem` | [posDef_toMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/posdef-tomatrix--71365136b39c8f7db458e8e1.md) | 163 | `result-track:71365136b39c8f7db458e8e1bc9aa33c5bdbcf381d96b3903cce40e4de71906c` |
| 19 | `def` | [NormedAddCommGroup.ofMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/normedaddcommgroup-ofmatrix--c63603d75dc1fac763682032.md) | 178 | `declaration-track:c63603d75dc1fac7636820323489383f2890d6e68218fa80c72d0cffc6bbd3d4` |
| 20 | `def` | [InnerProductSpace.ofMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant938a16e4a2f70a2918d593c90652136fad6c8f89f89bfd42a402525e6b62131b.lean/declarations/innerproductspace-ofmatrix--eff9cca7d72ad6ae70e0720a.md) | 200 | `declaration-track:eff9cca7d72ad6ae70e0720a9b7988863ca80eaa31946cb4d2dfda7cdddda41b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
