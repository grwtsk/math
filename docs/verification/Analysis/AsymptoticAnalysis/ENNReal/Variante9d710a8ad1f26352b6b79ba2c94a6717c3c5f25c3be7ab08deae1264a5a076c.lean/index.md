# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ENNReal.Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c611b576d8ca14ca374687c4ac79cb6742ffba75",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c611b576d8ca14ca374687c4ac79cb6742ffba75`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.ENatENNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tsum_set_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean/declarations/tsum-set-one--fec2dade974f3db68db8a02a.md) | 36 | `result-track:fec2dade974f3db68db8a02a483c10f5be479c02fdc357f83ba0bebbd2669d6c` |
| 2 | `lemma` | [tsum_set_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean/declarations/tsum-set-const--ed95d44b5ecf36a5e6e35079.md) | 43 | `result-track:ed95d44b5ecf36a5e6e3507992632cae29da774a57373fc7ea17f1351d024053` |
| 3 | `lemma` | [tsum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean/declarations/tsum-one--2e805b7ec46f5eae87d0ec18.md) | 50 | `result-track:2e805b7ec46f5eae87d0ec18620e49a8ca625b687c3ff601518a0f7fc237ab60` |
| 4 | `lemma` | [tsum_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/ENNReal/Variante9d710a8ad1f26352b6b79ba2c94a6717c3c5f25c3be7ab08deae1264a5a076c.lean/declarations/tsum-const--913d90ad203c6561b33a7c7d.md) | 54 | `result-track:913d90ad203c6561b33a7c7dd5fa04d70c22145bab9bcc5855649b7317a967b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
