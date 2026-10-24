# Verification target: GRWTSK.NumberTheory.Rayleigh.Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a44ef0dec35fcd61938bbb7320e8787e9c4d4434",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a44ef0dec35fcd61938bbb7320e8787e9c4d4434`.

Source path: `GRWTSK/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/beattyseq--8002c2c67d645a784e6be133.md) | 53 | `declaration-track:8002c2c67d645a784e6be133cace5544870ef7600f55643f124469baee8914c8` |
| 2 | `def` | [beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/beattyseq--2134f042977e6c19901000e8.md) | 57 | `declaration-track:2134f042977e6c19901000e8c6f5d8738bf5ac0f1ad0b28fac236af30749c617` |
| 3 | `theorem` | [no_collision](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/no-collision--e71e1947290a571eea0e7c8d.md) | 66 | `result-track:e71e1947290a571eea0e7c8dec429cd08b25f71d0c48ca612902e73337fba253` |
| 4 | `theorem` | [no_anticollision](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/no-anticollision--0bdbceb257fc049f5ac926b3.md) | 82 | `result-track:0bdbceb257fc049f5ac926b3079691d27e5bb420dec862b37fac7df3f28615fb` |
| 5 | `theorem` | [hit_or_miss](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/hit-or-miss--39d52bbce4c9adac2d339e59.md) | 93 | `result-track:39d52bbce4c9adac2d339e5923bd718295652cd8c909bbf591048957503baa63` |
| 6 | `theorem` | [hit_or_miss'](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/hit-or-miss--39125b341684a51759dbc7cf.md) | 105 | `result-track:39125b341684a51759dbc7cf57f535cb3fab3abcb6ca4fc07fe8f6e8ff579e0d` |
| 7 | `theorem` | [compl_beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/compl-beattyseq--8a949d56f43779faccc57ac8.md) | 120 | `result-track:8a949d56f43779faccc57ac8f1d318ce9d80f03ad8866566740457065ab945f7` |
| 8 | `theorem` | [compl_beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/compl-beattyseq--e35e6b9b8d3e670ed48bba46.md) | 131 | `result-track:e35e6b9b8d3e670ed48bba4698d82ff045661b3d41f08e151bcd3d7731d3c2cb` |
| 9 | `theorem` | [beattySeq_symmDiff_beattySeq'_pos](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/beattyseq-symmdiff-beattyseq-pos--6c4cb4aae7c7038b93d6a3c0.md) | 139 | `result-track:6c4cb4aae7c7038b93d6a3c0272da649e745da0ec837fe7079e2d3d86ade5d3c` |
| 10 | `theorem` | [beattySeq'_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/beattyseq-symmdiff-beattyseq-pos--9042813f1ae2481b0647f4d9.md) | 162 | `result-track:9042813f1ae2481b0647f4d9f62e102eada4b9084a8b2ad44e6bf750927f6a78` |
| 11 | `theorem` | [Irrational.beattySeq'_pos_eq](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/irrational-beattyseq-pos-eq--6f24ebfe252c5a4d9de78497.md) | 167 | `result-track:6f24ebfe252c5a4d9de784972961f6b08b660305d8f1a9330f4822f19a1792d6` |
| 12 | `theorem` | [Irrational.beattySeq_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/declarations/irrational-beattyseq-symmdiff-beattyseq-pos--3005be33c99ee648ab7490ac.md) | 177 | `result-track:3005be33c99ee648ab7490ac2cee461cc75d182fd9b9afed39984d1def9dc806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
