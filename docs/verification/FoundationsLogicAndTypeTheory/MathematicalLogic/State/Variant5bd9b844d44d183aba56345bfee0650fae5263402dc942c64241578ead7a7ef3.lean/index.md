# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.State.Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87cd30d05dffbd0e73e617b1a125428636e10839",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87cd30d05dffbd0e73e617b1a125428636e10839`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RationalNeighborhoodProbe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/rationalneighborhoodprobe--2a75a12d4b66adc1d0422cfc.md) | 23 | `declaration-track:2a75a12d4b66adc1d0422cfca7d8735a8e1ee335d01e9e03e57f8ab21dfc01b8` |
| 2 | `abbrev` | [BooleanPresheaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/booleanpresheaf--512c7bde7f3f3f2cc1933185.md) | 27 | `declaration-track:512c7bde7f3f3f2cc19331857f5384f72bccced5d08f8ca1c118b0bd3382822c` |
| 3 | `def` | [CertifiedState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/certifiedstate--07fd0645c6658c18f9dc0c8f.md) | 33 | `declaration-track:07fd0645c6658c18f9dc0c8f92395776f6f956fa24c0347aac079efcae4a23e1` |
| 4 | `def` | [certifiedEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/certifiedencode--16c83d14ffcfc216c4d3833e.md) | 39 | `declaration-track:16c83d14ffcfc216c4d3833e7557da368b1ad3d4972c9fea04888dd08f28164b` |
| 5 | `def` | [certifiedDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/certifieddecode--da1d6d26a3049c044d6e3b68.md) | 51 | `declaration-track:da1d6d26a3049c044d6e3b6892ae9a46026ba171f583b3bb143cf7aa5ba6a98b` |
| 6 | `theorem` | [certifiedDecode_encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/certifieddecode-encode--38e3890c7fdef8182c94d3fe.md) | 59 | `result-track:38e3890c7fdef8182c94d3fe70a73dd5d566d86f25f0d2ae07f7bfd8c5bce6db` |
| 7 | `theorem` | [certifiedEncode_decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/certifiedencode-decode--d1fb9abf2e1588ba6fe57084.md) | 69 | `result-track:d1fb9abf2e1588ba6fe57084ac2efe4ba5b7e1bf650028288207a53c31ad4ffa` |
| 8 | `structure` | [ExactStateSpace](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/exactstatespace--a44fda71b1296796bf73177b.md) | 83 | `declaration-track:a44fda71b1296796bf73177b4be4eeabe821d98888f6e0e4bdc9c83fee9448f8` |
| 9 | `abbrev` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/state--90f388fa18c9d8aa3399ebbb.md) | 91 | `declaration-track:90f388fa18c9d8aa3399ebbb0ddd0f8966f53c7780ac3989b457fd12525ee9b4` |
| 10 | `def` | [encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/encode--d230e38d7c3b6c170ae86727.md) | 94 | `declaration-track:d230e38d7c3b6c170ae86727b99fa84df7ce00b6d2f77331456cd83756b8e21d` |
| 11 | `def` | [decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/decode--59598fb65eee7e2a2b334458.md) | 98 | `declaration-track:59598fb65eee7e2a2b334458da34d9ebd6b066a23fc44503d410e1f7d00de952` |
| 12 | `theorem` | [decode_encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/decode-encode--743c8583397de6b880ea8ed5.md) | 103 | `result-track:743c8583397de6b880ea8ed57b87d57ade070fd49c0dedc8a87894ef0d9f42a7` |
| 13 | `theorem` | [encode_decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/encode-decode--c9048c37f417e0ae2a300e78.md) | 108 | `result-track:c9048c37f417e0ae2a300e78666a787c79a6f45399564f16d48f6fd8c8100c9f` |
| 14 | `abbrev` | [IntegralSkeleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/integralskeleton--15269c03ab80a50d3051e9e4.md) | 119 | `declaration-track:15269c03ab80a50d3051e9e4143d6e7f61d2fc556e7710f635b304c82627ac4a` |
| 15 | `def` | [boolToInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/booltoint--667a2beb4ff4e4c581ce012d.md) | 121 | `declaration-track:667a2beb4ff4e4c581ce012ddc80161186a02efa9c45edcf7a52c0825529f8f8` |
| 16 | `def` | [integralSkeleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/integralskeleton--991bd89487fe96c8a04d4742.md) | 125 | `declaration-track:991bd89487fe96c8a04d4742dccffa6419be3d6ea1b4b76b1c177c66e4b3bc98` |
| 17 | `theorem` | [integralSkeleton_eq_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/integralskeleton-eq-one-iff--bf6e9a84bdcfc141fefae176.md) | 132 | `result-track:bf6e9a84bdcfc141fefae176ec4db84fdecc7e4f8ed46938c34e5606d071213e` |
| 18 | `theorem` | [integralSkeleton_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/integralskeleton-eq-zero-iff--eb5613ceb64a330cc2f31923.md) | 139 | `result-track:eb5613ceb64a330cc2f31923e527b20a6ce5765f497494020b29bfd3b242ff8d` |
| 19 | `structure` | [FinitaryBooleanState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/finitarybooleanstate--0325877b3c09c346136f6e59.md) | 147 | `declaration-track:0325877b3c09c346136f6e5953adf67684128d30a93d96d9e2b13b219aff60de` |
| 20 | `def` | [finitaryIntegralSkeleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/State/Variant5bd9b844d44d183aba56345bfee0650fae5263402dc942c64241578ead7a7ef3.lean/declarations/finitaryintegralskeleton--308757f74f65d6a02bb95051.md) | 152 | `declaration-track:308757f74f65d6a02bb950510a756d76217c8f0032942c8ac7cdd2b11fc08941` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
