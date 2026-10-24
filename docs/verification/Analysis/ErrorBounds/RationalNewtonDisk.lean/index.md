# Verification target: GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "321418f59e2f15f55b09b7377513426b4f1eb407",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalNewtonDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `321418f59e2f15f55b09b7377513426b4f1eb407`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalNewtonDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalNewtonDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.NewtonDisk`](../../../../mathematics/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure`](../../../../mathematics/Analysis/ErrorBounds/RationalComplexEnclosure.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Data](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/data--219162cc46902cee8c119408.md) | 27 | `declaration-track:219162cc46902cee8c11940830eb2ab034bcb3fcf13ba859ebccdf490bb2d22a` |
| 2 | `def` | [magnitude](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/magnitude--68d1f7ae7ae8e2e1fcb03e22.md) | 37 | `declaration-track:68d1f7ae7ae8e2e1fcb03e22ac89fdaea3f2dd09ec2b0fbd440c63c04526fbbd` |
| 3 | `def` | [residual](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/residual--259673cfecf4d258790fdd28.md) | 39 | `declaration-track:259673cfecf4d258790fdd284d0224949dee6d68163e72d2e96e3f33db5fe514` |
| 4 | `def` | [contraction](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/contraction--f5f24a939d9151d1c7cac167.md) | 42 | `declaration-track:f5f24a939d9151d1c7cac167c5e61f8616a5ad4d3ee22643d1e866393c1bd1d6` |
| 5 | `def` | [Valid](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/valid--5f3ee001535c5428fda4baa3.md) | 47 | `declaration-track:5f3ee001535c5428fda4baa3bf43c379b5a7b4667d8b520d5b84d09ec362317b` |
| 6 | `instance` | [instDecidableValid](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/instdecidablevalid--d2d31833e1d16bf68f500667.md) | 51 | `declaration-track:d2d31833e1d16bf68f5006675fcfa59576c2f1fbf157108570af6c5f07a19891` |
| 7 | `def` | [check](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/check--7604ef62f7d5e8fc2e04b770.md) | 55 | `declaration-track:7604ef62f7d5e8fc2e04b770bf89193c24279f8957df84525e517e2713693e30` |
| 8 | `def` | [Estimates](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/estimates--985b2ebcf0831131f4e91e87.md) | 58 | `declaration-track:985b2ebcf0831131f4e91e87b8f035411f4f39a9443d48ee0ec9370dda88c754` |
| 9 | `theorem` | [check_iff_valid](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/check-iff-valid--6c48fe4ae87ccdab0f94d8db.md) | 63 | `result-track:6c48fe4ae87ccdab0f94d8dbd61f7b8fd1fc469ea01621c175fc9c16350cb369` |
| 10 | `theorem` | [magnitude_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/magnitude-nonneg--f96420b6c91a275c6dd832c0.md) | 66 | `result-track:f96420b6c91a275c6dd832c073e30faadfc7d937ce191cff56eda9e8a9584004` |
| 11 | `theorem` | [norm_le_magnitude](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/norm-le-magnitude--6007183be822505a3cbe6449.md) | 69 | `result-track:6007183be822505a3cbe6449e77d1bec08d4873e0a4123e911eaf912749de5a7` |
| 12 | `theorem` | [checked_contraction_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/checked-contraction-nonneg--9b1168e4fd98736c912eb969.md) | 72 | `result-track:9b1168e4fd98736c912eb9691d0941ccbed89353c9a8700983adca38341ce614` |
| 13 | `theorem` | [residual_bound](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/residual-bound--cdc56c2c8066cf373285158c.md) | 79 | `result-track:cdc56c2c8066cf373285158ca2a2a851eeeebf9293ac6fbd40de236e0e8c0de6` |
| 14 | `theorem` | [contraction_bound](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/contraction-bound--fd7a3dd0cbc7895e2890d9ff.md) | 97 | `result-track:fd7a3dd0cbc7895e2890d9ff251a9994f58de01e07ffef060d520dd501dd7a19` |
| 15 | `theorem` | [check_sound](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/check-sound--a60c423e48155b69e1697b46.md) | 130 | `result-track:a60c423e48155b69e1697b4643706ef2041d8c18128dffa5f769e38e8d4be016` |
| 16 | `theorem` | [closed_margin_control](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/closed-margin-control--685dafa651409a6d5bbee38f.md) | 145 | `result-track:685dafa651409a6d5bbee38fa15a702f78c78f65077fab73339314182c187949` |
| 17 | `theorem` | [unit_defect_rejected](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/declarations/unit-defect-rejected--caba5c2e59c8537ba98bdfe5.md) | 149 | `result-track:caba5c2e59c8537ba98bdfe5bc931f657338010cd72f21d254fc8a3a218c244d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
