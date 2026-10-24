# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.CertifiedPrime.Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54e35e5e27492992dede85e1d7ff597d16765e97",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54e35e5e27492992dede85e1d7ff597d16765e97`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.Event` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean/declarations/certifiedprime--360a612d7e30f53bb96cf733.md) | 23 | `declaration-track:360a612d7e30f53bb96cf73307b161fcde1f833266c880f114cbc1cd47f0cabe` |
| 2 | `theorem` | [two_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean/declarations/two-le--58cf6ae53ffee971904fc09f.md) | 32 | `result-track:58cf6ae53ffee971904fc09f0c6b778994a0fbabd24157bc4c9ef815e9b2b82b` |
| 3 | `theorem` | [ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean/declarations/ne-zero--cc7289be29c7b2f0968bad72.md) | 35 | `result-track:cc7289be29c7b2f0968bad72d42907c7e9ccc73296732ca4fdc862f4efcbd5dc` |
| 4 | `theorem` | [ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Varianta06ab7cd06f772812f303bac6cce2df5b0356fc059853a8dc0fa7e8c520ef426.lean/declarations/ne-one--468195cc8cc6b853cddd18ad.md) | 38 | `result-track:468195cc8cc6b853cddd18adff3eee8aa03b7efb0919284f72098e34dee291e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
