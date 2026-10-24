# Verification target: GRWTSK.Algebra.LinearAlgebra.InvertibleBlockSchur.Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "975d43f98daacfcf2472ed6c7a02a724798b5d3b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `975d43f98daacfcf2472ed6c7a02a724798b5d3b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.BlockSchur` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceCrossMap](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/provenancecrossmap--24066dfec45115b0203f4658.md) | 28 | `declaration-track:24066dfec45115b0203f46581fd6e8b3b2d184d2b0e4d469beee186ef75e40aa` |
| 2 | `theorem` | [provenanceCrossMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/provenancecrossmap-apply--ec8e446350b7a0d55b9ab30b.md) | 49 | `result-track:ec8e446350b7a0d55b9ab30b0992d36f044b8e9d75dd03ce01a72f5de1da70ac` |
| 3 | `structure` | [InvertibleProvenanceBlock](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/invertibleprovenanceblock--a0a76de4c0bb87b07a6770ae.md) | 56 | `declaration-track:a0a76de4c0bb87b07a6770aee677ffb573a83997a7c3d281d97eb63bb2d8d6c5` |
| 4 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/solve--14e9dd7ee6e126a1516d2368.md) | 68 | `declaration-track:14e9dd7ee6e126a1516d23681dd87c57a0ce909008cb49e90319aa845125a20e` |
| 5 | `theorem` | [gramEquiv_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/gramequiv-solve--25a2b13f365778a66ec941f8.md) | 72 | `result-track:25a2b13f365778a66ec941f85a7efd0222ae2aadbb8bbcfbb8f7bd6410198469` |
| 6 | `theorem` | [provenance_form_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/provenance-form-solve--7559f96e6905a807565cb433.md) | 78 | `result-track:7559f96e6905a807565cb433aed6e6fd10544966df35093009348618017d6ed1` |
| 7 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/form-sub-right--796bd60acaf580ab5a24921a.md) | 90 | `result-track:796bd60acaf580ab5a24921a552b798b6a2c908dc73891dc63b903a91d650364` |
| 8 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/blockschursolver--743a007bdee5e99e3479bd83.md) | 101 | `declaration-track:743a007bdee5e99e3479bd83b38b6396bc2296c8f8dcbe9c9f0fb896debcae4b` |
| 9 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/blockschursolver-solve--65b0922a4303af49d754d155.md) | 111 | `result-track:65b0922a4303af49d754d15599e1aab56a4d0d817c4f611562fd544e292b699f` |
| 10 | `theorem` | [schur_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/schur-nonnegative--240b26984112871bfab88cfe.md) | 117 | `result-track:240b26984112871bfab88cfee0fa105060681d602cfe5b72212d7c87dc96214e` |
| 11 | `theorem` | [schur_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/schur-eq-sub--99c917bacb8d8ea63d39e5c7.md) | 123 | `result-track:99c917bacb8d8ea63d39e5c72a48e782cba0e8a4170faf4a83e8b97950c0219f` |
| 12 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116.lean/declarations/schur-diagonal-nonnegative--488e2e9e5fc5d77185661499.md) | 131 | `result-track:488e2e9e5fc5d77185661499368ac0f43fac435333252787bd79925bd4526b4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
