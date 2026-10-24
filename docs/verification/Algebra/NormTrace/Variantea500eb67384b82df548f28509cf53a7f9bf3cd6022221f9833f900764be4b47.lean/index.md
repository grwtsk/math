# Verification target: GRWTSK.Algebra.NormTrace.Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49947e279844a45f5bbc30dd87c0dc701ade7e2c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/index.md) · [Full source](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49947e279844a45f5bbc30dd87c0dc701ade7e2c`.

Source path: `GRWTSK/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.map_leftMulMatrix_localization](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/declarations/algebra-map-leftmulmatrix-localization--46855d680ee910e8017d1483.md) | 48 | `result-track:46855d680ee910e8017d1483213f5ceccb169b0a8d0e982b6797593650ce1caa` |
| 2 | `theorem` | [Algebra.norm_localization](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/declarations/algebra-norm-localization--bae669295691fd8ac25fad54.md) | 59 | `result-track:bae669295691fd8ac25fad545559dacb030331281f577b8c2a0103aaaba869a4` |
| 3 | `lemma` | [Algebra.norm_eq_iff](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/declarations/algebra-norm-eq-iff--d281fbc2d79670b1671e822d.md) | 71 | `result-track:d281fbc2d79670b1671e822d02e67a12a55c790ad956329e3a67fcdd38bbed1f` |
| 4 | `theorem` | [Algebra.trace_localization](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/declarations/algebra-trace-localization--3c7260c0bbc4131012bc0061.md) | 80 | `result-track:3c7260c0bbc4131012bc0061a5c804a9844599baa09e14c5efa0bc67b048f22b` |
| 5 | `theorem` | [Algebra.traceMatrix_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/declarations/algebra-tracematrix-localizationlocalization--0f3298db6d4bb5b21ddf37ce.md) | 98 | `result-track:0f3298db6d4bb5b21ddf37ce8e23c21a4aeff274a4e890234f3b22608923b3ff` |
| 6 | `theorem` | [Algebra.discr_localizationLocalization](../../../../mathematics/Algebra/NormTrace/Variantea500eb67384b82df548f28509cf53a7f9bf3cd6022221f9833f900764be4b47.lean/declarations/algebra-discr-localizationlocalization--fb9370aea1b8c5e6c3a91e89.md) | 112 | `result-track:fb9370aea1b8c5e6c3a91e894641796d934a94b5c834ae7b8a9974d6dbcb720b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
