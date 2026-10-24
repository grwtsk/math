# Verification target: GRWTSK.Algebra.GroupTheory.Membership.Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67cfc9c986d3b4927c43cd6e7aa7de3e50669726",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67cfc9c986d3b4927c43cd6e7aa7de3e50669726`.

Source path: `GRWTSK/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/mem-isup-of-directed--c60ea663d45a95e9edaf3893.md) | 45 | `result-track:c60ea663d45a95e9edaf3893ba26a0fbe826c1139de1e6275d91f77061498956` |
| 2 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/coe-isup-of-directed--8c2891eb932053d50b16b838.md) | 56 | `result-track:8c2891eb932053d50b16b838630ca20f74449a45ab29c6611a6b455f15c7bda8` |
| 3 | `theorem` | [mem_sSup_of_directed_on](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/mem-ssup-of-directed-on--c2b77f1892bb5d0af15547ff.md) | 61 | `result-track:c2b77f1892bb5d0af15547ff6faab1018ecdec2ba38db36e10ccd818b20dfd01` |
| 4 | `theorem` | [coe_sSup_of_directed_on](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/coe-ssup-of-directed-on--d9a0c314eaaae2d1346498e3.md) | 67 | `result-track:d9a0c314eaaae2d1346498e38f6d986b11d9bbca055237648a767b5596a73b9f` |
| 5 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/mem-sup-left--fc5093f45155c9cc05947042.md) | 72 | `result-track:fc5093f45155c9cc0594704279dc41a7e2cce24bc3dfa1c44b5eb7143b02a6dd` |
| 6 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/mem-sup-right--fdef0be8e6d7469207680aac.md) | 77 | `result-track:fdef0be8e6d7469207680aacd6fc2f01348f2d12ec47d0a6a096f1d5a44430e8` |
| 7 | `theorem` | [mul_mem_sup](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/mul-mem-sup--ea89be4b500f5b4317447c82.md) | 82 | `result-track:ea89be4b500f5b4317447c825ac9b91f41e84108bd865319db5666a8dd616212` |
| 8 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/mem-isup-of-mem--118a49640cd5615da816c9cc.md) | 86 | `result-track:118a49640cd5615da816c9ccf026e35f952a9a717ebfb89c84dd91bbd5bab34e` |
| 9 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/mem-ssup-of-mem--9c2844e16edb7dd36f2d7267.md) | 91 | `result-track:9c2844e16edb7dd36f2d72673ac120dbb63edf0358427ea56572d4d996040943` |
| 10 | `theorem` | [iSup_induction](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/isup-induction--368d38eb25369c9cf72edefd.md) | 103 | `result-track:368d38eb25369c9cf72edefd19e8d4b1b908d8ddf0ecbcee1bebb40e40c8f4a0` |
| 11 | `theorem` | [iSup_induction'](../../../../../mathematics/Algebra/GroupTheory/Membership/Variant8802317ac736c1a30f42a9cbf6aadfe1d501567844a7233a5aa1c9d4f06ea026.lean/declarations/isup-induction--8e8195b88f87ef6192c9ca38.md) | 113 | `result-track:8e8195b88f87ef6192c9ca3809517b53aebff73a4072242327bf8877f3ddfe4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
