# Verification target: GRWTSK.Algebra.ReesAlgebra.Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/index.md) · [Full source](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482`.

Source path: `GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteType` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/reesalgebra--29e70f04364b2713f7e1bbc1.md) | 38 | `declaration-track:29e70f04364b2713f7e1bbc165d011100a76eedb63f2d631cce663c21d740d11` |
| 2 | `theorem` | [mem_reesAlgebra_iff](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/mem-reesalgebra-iff--0c0bf181486cb465a29aca70.md) | 64 | `result-track:0c0bf181486cb465a29aca70018bca62d65f4cf3158ff6d42f2451078c15f417` |
| 3 | `theorem` | [mem_reesAlgebra_iff_support](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/mem-reesalgebra-iff-support--b889daddaf5f5370741f986a.md) | 68 | `result-track:b889daddaf5f5370741f986ae4b19689f0a21b73452a7337729a64230c6e4f7a` |
| 4 | `theorem` | [reesAlgebra.monomial_mem](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/reesalgebra-monomial-mem--e89fd93d6d24810de1d7c9eb.md) | 76 | `result-track:e89fd93d6d24810de1d7c9eb6b0409c5e32313a4c71b720d9fe9877e848443a9` |
| 5 | `theorem` | [monomial_mem_adjoin_monomial](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/monomial-mem-adjoin-monomial--928c8fd2b8b93b0a9e52e91b.md) | 82 | `result-track:928c8fd2b8b93b0a9e52e91b30d635690e48dd3fe393f2642539dbf961e33013` |
| 6 | `theorem` | [adjoin_monomial_eq_reesAlgebra](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/adjoin-monomial-eq-reesalgebra--98607c70b6a1e9b28fbbb9b2.md) | 98 | `result-track:98607c70b6a1e9b28fbbb9b2bbe7013245d6df2fecefc629414af735a203af10` |
| 7 | `theorem` | [reesAlgebra.fg](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/reesalgebra-fg--8ab030bc3463a7a759a25726.md) | 113 | `result-track:8ab030bc3463a7a759a25726cd6b8cc70ec7188b6af90097aa93061f3b93fcd2` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/instance--9dfc5b7e20dddd83fbcc0142.md) | 126 | `declaration-track:9dfc5b7e20dddd83fbcc0142ec2bc2625982ba7537126ca501c0bbf146fa61b2` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/declarations/instance--f2a0491e5e1fa2a25eee60de.md) | 129 | `declaration-track:f2a0491e5e1fa2a25eee60ded36ba9a9e9707fada92fa29e1165f79d26c6ee98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
