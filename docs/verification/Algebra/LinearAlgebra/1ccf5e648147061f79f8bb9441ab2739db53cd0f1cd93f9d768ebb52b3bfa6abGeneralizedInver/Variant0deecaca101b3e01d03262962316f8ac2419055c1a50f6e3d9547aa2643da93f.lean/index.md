# Verification target: GRWTSK.Algebra.LinearAlgebra.1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver.Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e22e88db53aecf58b9e4829b8725c1bb09123be",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e22e88db53aecf58b9e4829b8725c1bb09123be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeneralizedInverseBlockRealization](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/generalizedinverseblockrealization--87d20e7880ea20bc7530a13f.md) | 46 | `declaration-track:87d20e7880ea20bc7530a13f53f8fd24af3d794fd824e41fb453b87a6016efb9` |
| 2 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/solve--d816bf4a88e301ddb5b80632.md) | 72 | `declaration-track:d816bf4a88e301ddb5b80632450988b6fa2e798a96b797dcd574e0d52ac791e1` |
| 3 | `theorem` | [solve_apply](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/solve-apply--2b43000d0e745abdbf894aa5.md) | 77 | `result-track:2b43000d0e745abdbf894aa527c45a9d9d85b0c120739725eb19f739645a2040` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/provenance-mulvec-solve--0da2393694510eda9f336d49.md) | 82 | `result-track:0da2393694510eda9f336d49d035b6c4af9a163ebfe586819859fa7e2f225876` |
| 5 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/form-sub-right--ec9b6ef634f2cf51d27c68db.md) | 88 | `result-track:ec9b6ef634f2cf51d27c68db98b4b5122736b4d7bb66a99e3ea72dc5a4e1071d` |
| 6 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/blockschursolver--39dd41bd6e12c81964687871.md) | 100 | `declaration-track:39dd41bd6e12c81964687871c5d437f7e3cd96efee93628ae39afecd7cade55e` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/blockschursolver-solve--2b52b6e0745623efbe730690.md) | 111 | `result-track:2b52b6e0745623efbe7306900ef8863eb4cb48016c504788075ed1b43c95ccbd` |
| 8 | `def` | [generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/generalizedschurmatrix--6bea6b95eb46d51f0cf48b24.md) | 116 | `declaration-track:6bea6b95eb46d51f0cf48b242b7aef90f592e66f4fe3626a9e135b8a2bf0e629` |
| 9 | `theorem` | [generalizedSchurCorrection_pairing](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/generalizedschurcorrection-pairing--16f13626dabe2709bca89843.md) | 123 | `result-track:16f13626dabe2709bca89843fc9ea6bf34a07052d04d7191f7314b59e3763d07` |
| 10 | `theorem` | [schurForm_eq_generalizedSchurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/schurform-eq-generalizedschurmatrix--e57c01c889c35a53f06b5dff.md) | 144 | `result-track:e57c01c889c35a53f06b5dff83c535d445730002aa3fb103f77a49f0a71e7f39` |
| 11 | `theorem` | [generalizedSchurMatrix_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/generalizedschurmatrix-nonnegative--c5baba27d372e589c86256b6.md) | 155 | `result-track:c5baba27d372e589c86256b62a8e032647010456ca184b9b4bfd3621bad161a3` |
| 12 | `theorem` | [autonomous_energy_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f.lean/declarations/autonomous-energy-decomposition--ae95097fd2131dc0a15223ba.md) | 163 | `result-track:ae95097fd2131dc0a15223ba490ddee7340dfa8fbd5318aac18b5f497f9cb5e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
