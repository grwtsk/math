# Verification target: GRWTSK.Algebra.MonoidAlgebra.Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d067d0c2fe46b1a7524026b5deb86fc532294c6d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/index.md) · [Full source](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d067d0c2fe46b1a7524026b5deb86fc532294c6d`.

Source path: `GRWTSK/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Laurent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoalgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/instcoalgebra--8a204213d953b4f60027631c.md) | 40 | `declaration-track:8a204213d953b4f60027631c2efca8f60e5f2a64105e6efe8ae81e2bc35a4a4f` |
| 2 | `lemma` | [counit_single](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/counit-single--f35569f24e7ecb6c814d17ce.md) | 43 | `result-track:f35569f24e7ecb6c814d17cefaaf927e1056f7c8fd043cd71061702621a32e40` |
| 3 | `lemma` | [comul_single](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/comul-single--ce9468ecfcc8ac52e908d1fc.md) | 48 | `result-track:ce9468ecfcc8ac52e908d1fc0a1c58fe6625227000f2e45d53c27c06ff4d7938` |
| 4 | `instance` | [instCoalgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/instcoalgebra--336aa828f08cb10c93802ecf.md) | 61 | `declaration-track:336aa828f08cb10c93802ecfaf89f79d6f39b731278a7e3876b59c07a9d618c3` |
| 5 | `lemma` | [counit_single](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/counit-single--cbcf22954c564cf1530969df.md) | 64 | `result-track:cbcf22954c564cf1530969dfe46186e3f230bbee5d25a8c49d453f7853012948` |
| 6 | `lemma` | [comul_single](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/comul-single--e1bafb376d5ffb87011ef89f.md) | 69 | `result-track:e1bafb376d5ffb87011ef89f02d695ac2177d058804eb668ea491405976fbf60` |
| 7 | `instance` | [instCoalgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/instcoalgebra--f65c56c3be65057b95b18565.md) | 82 | `declaration-track:f65c56c3be65057b95b18565c84da449d49d9f55a41c0aac7eb0989002780994` |
| 8 | `theorem` | [comul_C](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/comul-c--16bef9ff169a1e86c2be27e5.md) | 89 | `result-track:16bef9ff169a1e86c2be27e5efa4729df9095c15e32ebb667739211a691b8d6c` |
| 9 | `theorem` | [comul_C_mul_T](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/comul-c-mul-t--85e0f14682afd8931673bda6.md) | 95 | `result-track:85e0f14682afd8931673bda6252085073639523f5b57fd2446523aef59c3617b` |
| 10 | `theorem` | [comul_C_mul_T_self](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/comul-c-mul-t-self--87443f74d91f2f19d6ccd188.md) | 100 | `result-track:87443f74d91f2f19d6ccd188e9a7fcc4232a22d018e6cc18acc22fce31abbd3d` |
| 11 | `theorem` | [counit_C](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/counit-c--15368e1a8e0161bb5cc22d88.md) | 105 | `result-track:15368e1a8e0161bb5cc22d8856337e6f2b62a30450c1fd2b5bde5917935e1cca` |
| 12 | `theorem` | [counit_C_mul_T](../../../../mathematics/Algebra/MonoidAlgebra/Variante52321f0b9e6cc43d84d25747fdb8b782d5ad2f9d6daf1b5bffed5252384e7a6.lean/declarations/counit-c-mul-t--4dd0b46828ea4c6d88f6b47c.md) | 110 | `result-track:4dd0b46828ea4c6d88f6b47cacea9926d30739a5fb5abd23be5312cfab95fd8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
