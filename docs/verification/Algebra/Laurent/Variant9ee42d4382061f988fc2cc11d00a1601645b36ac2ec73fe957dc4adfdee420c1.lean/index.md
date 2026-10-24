# Verification target: GRWTSK.Algebra.Laurent.Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d7bc8b6a8e7b2656c36d18a6b0e167a3b9cc909`.

Source path: `GRWTSK/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Taylor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.RatFunc` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taylor_mem_nonZeroDivisors](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/taylor-mem-nonzerodivisors--a3c2273ee7e0b9020f7614fa.md) | 47 | `result-track:a3c2273ee7e0b9020f7614fa6f3a896dfc6d75bd966faa053bd829f0dbd74bfa` |
| 2 | `def` | [laurentAux](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurentaux--855490394cb1c4e0e9d69149.md) | 58 | `declaration-track:855490394cb1c4e0e9d691496e033c12672d8a8ba97dfa2daac37c3dd278b419` |
| 3 | `theorem` | [laurentAux_ofFractionRing_mk](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurentaux-offractionring-mk--ef7f56a99b474fe53340bf45.md) | 68 | `result-track:ef7f56a99b474fe53340bf4569c0e378f0af97ef4a1ae8266e75765b227edc20` |
| 4 | `theorem` | [laurentAux_div](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurentaux-div--1a18e6ac7998d8ef3bc7840f.md) | 74 | `result-track:1a18e6ac7998d8ef3bc7840f3263b5f04256e1a66bee4cf5d6020cf4d94a9c07` |
| 5 | `theorem` | [laurentAux_algebraMap](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurentaux-algebramap--82a0c5e153df625588c41862.md) | 82 | `result-track:82a0c5e153df625588c4186201f0d3b78552c7a71ddd0578ac45c6761fd928c8` |
| 6 | `def` | [laurent](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent--f93f7b5a65fb088a2dfa680d.md) | 88 | `declaration-track:f93f7b5a65fb088a2dfa680de18774d042c4e11666030055d228e2c4ff338fa2` |
| 7 | `theorem` | [laurent_div](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent-div--3c83a6039da9e167f34f32d2.md) | 93 | `result-track:3c83a6039da9e167f34f32d21e6ef24fe1fa1a972e649c3b262afcf77caf3481` |
| 8 | `theorem` | [laurent_algebraMap](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent-algebramap--13fcd605cedd184392e548b9.md) | 100 | `result-track:13fcd605cedd184392e548b91343616d4e2683935bcf6852f97b2168e0cf34db` |
| 9 | `theorem` | [laurent_X](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent-x--17995895e3ba349a1c9ee2a6.md) | 105 | `result-track:17995895e3ba349a1c9ee2a67a1d478f4424017942659b62e3503e4f222504be` |
| 10 | `theorem` | [laurent_C](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent-c--952c30c906ab90173546df75.md) | 111 | `result-track:952c30c906ab90173546df75a0c0249cb351cab0a5965c8892950932132cfb65` |
| 11 | `theorem` | [laurent_at_zero](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent-at-zero--5f48b0659f6dd27080595bd4.md) | 117 | `result-track:5f48b0659f6dd27080595bd474446ee34171eb1136bce556ad920091abe359bb` |
| 12 | `theorem` | [laurent_laurent](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent-laurent--1608579ede60ffefef39c5cd.md) | 120 | `result-track:1608579ede60ffefef39c5cdae3f30fd8e4f10e3b0fb53f462033b0665c81c34` |
| 13 | `theorem` | [laurent_injective](../../../../mathematics/Algebra/Laurent/Variant9ee42d4382061f988fc2cc11d00a1601645b36ac2ec73fe957dc4adfdee420c1.lean/declarations/laurent-injective--2f0e0d199f72da94f8638aff.md) | 125 | `result-track:2f0e0d199f72da94f8638affb23f23b99f34d50fd886d28ff6bedbbf53f8a7f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
