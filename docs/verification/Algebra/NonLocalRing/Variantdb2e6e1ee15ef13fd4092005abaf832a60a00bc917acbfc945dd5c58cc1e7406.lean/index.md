# Verification target: GRWTSK.Algebra.NonLocalRing.Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73f8b83cadec769048ba24e9226c0775521ce60d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73f8b83cadec769048ba24e9226c0775521ce60d`.

Source path: `GRWTSK/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_isLocalRing_def](../../../../mathematics/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/declarations/not-islocalring-def--cd860043024bb2e5c983367b.md) | 36 | `result-track:cd860043024bb2e5c983367b86a36ca70329a683644e3cde77cc78878fc94463` |
| 2 | `theorem` | [not_isLocalRing_of_nontrivial_pi](../../../../mathematics/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/declarations/not-islocalring-of-nontrivial-pi--7a5861e482de45d09d6f8692.md) | 42 | `result-track:7a5861e482de45d09d6f8692c2a46b3e2a4cf82f5888cd3173336434dca4e997` |
| 3 | `theorem` | [not_isLocalRing_of_prod_of_nontrivial](../../../../mathematics/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/declarations/not-islocalring-of-prod-of-nontrivial--adcc7b71c8a73df232eab1e6.md) | 53 | `result-track:adcc7b71c8a73df232eab1e6555cf33eec051984d7684d44b7149cbc5032d377` |
| 4 | `theorem` | [not_isLocalRing_tfae](../../../../mathematics/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/declarations/not-islocalring-tfae--5105571b6675189da6bbc161.md) | 66 | `result-track:5105571b6675189da6bbc16176d04f40abb5924a601af101e99acfb31fc765a6` |
| 5 | `theorem` | [exists_surjective_of_not_isLocalRing.](../../../../mathematics/Algebra/NonLocalRing/Variantdb2e6e1ee15ef13fd4092005abaf832a60a00bc917acbfc945dd5c58cc1e7406.lean/declarations/exists-surjective-of-not-islocalring--29db75618eb50b5e54e7a8ba.md) | 81 | `result-track:29db75618eb50b5e54e7a8ba5028a4459095deec346d51874edb769ee7c5b52f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
