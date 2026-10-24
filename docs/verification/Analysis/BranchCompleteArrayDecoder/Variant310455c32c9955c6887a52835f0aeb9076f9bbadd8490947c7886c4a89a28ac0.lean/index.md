# Verification target: GRWTSK.Analysis.BranchCompleteArrayDecoder.Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce9edc7077f0237b5987f808ff120ec6af461d0e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce9edc7077f0237b5987f808ff120ec6af461d0e`.

Source path: `GRWTSK/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [decoderPrice](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/decoderprice--aedf7b0f5ac1bc1243bbca7a.md) | 21 | `declaration-track:aedf7b0f5ac1bc1243bbca7ac64892b6414d96c78dd074269d664d4a80586efa` |
| 2 | `theorem` | [price_nonnegative](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/price-nonnegative--4da954cabcba664393610d7e.md) | 23 | `result-track:4da954cabcba664393610d7e23d6a8d9459adb6abd6b7eb182fac721a317edfb` |
| 3 | `theorem` | [completed_norm_bound](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/completed-norm-bound--cae385c63c671ba791dbc99e.md) | 26 | `result-track:cae385c63c671ba791dbc99e42ae9cf04e1bd49cc921e1bf02090dd7f3ef0fc4` |
| 4 | `theorem` | [inverse_price_bound](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/inverse-price-bound--bdf74ae19dbb10a674643c77.md) | 39 | `result-track:bdf74ae19dbb10a674643c770e2df869ef7ec727efc207fcaa7d1fecaba6c15e` |
| 5 | `theorem` | [residual_norm_bound](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/residual-norm-bound--a55969253db8620423847008.md) | 46 | `result-track:a55969253db862042384700812d1ca79964fdcf67abe14f34d9279ab0489fab4` |
| 6 | `theorem` | [residual_positive_part](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/residual-positive-part--f7a4ba7a825ee24b8db0637b.md) | 54 | `result-track:f7a4ba7a825ee24b8db0637b62dd7ccaac59b5e542c5ff0bb12a898729a629ad` |
| 7 | `theorem` | [cardinality_price](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/cardinality-price--982a6d052bf7d370c157c18c.md) | 61 | `result-track:982a6d052bf7d370c157c18ca382d2f4af52fd0fbbbea22e7ee8c5b46cef8db2` |
| 8 | `theorem` | [scalar_decoder_preserves_polarity](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/scalar-decoder-preserves-polarity--15f725219f343740611fe706.md) | 68 | `result-track:15f725219f343740611fe706d02574bcd75cf9c407f9a01dca495560cca4ac26` |
| 9 | `theorem` | [signed_decoder_can_reverse_polarity](../../../../mathematics/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean/declarations/signed-decoder-can-reverse-polarity--caf74867f223766e35ead840.md) | 74 | `result-track:caf74867f223766e35ead8402978c527dbf6eb6886ce91bdad6f911fc912ff5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
