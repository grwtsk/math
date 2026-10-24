# Verification target: GRWTSK.Algebra.Defs.Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50bb187ac45667f4bb36646ece744303931d11dd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50bb187ac45667f4bb36646ece744303931d11dd`.

Source path: `GRWTSK/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAlgebraic](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/isalgebraic--7521cffa7ad024d7a8d47553.md) | 49 | `declaration-track:7521cffa7ad024d7a8d475539419c467fca56313f997bbf87a79d001763d392d` |
| 2 | `def` | [Transcendental](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/transcendental--7897874ce9ba1d130114bc2f.md) | 53 | `declaration-track:7897874ce9ba1d130114bc2f0c3336fdb8bb5e026cf1af7bf712b04157a90922` |
| 3 | `theorem` | [transcendental_iff](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/transcendental-iff--a638d087be2c7340b000478b.md) | 60 | `result-track:a638d087be2c7340b000478b7a61c81976622bc96243518dcd5c14ac08be7d30` |
| 4 | `def` | [Subalgebra.IsAlgebraic](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/subalgebra-isalgebraic--f938398f4b12e598cad636e8.md) | 66 | `declaration-track:f938398f4b12e598cad636e8069351f1704c51aaf969d3b21d102cb16167334f` |
| 5 | `class` | [Algebra.IsAlgebraic](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/algebra-isalgebraic--36d422927c166136f7f42dce.md) | 73 | `declaration-track:36d422927c166136f7f42dce06901515da57b462d868d0fab226f7ebe6312e76` |
| 6 | `class` | [Algebra.Transcendental](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/algebra-transcendental--a7861f9bfb49dbe048d3a218.md) | 77 | `declaration-track:a7861f9bfb49dbe048d3a2187874e2efb97c50ddfb046b00909391a3b41b7f66` |
| 7 | `lemma` | [Algebra.isAlgebraic_def](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/algebra-isalgebraic-def--ebf07cdd0917e1707b42d549.md) | 82 | `result-track:ebf07cdd0917e1707b42d549e99a4fa8db7db66c620708a14477c236ae0e7ec8` |
| 8 | `lemma` | [Algebra.transcendental_def](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/algebra-transcendental-def--5d0c2652990925a25d335249.md) | 85 | `result-track:5d0c2652990925a25d3352497f8bfb9be4efe9a767cf43eb5fd34d07c199ae20` |
| 9 | `theorem` | [Algebra.transcendental_iff_not_isAlgebraic](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/algebra-transcendental-iff-not-isalgebraic--579185869104ee8923a60fba.md) | 88 | `result-track:579185869104ee8923a60fba0ed30a277bb63722f4e76d24284808d07f4e90b5` |
| 10 | `theorem` | [Subalgebra.isAlgebraic_iff](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/subalgebra-isalgebraic-iff--0da6ee7f3e08abe17ebf3382.md) | 93 | `result-track:0da6ee7f3e08abe17ebf3382dcaf107b38d9184153b8b352e35baa1e3c9bfa9c` |
| 11 | `theorem` | [Algebra.isAlgebraic_iff](../../../../mathematics/Algebra/Defs/Variant4a5aec2d9b3ae15ea6d56b4ac5c9caa36bfb276f884b7ef3e3560fe0dafd0af3.lean/declarations/algebra-isalgebraic-iff--f16f02a3e866ddd41e0a99f9.md) | 103 | `result-track:f16f02a3e866ddd41e0a99f93597dcccdeb4573d7a139f645da84eb5bc4911c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
