# Verification target: GRWTSK.Algebra.GroupTheory.Support.Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ca72287a9370bf2ffac39840b7ae159f0fb654e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ca72287a9370bf2ffac39840b7ae159f0fb654e`.

Source path: `GRWTSK/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/mulsupport--93223b18612ce1e145f54734.md) | 45 | `declaration-track:93223b18612ce1e145f547346b32234b95a8432e9aee9663d5358f7c5b71bc7a` |
| 2 | `theorem` | [mem_mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/mem-mulsupport--71edd915b78a326a61ad1845.md) | 51 | `result-track:71edd915b78a326a61ad1845f955686789943f3eb5aa507c7ab6f8919c040e9a` |
| 3 | `theorem` | [mulSupport_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/mulsupport-tosubmonoid--37e3c1096bc4693327f043d3.md) | 54 | `result-track:37e3c1096bc4693327f043d30ffcca347834ba6612c8540f8deeb21239ba0c9b` |
| 4 | `theorem` | [_root_.Subgroup.gc_toSubmonoid_mulSupport](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/root-subgroup-gc-tosubmonoid-mulsupport--b3c095e70b216dac36529ac7.md) | 58 | `result-track:b3c095e70b216dac36529ac702aad39a767cf3e381b9f2812f925526572347d4` |
| 5 | `def` | [IsMulPointed](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/ismulpointed--e35c753d73d2338f259acf1d.md) | 67 | `declaration-track:e35c753d73d2338f259acf1dd2d88d265e4501a4f48b43cf4928b0a089670b31` |
| 6 | `theorem` | [mk](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/mk--38e2ac950c99cbf7eef9c688.md) | 72 | `result-track:38e2ac950c99cbf7eef9c688ba61b2e32458fcd07c2fd7d1db34138170086e63` |
| 7 | `theorem` | [eq_one_of_mem_of_inv_mem](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/eq-one-of-mem-of-inv-mem--3fc74a26d1d4f31a9552eddf.md) | 75 | `result-track:3fc74a26d1d4f31a9552eddf0a5ed0ba5d1d5e0dd8855c820fa1c50debf7952d` |
| 8 | `theorem` | [_root_.isMulPointed_iff_mulSupport_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/root-ismulpointed-iff-mulsupport-eq-bot--e762bc74945b83df3d50af3e.md) | 82 | `result-track:e762bc74945b83df3d50af3eee4bb870959302cba8c6c5623faa96387cfd3fb7` |
| 9 | `def` | [IsMulSpanning](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/ismulspanning--691eb3941f7302deca28626d.md) | 100 | `declaration-track:691eb3941f7302deca28626d37725e6f6f32063bb93713f0f99ea629ea1e2aa0` |
| 10 | `theorem` | [mk](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/mk--0d1a0772c4a11abfc7683623.md) | 105 | `result-track:0d1a0772c4a11abfc76836231ce5d0f887511bd8ea8c2f655ecb2171dd6dc0d4` |
| 11 | `theorem` | [mem_or_inv_mem](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/mem-or-inv-mem--ec3dae3592cd21341219013b.md) | 108 | `result-track:ec3dae3592cd21341219013b0f41ac39b006c856bdaf77353761cfe412d9dad5` |
| 12 | `theorem` | [of_le](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/of-le--27dc6246179b40bf7559a949.md) | 111 | `result-track:27dc6246179b40bf7559a949079338582b8aa5d4fe5db2948ddd6d6bbfb627d7` |
| 13 | `theorem` | [maximal_isMulPointed](../../../../../mathematics/Algebra/GroupTheory/Support/Variant173aae88a408cc162a5b3bbe6c906ce4f439f952604755acbab04fd1f3a74ed5.lean/declarations/maximal-ismulpointed--b564fa2e38064743e9fa020a.md) | 115 | `result-track:b564fa2e38064743e9fa020a9f70873c9f0439a90b2b98143cf92ffeac6a5223` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
