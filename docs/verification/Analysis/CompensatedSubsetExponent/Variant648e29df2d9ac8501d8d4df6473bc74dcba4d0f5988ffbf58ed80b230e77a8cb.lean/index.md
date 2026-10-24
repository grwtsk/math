# Verification target: GRWTSK.Analysis.CompensatedSubsetExponent.Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9da36f8b2cc4196457642633e52033b4dca38525",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/index.md) · [Full source](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9da36f8b2cc4196457642633e52033b4dca38525`.

Source path: `GRWTSK/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rescaledLength](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/rescaledlength--3f71a618785354ec20e69c1a.md) | 23 | `declaration-track:3f71a618785354ec20e69c1aa3c3e79f7160e04a14bb17575f8caa3051b5e77c` |
| 2 | `def` | [extraExponent](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/extraexponent--538264e1e3f299c9b63798d5.md) | 24 | `declaration-track:538264e1e3f299c9b63798d5efccacb9016ef1889401303a94571670c00da2d2` |
| 3 | `theorem` | [empty_is_leading](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/empty-is-leading--08f919784f876e84271c4ad4.md) | 26 | `result-track:08f919784f876e84271c4ad4d4c3f3da370b1b4c66203ed72087690447243320` |
| 4 | `theorem` | [nonempty_is_strictly_lower](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/nonempty-is-strictly-lower--5a3a6f4406c6aed526a6861d.md) | 29 | `result-track:5a3a6f4406c6aed526a6861d9dafe0ca865693d077de3bcd01fcfe1fce66457e` |
| 5 | `theorem` | [unique_leading_subset](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/unique-leading-subset--c1c371e1d6390683986e5c31.md) | 34 | `result-track:c1c371e1d6390683986e5c31d47f9f1f8c9b54c3cb68c6f66a0f88e13e961307` |
| 6 | `theorem` | [subset_relative_power_decays](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/subset-relative-power-decays--5b33bb322ff46a8dfbbb5244.md) | 45 | `result-track:5b33bb322ff46a8dfbbb52444ad0fe548fac69b7af781dc0ff8cf2dc38a53405` |
| 7 | `theorem` | [finite_lower_bank_decays](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/finite-lower-bank-decays--436519254f2d4f7121eede06.md) | 50 | `result-track:436519254f2d4f7121eede06bf14660fc8dad7b2aeafac344cd5ec7096ef2db5` |
| 8 | `theorem` | [leading_coefficient_survives](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/leading-coefficient-survives--2fdc62362825bce6bf10f2ba.md) | 58 | `result-track:2fdc62362825bce6bf10f2bac5a638354a84af3bdfd05ddf9364516a48147e69` |
| 9 | `theorem` | [nonzero_leading_packet_eventually_nonzero](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant648e29df2d9ac8501d8d4df6473bc74dcba4d0f5988ffbf58ed80b230e77a8cb.lean/declarations/nonzero-leading-packet-eventually-nonzero--1e96bc9d7685ce1c777c6d40.md) | 66 | `result-track:1e96bc9d7685ce1c777c6d40d12d692f80379efc800771dba89479bd7efc66cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
