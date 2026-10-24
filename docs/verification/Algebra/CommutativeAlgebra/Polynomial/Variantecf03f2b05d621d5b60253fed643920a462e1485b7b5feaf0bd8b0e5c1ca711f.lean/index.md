# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85343fffb3fbeebf89f1dedce8eef23dd12dc37",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85343fffb3fbeebf89f1dedce8eef23dd12dc37`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Expand` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FLT.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FLT.MasonStothers` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ne.isUnit_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/ne-isunit-c--104a448aecf73ee4e9216423.md) | 43 | `result-track:104a448aecf73ee4e92164234e055a25e7d04f414420b39e4c41dad8aa7b2026` |
| 2 | `lemma` | [rot_coprime](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/rot-coprime--7a48f03b87c76bfb7cbcbb63.md) | 47 | `result-track:7a48f03b87c76bfb7cbcbb63468f1892a18d1bb7d0107680eaf08c3e9f3dc155` |
| 3 | `lemma` | [ineq_pqr_contradiction](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/ineq-pqr-contradiction--84b167ae559dfcdbb2b44934.md) | 62 | `result-track:84b167ae559dfcdbb2b449345640505b3cd82748f9d374ec4d4621ed7a0bbf0e` |
| 4 | `theorem` | [Polynomial.flt_catalan_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/polynomial-flt-catalan-deriv--e5a6b9403f2cdfab4d58bf56.md) | 77 | `result-track:e5a6b9403f2cdfab4d58bf56ccaf2d5ca7843e09004cd53961b6b7b141a9a842` |
| 5 | `lemma` | [find_contract](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/find-contract--262d1d05995877afe3eb2424.md) | 137 | `result-track:262d1d05995877afe3eb2424c2124c28f12de7ca523fbaecc51cc6fe5e118bff` |
| 6 | `theorem` | [Polynomial.flt_catalan_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/polynomial-flt-catalan-aux--30836438458d80a67fe22af8.md) | 150 | `result-track:30836438458d80a67fe22af88a88a123cb981ec249c197e81e669ab3ee9a6c96` |
| 7 | `theorem` | [Polynomial.flt_catalan](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/polynomial-flt-catalan--ab43d801cf0324a465b6353d.md) | 202 | `result-track:ab43d801cf0324a465b6353db60ae02e4e7676c9d94c66e6823d758955c7270f` |
| 8 | `theorem` | [Polynomial.flt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/polynomial-flt--78a81fbf23ac60783ea84594.md) | 226 | `result-track:78a81fbf23ac60783ea84594961cc5a10d97ad6d0abf4b00a6ad2043ef2e611f` |
| 9 | `theorem` | [fermatLastTheoremWith'_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/declarations/fermatlasttheoremwith-polynomial--bbb69e0db711e71d5f3a0120.md) | 243 | `result-track:bbb69e0db711e71d5f3a01208ed4a02c35ed3dc29b0fab1c80b5fa1acbafb27f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
