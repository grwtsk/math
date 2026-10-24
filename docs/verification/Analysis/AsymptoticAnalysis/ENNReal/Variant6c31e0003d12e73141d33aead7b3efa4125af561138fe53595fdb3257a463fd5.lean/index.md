# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ENNReal.Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "136fd0ad8863ed45b3ff0744d4e3aaa3f743ab3f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `136fd0ad8863ed45b3ff0744d4e3aaa3f743ab3f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.ENatENNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tsum_set_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean/declarations/tsum-set-one--2140f2cf406653d33b3006bf.md) | 28 | `result-track:2140f2cf406653d33b3006bf6547a5c09187a6c3943006d478e35f1a421ec234` |
| 2 | `lemma` | [tsum_set_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean/declarations/tsum-set-const--1fddcbdb04a58dfe0640f05d.md) | 35 | `result-track:1fddcbdb04a58dfe0640f05db5d8c9c10114fe5a50fe873a83ba3ae9ea9e5ef2` |
| 3 | `lemma` | [tsum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean/declarations/tsum-one--6a2cc90980bfc4d56d129637.md) | 42 | `result-track:6a2cc90980bfc4d56d129637ce5ec9433b916749e996db99c87b0230322a8234` |
| 4 | `lemma` | [tsum_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5.lean/declarations/tsum-const--9f01e0020b6ea095c8eec68a.md) | 46 | `result-track:9f01e0020b6ea095c8eec68ae42845bc52affd9f4cb9ea452fb6ebaf5d1312a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
