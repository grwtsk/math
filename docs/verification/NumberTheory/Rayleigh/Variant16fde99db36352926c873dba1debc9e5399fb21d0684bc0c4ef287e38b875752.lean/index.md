# Verification target: GRWTSK.NumberTheory.Rayleigh.Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "392883f9f031f74fead3857af0e8c9c219536ea9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `392883f9f031f74fead3857af0e8c9c219536ea9`.

Source path: `GRWTSK/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean.json)

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
| 1 | `def` | [beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/beattyseq--467d7a7d9ee430909d76baab.md) | 61 | `declaration-track:467d7a7d9ee430909d76baab56f6479916a61cc80520b2b02b519dbc35c2dd94` |
| 2 | `def` | [beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/beattyseq--e7f98ecb612ab4379b01cb52.md) | 65 | `declaration-track:e7f98ecb612ab4379b01cb528a73cd4a0ca9b67e940328c43003a4a502e02fe3` |
| 3 | `theorem` | [no_collision](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/no-collision--d83b81f8474f51ed722347eb.md) | 74 | `result-track:d83b81f8474f51ed722347eb0ec251883489152a29a49f24b83796a29961cb37` |
| 4 | `theorem` | [no_anticollision](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/no-anticollision--7ab3a1b04a3e67a8c93630c3.md) | 90 | `result-track:7ab3a1b04a3e67a8c93630c340d5a01f48e11481eea6280f4667b69975f54c62` |
| 5 | `theorem` | [hit_or_miss](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/hit-or-miss--4202617b88d015eed87b4a78.md) | 101 | `result-track:4202617b88d015eed87b4a7811bdd75ec46b9664196c82b310d3f0499713b2ea` |
| 6 | `theorem` | [hit_or_miss'](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/hit-or-miss--22b376c30be452b6fadfc483.md) | 113 | `result-track:22b376c30be452b6fadfc48330788c507016ee3379e79deadb328f8406d47750` |
| 7 | `theorem` | [compl_beattySeq](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/compl-beattyseq--9d3b8c9658401d6ab378b3e3.md) | 128 | `result-track:9d3b8c9658401d6ab378b3e36dcd18f674330d79ce2ff8c4d93f41cea89fb45f` |
| 8 | `theorem` | [compl_beattySeq'](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/compl-beattyseq--27305f4495a6c7016987e35d.md) | 139 | `result-track:27305f4495a6c7016987e35deda8a0550d2a9cd76c0e177bf5ceba4797f2126b` |
| 9 | `theorem` | [beattySeq_symmDiff_beattySeq'_pos](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/beattyseq-symmdiff-beattyseq-pos--11fb4464f698d5e765de33f4.md) | 147 | `result-track:11fb4464f698d5e765de33f4ed5b7d8004984a13589cfe12a21480d24d62d051` |
| 10 | `theorem` | [beattySeq'_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/beattyseq-symmdiff-beattyseq-pos--0798440bfae57321a7daf737.md) | 170 | `result-track:0798440bfae57321a7daf7379ac572641aa62b8c8fee7b751e5675ce58973c07` |
| 11 | `theorem` | [Irrational.beattySeq'_pos_eq](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/irrational-beattyseq-pos-eq--aa272ad34ed5681ff5bc1ca1.md) | 175 | `result-track:aa272ad34ed5681ff5bc1ca1ad23a58fc0fad2b032009929e78a34ea2d2af08d` |
| 12 | `theorem` | [Irrational.beattySeq_symmDiff_beattySeq_pos](../../../../mathematics/NumberTheory/Rayleigh/Variant16fde99db36352926c873dba1debc9e5399fb21d0684bc0c4ef287e38b875752.lean/declarations/irrational-beattyseq-symmdiff-beattyseq-pos--f4c9d9ef127240156f35586a.md) | 185 | `result-track:f4c9d9ef127240156f35586a34bd345d2a1cf4f211adb29bac8e38f6d61f9663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
