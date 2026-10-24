# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0edeb1fa4176a31a026d229659e237d2fe7da14`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Expand` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FLT.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FLT.MasonStothers` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ne.isUnit_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/ne-isunit-c--b0e4117de9490a11c0a5e502.md) | 35 | `result-track:b0e4117de9490a11c0a5e50223539a5b883c97983b48116534dad64f56329765` |
| 2 | `lemma` | [rot_coprime](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/rot-coprime--63cf8a6bb22910aa5e1304a9.md) | 39 | `result-track:63cf8a6bb22910aa5e1304a97700cda13215e28c0d77f4e39c0556c959ec51c6` |
| 3 | `lemma` | [ineq_pqr_contradiction](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/ineq-pqr-contradiction--6070cccbf11d05c5dd2eb5b7.md) | 54 | `result-track:6070cccbf11d05c5dd2eb5b76d29ab2fd96bc9e7f4ac95461ba21fb1074ebb8a` |
| 4 | `theorem` | [Polynomial.flt_catalan_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/polynomial-flt-catalan-deriv--b4d2f177c3aad4b12d463e03.md) | 69 | `result-track:b4d2f177c3aad4b12d463e0324295a47063f5be9a662b0efd35d174eff086eff` |
| 5 | `lemma` | [find_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/find-contract--5835da52d428138b0c6d7761.md) | 129 | `result-track:5835da52d428138b0c6d77611c7013037b5e27cdd472c9ff056f4a1892b46a2e` |
| 6 | `theorem` | [Polynomial.flt_catalan_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/polynomial-flt-catalan-aux--23c6605f90155204b22d3269.md) | 142 | `result-track:23c6605f90155204b22d3269a5a7ff4b82b570260ed91310837402e0c0ff88d9` |
| 7 | `theorem` | [Polynomial.flt_catalan](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/polynomial-flt-catalan--ae2f614368f991b02365e0a9.md) | 194 | `result-track:ae2f614368f991b02365e0a930154fbeae2d959751301ec49dc7da17ae0278d0` |
| 8 | `theorem` | [Polynomial.flt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/polynomial-flt--fc18a09b6b02d5137744f5c8.md) | 218 | `result-track:fc18a09b6b02d5137744f5c87f6e60378cf07f5e1f5d1b65ac71e9e372ef3d12` |
| 9 | `theorem` | [fermatLastTheoremWith'_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/declarations/fermatlasttheoremwith-polynomial--f4e1ac2af099ca6a898320a6.md) | 235 | `result-track:f4e1ac2af099ca6a898320a6cfdf08f448e58ddc20a95d10fecef8aaed476be1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
