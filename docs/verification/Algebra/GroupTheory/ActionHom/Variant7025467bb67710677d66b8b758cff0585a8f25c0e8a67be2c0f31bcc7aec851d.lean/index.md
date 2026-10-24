# Verification target: GRWTSK.Algebra.GroupTheory.ActionHom.Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "378be8c21cf9088cc89c91deb09f52c1c8221504",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `378be8c21cf9088cc89c91deb09f52c1c8221504`.

Source path: `GRWTSK/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/instance--72396943e517cca4ce61131d.md) | 38 | `declaration-track:72396943e517cca4ce61131df1eeaae313cb0d5de821aa529a850c77b456a391` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/instance--22d58e7e1a77f93e742a8bd3.md) | 41 | `declaration-track:22d58e7e1a77f93e742a8bd3ee33d5c224542a7c6184568c79e457431d7e9ba3` |
| 3 | `theorem` | [smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/smul-mulactionhom-apply--f720231e37c38d4135100352.md) | 45 | `result-track:f720231e37c38d41351003527f1880775a56d4df69a1885e04801a888ca9d504` |
| 4 | `theorem` | [mk_smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/mk-smul-mulactionhom-apply--b7bfbc79b5f9f28ab2c9a5b4.md) | 50 | `result-track:b7bfbc79b5f9f28ab2c9a5b45936e29e3241a9715c49373847905abce209b3f7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/instance--7cc7c1490e65ab067597f71b.md) | 54 | `declaration-track:7cc7c1490e65ab067597f71b585b2d16317dd1e0821ef8e4c72a393f9a50430b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/instance--c3838c84dade9384149f4410.md) | 67 | `declaration-track:c3838c84dade9384149f4410b895acb75135bdd0f7d2f1b490a3e06c91aca6c2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/instance--5be7dac01be7700852d17a2b.md) | 70 | `declaration-track:5be7dac01be7700852d17a2b061b2eb4a6c5eb880a5f2cb5d83f85fa63bcd8f9` |
| 8 | `theorem` | [smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/smul-muldistribactionhom-apply--301136fb90fec44a81c5b01f.md) | 74 | `result-track:301136fb90fec44a81c5b01f2931fc13f6555f4814a31ef8f2ecebf865103940` |
| 9 | `theorem` | [mk_smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/mk-smul-muldistribactionhom-apply--aa3edf3b0e6f8130a5d38167.md) | 79 | `result-track:aa3edf3b0e6f8130a5d3816748fb344c56324f1fb71729fe7c8b5717e692b5e5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant7025467bb67710677d66b8b758cff0585a8f25c0e8a67be2c0f31bcc7aec851d.lean/declarations/instance--79892a67344f9b2ea59972f8.md) | 84 | `declaration-track:79892a67344f9b2ea59972f8b382df52649090dff62f0207a2c83fe35ae59a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
