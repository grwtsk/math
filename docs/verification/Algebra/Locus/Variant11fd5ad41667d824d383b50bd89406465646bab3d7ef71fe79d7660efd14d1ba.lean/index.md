# Verification target: GRWTSK.Algebra.Locus.Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "214e1a6125d787cfd80ec828130db0c1b6ff6d44",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `214e1a6125d787cfd80ec828130db0c1b6ff6d44`.

Source path: `GRWTSK/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Etale.Kaehler` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsUnramifiedAt](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/declarations/isunramifiedat--cf9077adba7a2b401ca07977.md) | 36 | `declaration-track:cf9077adba7a2b401ca0797753d5744952bf24a5821ec29efe98048214edf275` |
| 2 | `def` | [unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/declarations/unramifiedlocus--32ec73a237fdf728afb34171.md) | 41 | `declaration-track:32ec73a237fdf728afb34171c0b2cf62cb093e32ea3077b136b076c8e92777ab` |
| 3 | `lemma` | [unramifiedLocus_eq_compl_support](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/declarations/unramifiedlocus-eq-compl-support--5a396b1967af11e89257f7b3.md) | 46 | `result-track:5a396b1967af11e89257f7b3fd38dce788aa8067e73279c45606871b480f0ce3` |
| 4 | `lemma` | [basicOpen_subset_unramifiedLocus_iff](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/declarations/basicopen-subset-unramifiedlocus-iff--4fe6bc5deb333361abcf5d1d.md) | 54 | `result-track:4fe6bc5deb333361abcf5d1da9669f8b37bf93de0b2ace87a666acda1f6f82da` |
| 5 | `lemma` | [unramifiedLocus_eq_univ_iff](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/declarations/unramifiedlocus-eq-univ-iff--ac456f9d36cb97940de6dcc0.md) | 63 | `result-track:ac456f9d36cb97940de6dcc0127a66c614fb397d1b102b29db13d633df42c1b0` |
| 6 | `lemma` | [isOpen_unramifiedLocus](../../../../mathematics/Algebra/Locus/Variant11fd5ad41667d824d383b50bd89406465646bab3d7ef71fe79d7660efd14d1ba.lean/declarations/isopen-unramifiedlocus--6e8961f85731f6cdc29b23fd.md) | 68 | `result-track:6e8961f85731f6cdc29b23fd8fbb23231da8fab1dd763d181a703fa2fa7f407a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
