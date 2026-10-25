# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Core.Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e787d8359004de95a9de0ef1b508209a514a465",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e787d8359004de95a9de0ef1b508209a514a465`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Coefficients` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.PerfectComplex.Comparison` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Theory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/declarations/theory--64a00296275cf9f193c47393.md) | 40 | `declaration-track:64a00296275cf9f193c473932c83a6c887d1fe8e5797a0156714248a2c3631c3` |
| 2 | `theorem` | [lineEquiv_refl_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/declarations/lineequiv-refl-apply--bc9c6217eed5d944b1b8a3a8.md) | 77 | `result-track:bc9c6217eed5d944b1b8a3a83973c6df2a4501f706df8f84dbebbfd256ebc97f` |
| 3 | `theorem` | [quasiIsoEquiv_id_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/declarations/quasiisoequiv-id-apply--0edd07ad37f0ee6e8b7f215a.md) | 85 | `result-track:0edd07ad37f0ee6e8b7f215a20ac877baa5e6c961c88b86d9a552dd44bc316a9` |
| 4 | `def` | [model](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/declarations/model--55876f714913bfc1c819c933.md) | 104 | `declaration-track:55876f714913bfc1c819c93338915081660e75ae4a7ef6554ca6ee2460a7f97b` |
| 5 | `def` | [theory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/declarations/theory--6e7a81534b2bc2eb260082ad.md) | 149 | `declaration-track:6e7a81534b2bc2eb260082adc025bbda44c8641e46574947f7eb5ca005ed2de9` |
| 6 | `def` | [negQuasiIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/declarations/negquasiiso--8a97d2ae8809e50d59a586ab.md) | 168 | `declaration-track:8a97d2ae8809e50d59a586ab7f2e9bcbdef646162610188feec026377a2ef50f` |
| 7 | `theorem` | [negQuasiIso_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/declarations/negquasiiso-apply--67ce1c136b563f8655f1a6b3.md) | 174 | `result-track:67ce1c136b563f8655f1a6b3c0fc2f14176ee557a4da1276b6732ac59890b2b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
