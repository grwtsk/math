# Verification target: GRWTSK.NumberTheory.FundamentalDiscriminant.Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0669118447f2d13c3296dcc21323ae0914c2aa1c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0669118447f2d13c3296dcc21323ae0914c2aa1c`.

Source path: `GRWTSK/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean.json)

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
| 1 | `def` | [IsFundamentalDiscr](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr--5ea05d4d0021e4f43995acd3.md) | 49 | `declaration-track:5ea05d4d0021e4f43995acd3a87073b252e3a1a50f5f54fd6c2ea546ac19c50c` |
| 2 | `theorem` | [isFundamentalDiscr_def](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr-def--2ba3fdf3513675d90e1539d2.md) | 55 | `result-track:2ba3fdf3513675d90e1539d2e89e879c341e420dfd999e3580ab07101a106b4f` |
| 3 | `theorem` | [IsFundamentalDiscr.ne_zero](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr-ne-zero--eb515de300e888b6ff63cd8b.md) | 60 | `result-track:eb515de300e888b6ff63cd8b88c6a67fe1c1878f0b82a376df29907bfc12cdb3` |
| 4 | `theorem` | [IsFundamentalDiscr.emod_four_eq_zero_or_one](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr-emod-four-eq-zero-or-one--c7d124f98d821ddffe8407f4.md) | 63 | `result-track:c7d124f98d821ddffe8407f48bcebec184f4cbfd1c735eb75a5362eca7861a9c` |
| 5 | `theorem` | [isFundamentalDiscr_iff_squarefree](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr-iff-squarefree--bb61a87dc277f47bb4c627f2.md) | 68 | `result-track:bb61a87dc277f47bb4c627f2d69adc92a1e5a04dcb131ab7c318b9d32465ca84` |
| 6 | `theorem` | [isFundamentalDiscr_iff_forall_prime](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr-iff-forall-prime--836f50d42d82e34610b584ff.md) | 87 | `result-track:836f50d42d82e34610b584ff50f794693e887d26ae5d3f571255fda4b5d1971c` |
| 7 | `theorem` | [isFundamentalDiscr_four_mul_add_one](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr-four-mul-add-one--a1cd4782d80c888a0bdaa951.md) | 99 | `result-track:a1cd4782d80c888a0bdaa951761b5b39b470ec62919d1b02952761ee80aa5474` |
| 8 | `theorem` | [isFundamentalDiscr_four_mul](../../../../mathematics/NumberTheory/FundamentalDiscriminant/Variant11763f36f9120b7b09de133120c63e2ba2b1b6b3740024c4a76ad0432e761ba2.lean/declarations/isfundamentaldiscr-four-mul--4c535dbd83003436e73ccf96.md) | 103 | `result-track:4c535dbd83003436e73ccf967464bc4893bb1eed6160f6cd1e5d6b6d7f14774b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
