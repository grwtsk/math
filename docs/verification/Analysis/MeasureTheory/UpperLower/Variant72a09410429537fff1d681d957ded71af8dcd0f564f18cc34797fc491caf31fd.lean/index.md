# Verification target: GRWTSK.Analysis.MeasureTheory.UpperLower.Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7f4da183cf52809a5f1e57b3003b14eb354fffd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7f4da183cf52809a5f1e57b3003b14eb354fffd`.

Source path: `GRWTSK/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.UpperLower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.DenselyOrdered` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [aux₀](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/declarations/aux--f9be90fb3eed47da7eba0a34.md) | 58 | `result-track:f9be90fb3eed47da7eba0a3430ae600e4446e0be9f39f029a8eb51c95db97479` |
| 2 | `lemma` | [aux₁](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/declarations/aux--d77f1c514dbcf1b42b495f79.md) | 87 | `result-track:d77f1c514dbcf1b42b495f7909ce8cf947e087ec89202c17043f10e3b6546df0` |
| 3 | `theorem` | [IsUpperSet.null_frontier](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/declarations/isupperset-null-frontier--cac37e9d24861d89a450cf92.md) | 121 | `result-track:cac37e9d24861d89a450cf9278a8e0bf769cc76dbc2b7686719a71a51b2939fd` |
| 4 | `theorem` | [IsLowerSet.null_frontier](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/declarations/islowerset-null-frontier--734cdcd1a110f5e3c54d318d.md) | 132 | `result-track:734cdcd1a110f5e3c54d318dde88c3bbdf410fb1a5ef349168e3ef9c2861c128` |
| 5 | `theorem` | [Set.OrdConnected.null_frontier](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/declarations/set-ordconnected-null-frontier--f18d767f26fc6ef335de6297.md) | 143 | `result-track:f18d767f26fc6ef335de6297bbd0676fb767252fb28aa9953defd945ac2cb8dd` |
| 6 | `theorem` | [Set.OrdConnected.nullMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/declarations/set-ordconnected-nullmeasurableset--89689441ab82f55cbbdd6493.md) | 149 | `result-track:89689441ab82f55cbbdd649341458b76f17abafd4d5668c1953fae4fc698cf16` |
| 7 | `theorem` | [IsAntichain.volume_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant72a09410429537fff1d681d957ded71af8dcd0f564f18cc34797fc491caf31fd.lean/declarations/isantichain-volume-eq-zero--f534c43a92b06c1f203c62bf.md) | 152 | `result-track:f534c43a92b06c1f203c62bf4fff07370eef08e3deb60f80a1d41fe7efd6bf11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
