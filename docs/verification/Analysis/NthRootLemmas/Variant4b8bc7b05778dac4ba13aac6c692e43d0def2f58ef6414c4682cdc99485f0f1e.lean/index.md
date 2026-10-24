# Verification target: GRWTSK.Analysis.NthRootLemmas.Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b08970b5ea6e06095693372e837ca4fae666415",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/index.md) · [Full source](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b08970b5ea6e06095693372e837ca4fae666415`.

Source path: `GRWTSK/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean.json)

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
| 1 | `theorem` | [nthRoot_zero_left](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-zero-left--4b8714cb7ad473d6e80d9938.md) | 34 | `result-track:4b8714cb7ad473d6e80d99389d364d248787a0521c6310c68ddaca86a10c29b9` |
| 2 | `theorem` | [nthRoot_one_left](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-one-left--64e835171dc1866432620cef.md) | 36 | `result-track:64e835171dc1866432620ceff267cc407491edc04afe4ced11d6fa27eb1fa67d` |
| 3 | `theorem` | [nthRoot_zero_right](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-zero-right--648a5d65129f80591e1c51b6.md) | 39 | `result-track:648a5d65129f80591e1c51b65ba766c9d421812da196543f8ed48ad2294f0630` |
| 4 | `theorem` | [nthRoot_one_right](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-one-right--3b7c26baa929ed55b00e11f5.md) | 43 | `result-track:3b7c26baa929ed55b00e11f5dd6fef7ef7a2250ed038f2f72f59669b8e8d52d0` |
| 5 | `theorem` | [nthRoot.pow_go_le](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-pow-go-le--9dcb5cc7ad7400a86096c77d.md) | 46 | `result-track:9dcb5cc7ad7400a86096c77dd156292ce8640b241ebc70e61ba205dd85d375c6` |
| 6 | `theorem` | [pow_nthRoot_le_iff](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/pow-nthroot-le-iff--840de9bbef14e57cfac00278.md) | 65 | `result-track:840de9bbef14e57cfac002780a7a85887f11987597a3b72f9f60cda22b540b10` |
| 7 | `theorem` | [nthRoot.lt_pow_go_succ_aux0](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-lt-pow-go-succ-aux0--8b7af16b39faf6dd4a15579f.md) | 70 | `result-track:8b7af16b39faf6dd4a15579faa51c0fd4bbe59cba86e0dd80e6e0d96d63f63c7` |
| 8 | `theorem` | [nthRoot.always_exists](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-always-exists--e0a39bbbb31fe7ffe271a0b9.md) | 90 | `result-track:e0a39bbbb31fe7ffe271a0b9148bcc133754803424d67ee6eef0b81236c11c33` |
| 9 | `theorem` | [nthRoot.lt_pow_go_succ_aux](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-lt-pow-go-succ-aux--47bbc59fcf3cbdc0450e4621.md) | 103 | `result-track:47bbc59fcf3cbdc0450e462181a9c4eeca80275605fc08825a520dd3df7fb33a` |
| 10 | `theorem` | [nthRoot.lt_pow_go_succ](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-lt-pow-go-succ--2a91d98940e2dd441c746a98.md) | 113 | `result-track:2a91d98940e2dd441c746a9835c6fa81b59b312aa183046beba7762288505c27` |
| 11 | `theorem` | [lt_pow_nthRoot_add_one](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/lt-pow-nthroot-add-one--2230e552d799e578e167fa0a.md) | 127 | `result-track:2230e552d799e578e167fa0afb13fa4f2ede5106fb003b0740b75496cde7f2d0` |
| 12 | `theorem` | [le_nthRoot_iff](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/le-nthroot-iff--0cec108bf411307dffba7a2a.md) | 136 | `result-track:0cec108bf411307dffba7a2addb1143e505383926e0526ac977222ba5bb60119` |
| 13 | `theorem` | [nthRoot_lt_iff](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-lt-iff--0123abdd31e91a533ae7a00e.md) | 149 | `result-track:0123abdd31e91a533ae7a00ebbc9cafd6d4e2d0db60ffd415f701f77c1a1ab16` |
| 14 | `theorem` | [nthRoot_pow](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-pow--ca816bf14e0b5a1ccb611f1b.md) | 153 | `result-track:ca816bf14e0b5a1ccb611f1b18c05e78edd44026aaae4b7f6b964378c30684de` |
| 15 | `theorem` | [nthRoot_eq_of_le_of_lt](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/nthroot-eq-of-le-of-lt--3642e9af184d05b094768c81.md) | 159 | `result-track:3642e9af184d05b094768c81c9e4d5bd961bac33d77d9b0ece6f2ac89fd8369c` |
| 16 | `theorem` | [exists_pow_eq_iff'](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/exists-pow-eq-iff--76c41ad9de92701f34228440.md) | 166 | `result-track:76c41ad9de92701f34228440e0472666d1c23a90119c83b188bbb6d27eeec255` |
| 17 | `theorem` | [exists_pow_eq_iff](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/exists-pow-eq-iff--7a57c14faa57954006d5b7d6.md) | 172 | `result-track:7a57c14faa57954006d5b7d693fb166bbd6491209792babbd71d86b640fa1d82` |
| 18 | `instance` | [instDecidableExistsPowEq](../../../../mathematics/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/declarations/instdecidableexistspoweq--19d385e1b6de71b32563528c.md) | 176 | `declaration-track:19d385e1b6de71b32563528c9fcdd9b50737babc052fa9bd255a3f827375d115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
