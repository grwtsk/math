# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PosLog.Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c2ee58e2cb05bb5ffd7c4a393e7ff06eb04d239",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c2ee58e2cb05bb5ffd7c4a393e7ff06eb04d239`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog--7143b02ad8ff084a9186c214.md) | 27 | `declaration-track:7143b02ad8ff084a9186c214db6d829568c89aa8ffe9f2e36da1c9c9d9a39016` |
| 2 | `theorem` | [posLog_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-def--a6cc256f01d9f4a2ba62d828.md) | 33 | `result-track:a6cc256f01d9f4a2ba62d8288cdb43916a2e430c1d613137522f18b89f41d3fc` |
| 3 | `theorem` | [posLog_sub_posLog_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-sub-poslog-inv--ecb50b5e86c2055a97a4c320.md) | 39 | `result-track:ecb50b5e86c2055a97a4c32076eb58c4c55e9daa177bc418bb20ef6d3314c4e3` |
| 4 | `theorem` | [half_mul_log_add_log_abs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/half-mul-log-add-log-abs--a2577600025d63b6127aed9a.md) | 47 | `result-track:a2577600025d63b6127aed9aa004d31c995bfd26f7c0360fba73fc0b4c13d492` |
| 5 | `theorem` | [posLog_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-nonneg--c4f9f2597449f85a03631c0c.md) | 54 | `result-track:c4f9f2597449f85a03631c0c52a53fc2747c56e183b89134df7b5f872bc53237` |
| 6 | `theorem` | [posLog_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-neg--97b9731002a9d0fc08c1e183.md) | 57 | `result-track:97b9731002a9d0fc08c1e183bcf284733ba30cfffdc539f00c376fb39b2562c8` |
| 7 | `theorem` | [posLog_abs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-abs--958cd1205641e5f7419a21e3.md) | 60 | `result-track:958cd1205641e5f7419a21e34564f5a71fd00120beef0eb6c10c0bdcdf8d9a20` |
| 8 | `theorem` | [posLog_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-eq-zero-iff--abab4865073fc6cb31de9518.md) | 63 | `result-track:abab4865073fc6cb31de9518aaf4cd2e54fd928b181550b38f06f0b4f97a0b93` |
| 9 | `theorem` | [posLog_eq_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-eq-log--ae5e4774c9e1050649884a07.md) | 68 | `result-track:ae5e4774c9e1050649884a07596c9552eb4af5ed01d855a06808ec2000f38885` |
| 10 | `theorem` | [log_of_nat_eq_posLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/log-of-nat-eq-poslog--35defe3a5486224d5cf7596d.md) | 74 | `result-track:35defe3a5486224d5cf7596dba1adf7413c32cc6c6da90033d7bd26a84d53bd6` |
| 11 | `theorem` | [monotoneOn_posLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/monotoneon-poslog--82c9dfd8aca0db1fa07a44ab.md) | 80 | `result-track:82c9dfd8aca0db1fa07a44ab9bf234af3e61da9d854413208bad5f9896b5e892` |
| 12 | `theorem` | [posLog_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-mul--4ad3916ee1f7383da85a1dab.md) | 95 | `result-track:4ad3916ee1f7383da85a1dab0cbb30ca57b4d5ee176a407bb678f73b822cf9e2` |
| 13 | `theorem` | [posLog_nat_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-nat-mul--6c5ce7dcdc71a79ddae6405b.md) | 107 | `result-track:6c5ce7dcdc71a79ddae6405b3ba21d40736c9fc7e06a747920c0772795976593` |
| 14 | `theorem` | [posLog_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-prod--8c93f0c8f4adbc9889009eba.md) | 114 | `result-track:8c93f0c8f4adbc9889009eba1e8e1ff19f767a0e3c1bb80ae37c3fe15de64230` |
| 15 | `theorem` | [posLog_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-sum--db37a9893a6b59d4fab3b024.md) | 131 | `result-track:db37a9893a6b59d4fab3b0241836b208125fd228122492a5a99c1c93d95977fb` |
| 16 | `theorem` | [posLog_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PosLog/Variantc642dd3abfd6995f0e936bedc70afa7a99cde8340b7fe43deef38fcddb23ad01.lean/declarations/poslog-add--3e04fdcbd6ebf4d689a24f80.md) | 159 | `result-track:3e04fdcbd6ebf4d689a24f8004a17dcb7e07687c8256191674d9f593e829a395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
