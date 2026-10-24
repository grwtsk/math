# Verification target: GRWTSK.Analysis.CompensatedSubsetExponent.Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f1ebd37ac353f69fd5d49cbc8cd98bd3d145edb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/index.md) · [Full source](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f1ebd37ac353f69fd5d49cbc8cd98bd3d145edb`.

Source path: `GRWTSK/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean.json)

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
| 1 | `def` | [rescaledLength](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/rescaledlength--5407d7cf4379b12d77bfa52a.md) | 27 | `declaration-track:5407d7cf4379b12d77bfa52a31cdc99602849fe78693ac938f1d0ab3bd96960b` |
| 2 | `def` | [extraExponent](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/extraexponent--25ffe2bc07bc35d41dd35b30.md) | 32 | `declaration-track:25ffe2bc07bc35d41dd35b30176929d06c914445dd29324b8abf1caa840199af` |
| 3 | `theorem` | [empty_is_leading](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/empty-is-leading--71c5165184f03ac9d5a21e43.md) | 34 | `result-track:71c5165184f03ac9d5a21e43f1993836cee1048242ee355a7e9ae1f108ce7867` |
| 4 | `theorem` | [nonempty_is_strictly_lower](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/nonempty-is-strictly-lower--f189b415cd1f4f8612691bd6.md) | 37 | `result-track:f189b415cd1f4f8612691bd6cc53093ca1437b45403615e768e65434788a0098` |
| 5 | `theorem` | [unique_leading_subset](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/unique-leading-subset--e9add508c4724eb704ce90a1.md) | 42 | `result-track:e9add508c4724eb704ce90a131f4c55a60e32536ae8b4afe09a736c61a83eb13` |
| 6 | `theorem` | [subset_relative_power_decays](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/subset-relative-power-decays--b24ce3bb615abcca6267b87e.md) | 53 | `result-track:b24ce3bb615abcca6267b87ebef548a8a4368708b2a9a44d4f9c361fc6fe52d7` |
| 7 | `theorem` | [finite_lower_bank_decays](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/finite-lower-bank-decays--5ca07f72352780c78d302cbe.md) | 58 | `result-track:5ca07f72352780c78d302cbe8ac6f3af031232541191ab0519c8f586a4b14064` |
| 8 | `theorem` | [leading_coefficient_survives](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/leading-coefficient-survives--42d42fc0147db4fbcc74c379.md) | 66 | `result-track:42d42fc0147db4fbcc74c3791297e93c8fd84d44d8dfd4b0000e3c02778df55d` |
| 9 | `theorem` | [nonzero_leading_packet_eventually_nonzero](../../../../mathematics/Analysis/CompensatedSubsetExponent/Variant43e1d364b721d85431176493269b823c95f1555407f8d6ddb3db864b28e3dfb7.lean/declarations/nonzero-leading-packet-eventually-nonzero--0b32ee5e46be9429f49b3139.md) | 74 | `result-track:0b32ee5e46be9429f49b3139febc2d64346d122c53474a3d8194ec2cac5ac831` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
