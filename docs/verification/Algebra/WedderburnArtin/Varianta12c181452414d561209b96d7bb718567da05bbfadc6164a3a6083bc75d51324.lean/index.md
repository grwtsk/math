# Verification target: GRWTSK.Algebra.WedderburnArtin.Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07921bc6f0a24fe0bb7da1bd99bf94cf6ad12e13",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/index.md) · [Full source](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07921bc6f0a24fe0bb7da1bd99bf94cf6ad12e13`.

Source path: `GRWTSK/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteLength` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Isotypic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Congr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSimpleRing.tfae](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/issimplering-tfae--0a9d031efe44b9e74dd11777.md) | 18 | `result-track:0a9d031efe44b9e74dd1177754b250e1577f0693080fd1e5b4cf7d9eca41ad03` |
| 2 | `theorem` | [IsSimpleRing.isSemisimpleRing_iff_isArtinianRing](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/issimplering-issemisimplering-iff-isartinianring--7def0ab4ca1f94cc54c0489c.md) | 31 | `result-track:7def0ab4ca1f94cc54c0489c2a3a11288f0dc346d18d6e19f85d4c1c6e5b232b` |
| 3 | `theorem` | [isSimpleRing_isArtinianRing_iff](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/issimplering-isartinianring-iff--86ed9ee0f1e1ede5464c2c63.md) | 34 | `result-track:86ed9ee0f1e1ede5464c2c6380524c7f582d692ce04673382c03ed0173506e45` |
| 4 | `theorem` | [isIsotypic](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/isisotypic--a58685bc2302b0d49e96f76a.md) | 47 | `result-track:a58685bc2302b0d49e96f76ab7afbf5e0dce3d3345c01c8b539e7d400374a450` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/instance--096cf3534cbe34d03c39b8bb.md) | 50 | `declaration-track:096cf3534cbe34d03c39b8bbd636714f8931e0aa3fd659180d3a2d960ba4cc12` |
| 6 | `theorem` | [exists_ringEquiv_matrix_end_mulOpposite](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/exists-ringequiv-matrix-end-mulopposite--62e5d84880a3e131b1d621cb.md) | 55 | `result-track:62e5d84880a3e131b1d621cbb659678be2bece013c7960ec05a26050e329a25d` |
| 7 | `theorem` | [exists_ringEquiv_matrix_divisionRing](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/exists-ringequiv-matrix-divisionring--38f4b4b504b90f50cdf28618.md) | 64 | `result-track:38f4b4b504b90f50cdf28618e138284a8251b500bec5a1ce701eb9614bb842ba` |
| 8 | `theorem` | [exists_algEquiv_matrix_end_mulOpposite](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/exists-algequiv-matrix-end-mulopposite--19a69be15593bcd52401c83d.md) | 72 | `result-track:19a69be15593bcd52401c83df6121d710e9f76bac5f5064b5e124b228c4891f9` |
| 9 | `theorem` | [exists_algEquiv_matrix_divisionRing](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/exists-algequiv-matrix-divisionring--20da8b2db60ec37172c75a0a.md) | 81 | `result-track:20da8b2db60ec37172c75a0a54f98fb33cfce835b7e95bf99b1f9d2f2c627338` |
| 10 | `theorem` | [exists_algEquiv_matrix_divisionRing_finite](../../../../mathematics/Algebra/WedderburnArtin/Varianta12c181452414d561209b96d7bb718567da05bbfadc6164a3a6083bc75d51324.lean/declarations/exists-algequiv-matrix-divisionring-finite--acb90d6332c9ff6f76e83aba.md) | 89 | `result-track:acb90d6332c9ff6f76e83abaebd4348b9a6af962425921a6d7173b8033c633a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
