# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a434670cdc7eb33fd87f3f7b445af49734c2b8a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a434670cdc7eb33fd87f3f7b445af49734c2b8a`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-sub--dc6b2bd2e2d1d1ba9f501b72.md) | 32 | `result-track:dc6b2bd2e2d1d1ba9f501b72915c1d0a52010016b2b1db599fff5d27c1d023bf` |
| 2 | `theorem` | [cast_pred](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-pred--367bb471b784e3a2a071fc3a.md) | 38 | `result-track:367bb471b784e3a2a071fc3ad1376d30186d3af31339b2d60d4a078c10214a64` |
| 3 | `theorem` | [cast_negSucc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-negsucc--43fc7d88c457077124a20ae1.md) | 52 | `result-track:43fc7d88c457077124a20ae1593f1d42a375ad171c9df082a9ac2af938f8ffa6` |
| 4 | `theorem` | [cast_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-zero--b24618cdd094402b3db0e4a2.md) | 58 | `result-track:b24618cdd094402b3db0e4a2cce28ffdd9974c5041b6e1e81b2cdf33f26c5f1d` |
| 5 | `theorem` | [cast_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-ofnat--f65547eb961f0d88c905467f.md) | 64 | `result-track:f65547eb961f0d88c905467f5681a1394886cc8ff2b37c39cdebfd749142f87c` |
| 6 | `theorem` | [int_cast_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/int-cast-ofnat--242973a6ab161ec7fb6ac419.md) | 71 | `result-track:242973a6ab161ec7fb6ac41923ab03b2404e759c8c02691cd149b27020c5bc9e` |
| 7 | `theorem` | [cast_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-one--1b5d27042105ab17926a60ba.md) | 76 | `result-track:1b5d27042105ab17926a60ba9c9ce57aa03fc20ef70bbd5669e8764f05990e69` |
| 8 | `theorem` | [cast_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-neg--814978a4ec2fd1df11490946.md) | 82 | `result-track:814978a4ec2fd1df11490946d1defbae087f575db45a087f4bc5019ac28c24a3` |
| 9 | `theorem` | [cast_subNatNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-subnatnat--1d000f770d9e4af4dbfb144f.md) | 90 | `result-track:1d000f770d9e4af4dbfb144f6785566e5cd9551a1900c43f1b7a52879d261b2d` |
| 10 | `theorem` | [cast_negOfNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-negofnat--3ce3060340edb997294f9c1b.md) | 103 | `result-track:3ce3060340edb997294f9c1bc2e7831c4b375673e30496133b57a5760251b934` |
| 11 | `theorem` | [cast_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-add--cbd6187c5e29ec2fa2e95ce2.md) | 107 | `result-track:cbd6187c5e29ec2fa2e95ce29e781ae05a3f9d97a36a46c834623168269f61bd` |
| 12 | `theorem` | [cast_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-sub--b7f609875446adeca0f24ff2.md) | 121 | `result-track:b7f609875446adeca0f24ff21c9361d03e48319aa57c5828aabfbb09f3ebbfe7` |
| 13 | `theorem` | [ofNat_bit0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/ofnat-bit0--0afac77713368a69beb9662e.md) | 130 | `result-track:0afac77713368a69beb9662e8264719c15a86ff33297aa418dad24a0133c3f2b` |
| 14 | `theorem` | [ofNat_bit1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/ofnat-bit1--30e7bb905c1bf67b18af56d7.md) | 135 | `result-track:30e7bb905c1bf67b18af56d7f7573a57c14082b13bc7bd7ca0496b7cfacc1b4a` |
| 15 | `theorem` | [cast_bit0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-bit0--21c6539f8dd9a62b77ea5d1c.md) | 140 | `result-track:21c6539f8dd9a62b77ea5d1c79f5013e222d148861a50fd35a42b59deca436e1` |
| 16 | `theorem` | [cast_bit1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-bit1--c058711135c389fa20ca13f0.md) | 145 | `result-track:c058711135c389fa20ca13f03a95ed4d4d52f1ad2afbc71f9d4a95bc5af01cab` |
| 17 | `theorem` | [cast_two](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-two--c46a78914e75a23095daa510.md) | 151 | `result-track:c46a78914e75a23095daa510b170e8a1b2ef0fa58fe670b8a9ee98df612ba2a2` |
| 18 | `theorem` | [cast_three](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-three--2cadadcbf30c2a5f7ce62f94.md) | 155 | `result-track:2cadadcbf30c2a5f7ce62f945c11ade0f482537d1024313125123a48e5e051ff` |
| 19 | `theorem` | [cast_four](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant49395d2920e78dff6284629acb3d58386b18ef9974d2527c6395b391a1868c20.lean/declarations/cast-four--0f77df124140f8f09a3a604b.md) | 159 | `result-track:0f77df124140f8f09a3a604b0d19bfa92fa40e424d0bf6d61dedbbb52053d8b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
