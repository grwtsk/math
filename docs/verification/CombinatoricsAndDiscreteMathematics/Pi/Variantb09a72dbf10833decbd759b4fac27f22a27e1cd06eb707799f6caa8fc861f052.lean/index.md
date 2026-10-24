# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c82dcc18b1cb786cf9355daaff9b4b79e8f90ea",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c82dcc18b1cb786cf9355daaff9b4b79e8f90ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Nodup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pi.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-empty--7666b83f615a26443f8d1324.md) | 33 | `declaration-track:7666b83f615a26443f8d1324d0c421105757e2b3159c207d4719f427b658fb9b` |
| 2 | `def` | [Pi.cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-cons--9267fb29ee939661f09236c2.md) | 43 | `declaration-track:9267fb29ee939661f09236c2748ea4bc51ce3aa292456b6e7cefe8f55613ffa3` |
| 3 | `theorem` | [Pi.cons_same](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-cons-same--4c781678b587ee7a7c30f387.md) | 47 | `result-track:4c781678b587ee7a7c30f38756a92fb802704c6bb8400f94bf75ea02630096cd` |
| 4 | `theorem` | [Pi.cons_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-cons-ne--dafbd853965308f2b0de9a8f.md) | 52 | `result-track:dafbd853965308f2b0de9a8f8080397678e2d106e590240f10558e4027951130` |
| 5 | `theorem` | [Pi.cons_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-cons-swap--c6b64839bae03a9be8458504.md) | 57 | `result-track:c6b64839bae03a9be8458504c2677082a2cb0b6ed7f1d6233c7a1a797f7def63` |
| 6 | `theorem` | [pi.cons_eta](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-cons-eta--1c51cfd0dd9fa3a0775375e8.md) | 70 | `result-track:1c51cfd0dd9fa3a0775375e802c27f47b173b5a0174c29a5afbfc736485170ea` |
| 7 | `theorem` | [Pi.cons_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-cons-injective--20a3b32c4477bbd0ac3a8459.md) | 79 | `result-track:20a3b32c4477bbd0ac3a8459c190faad659a1bbca11b7ca772ee7a6fb9406a3f` |
| 8 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi--b0711b5dd6854fe7046cf8d0.md) | 92 | `declaration-track:b0711b5dd6854fe7046cf8d093cfd6ebc44c93384f6d0eedde55449bdfc0c2d1` |
| 9 | `theorem` | [pi_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-zero--361cfb8a0c6f74cf10ebee95.md) | 113 | `result-track:361cfb8a0c6f74cf10ebee9574551dc083b5fd7a1e1b55f5b57d0c34a4c9f9f6` |
| 10 | `theorem` | [pi_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/pi-cons--2b17abb7ed4b4f40e746ed28.md) | 118 | `result-track:2b17abb7ed4b4f40e746ed28a206c449b7890301006655c606a640c60890ec42` |
| 11 | `theorem` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/card-pi--524466d1eb945d3a7bee4913.md) | 123 | `result-track:524466d1eb945d3a7bee49134508d3a7c51fcfbc8d38f4b047d9542436af5cf8` |
| 12 | `theorem` | [Nodup.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/nodup-pi--0f262f157d052cb753a8016c.md) | 128 | `result-track:0f262f157d052cb753a8016c5a648b674dc61069f9b48162ebefec1e03907383` |
| 13 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantb09a72dbf10833decbd759b4fac27f22a27e1cd06eb707799f6caa8fc861f052.lean/declarations/mem-pi--bf577db83f5b22f374cd984c.md) | 147 | `result-track:bf577db83f5b22f374cd984ceeff71bd034bf13db630813557772fb0c620a00f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
