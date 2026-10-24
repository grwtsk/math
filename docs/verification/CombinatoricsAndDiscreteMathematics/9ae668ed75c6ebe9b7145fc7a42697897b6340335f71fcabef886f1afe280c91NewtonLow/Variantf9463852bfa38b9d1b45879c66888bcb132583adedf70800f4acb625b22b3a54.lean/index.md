# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow.Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f3100a1b04dc3ecad3b5c5e7bde697d086027ea",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f3100a1b04dc3ecad3b5c5e7bde697d086027ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Vieta` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [esymm_cons_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean/declarations/esymm-cons-succ--7cd83ce7b0ee0f66b370705f.md) | 13 | `result-track:7cd83ce7b0ee0f66b370705fc880ab74addbfb817287ec8d4251313fd8b551a0` |
| 2 | `lemma` | [esymm_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean/declarations/esymm-zero--40f64993b74217a14b3b8c70.md) | 16 | `result-track:40f64993b74217a14b3b8c70b42b63c5292655b4286417e44c0b9df6efa055e9` |
| 3 | `lemma` | [newton_low](../../../../mathematics/CombinatoricsAndDiscreteMathematics/9ae668ed75c6ebe9b7145fc7a42697897b6340335f71fcabef886f1afe280c91NewtonLow/Variantf9463852bfa38b9d1b45879c66888bcb132583adedf70800f4acb625b22b3a54.lean/declarations/newton-low--80615fa0c14ea8d9c7dbcc19.md) | 18 | `result-track:80615fa0c14ea8d9c7dbcc191bb9267e18bd81b274f438a5c1850f9befd68078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
