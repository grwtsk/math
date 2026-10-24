# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLattice.Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f18c3198b76f9eebb84134805c144da6079e2b7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f18c3198b76f9eebb84134805c144da6079e2b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ciSup_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/declarations/cisup-mul--3f81e2d8f1fe5c9377399716.md) | 29 | `result-track:3f81e2d8f1fe5c9377399716ad996cfa27d80e69fe695b7c4c17130d89bb60dc` |
| 2 | `lemma` | [ciSup_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/declarations/cisup-div--7dfebf6c952cd7622243934c.md) | 33 | `result-track:7dfebf6c952cd7622243934ce97c22781f558e77980ba0f1f075b4632017af9d` |
| 3 | `lemma` | [ciInf_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/declarations/ciinf-mul--3f2a7e3ea06966fb46f44c51.md) | 37 | `result-track:3f2a7e3ea06966fb46f44c5168ebcb1e8f9b1bf20c6eec8a62dc3144617ce365` |
| 4 | `lemma` | [ciInf_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/declarations/ciinf-div--dc9314a56f60ebc6cc9d2474.md) | 41 | `result-track:dc9314a56f60ebc6cc9d24741df312ed83f9962adcc5e401290025756bd53e44` |
| 5 | `lemma` | [mul_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/declarations/mul-cisup--b3a53ffd7f31a210fbf2aa72.md) | 50 | `result-track:b3a53ffd7f31a210fbf2aa72c6beb35a99f2a32950d12ffedbb186d9a1a10d84` |
| 6 | `lemma` | [mul_ciInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variante6cf2ecc2fccb0e8f089f8fd2fb3e5c74d95d209ae95a1332eb18fd66376b951.lean/declarations/mul-ciinf--3fc84b4a2e59381e0b9aabd4.md) | 54 | `result-track:3fc84b4a2e59381e0b9aabd4ec51047b3bea8491c2717e081b3be21e56c83e58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
