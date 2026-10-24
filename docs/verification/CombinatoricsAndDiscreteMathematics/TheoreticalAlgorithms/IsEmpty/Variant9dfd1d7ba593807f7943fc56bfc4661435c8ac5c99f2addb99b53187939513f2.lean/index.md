# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsEmpty.Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fc4909fa4ff1ade2a3d46afb5c830d178996ba8",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fc4909fa4ff1ade2a3d46afb5c830d178996ba8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEmpty_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-eq--3ff0ec07b921a0d9f0a0bdcd.md) | 22 | `result-track:3ff0ec07b921a0d9f0a0bdcdc9540c3b1344e2438829c26df56b4fe34b940c7b` |
| 2 | `theorem` | [isEmpty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-iff--8a0a1bf4548f70be2340ed73.md) | 25 | `result-track:8a0a1bf4548f70be2340ed73d73155c567452e373b3033674739b69008eff1ea` |
| 3 | `theorem` | [startPos_eq_endPos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/startpos-eq-endpos-iff--73d6b43e133a731698f4e917.md) | 29 | `result-track:73d6b43e133a731698f4e9170d666580c600284dc1337a6f7276029176310862` |
| 4 | `theorem` | [startPos_ne_endPos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/startpos-ne-endpos-iff--3b34f964f03af4e2646146a9.md) | 34 | `result-track:3b34f964f03af4e2646146a9e65120944a1a1d5e64985322588b57d046ef02f3` |
| 5 | `theorem` | [startPos_ne_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/startpos-ne-endpos--d6f93aada39e423cb06dd443.md) | 38 | `result-track:d6f93aada39e423cb06dd44397ff4c207c705115843783a2ad85cc8701ea3342` |
| 6 | `theorem` | [isEmpty_iff_forall_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-iff-forall-eq--7bc5de4479a38bbae8cfecdc.md) | 41 | `result-track:7bc5de4479a38bbae8cfecdc1c6ade1d8f1e57915457453acd342a281177cf2f` |
| 7 | `theorem` | [isEmpty_eq_false_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-eq-false-of-lt--cdd32285e3baf34975d090e8.md) | 49 | `result-track:cdd32285e3baf34975d090e88c791054d1002fd1c4926b0bc5d9ae41bc0b9edf` |
| 8 | `theorem` | [isEmpty_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-slicefrom--667f9f2bf6d2096243aaa9d8.md) | 59 | `result-track:667f9f2bf6d2096243aaa9d8596bcd87341120ec0894a0f5abe1467bdf0a7f09` |
| 9 | `theorem` | [isEmpty_sliceFrom_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-slicefrom-eq-false-iff--9dc6289f56b0b54717da5be4.md) | 64 | `result-track:9dc6289f56b0b54717da5be4cb0bd049955696abf553cc7f6517af2ae0dddcf5` |
| 10 | `theorem` | [isEmpty_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-sliceto--a69c139265990fe24f247af7.md) | 69 | `result-track:a69c139265990fe24f247af762a3bb3775a0863cd0d422135dd4eafb603de32a` |
| 11 | `theorem` | [isEmpty_sliceTo_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-sliceto-eq-false-iff--4c6499cbe8c1d6434405bc46.md) | 74 | `result-track:4c6499cbe8c1d6434405bc465ecc560475fbbec2361586512fd6881ac44fd549` |
| 12 | `theorem` | [isEmpty_eq_utf8ByteSize_beq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-eq-utf8bytesize-beq-zero--953a90121d966b7e05d29f4b.md) | 80 | `result-track:953a90121d966b7e05d29f4bccc1106d21e074988d9fd920007b07b484ea7e84` |
| 13 | `theorem` | [isEmpty_iff_utf8ByteSize_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-iff-utf8bytesize-eq-zero--6f89b269afe70d98a9ce7363.md) | 83 | `result-track:6f89b269afe70d98a9ce7363cfde77d0bac6cfd44e38892f352e32302ef25aae` |
| 14 | `theorem` | [isEmpty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-iff--d48a70132599f08a79896a8b.md) | 87 | `result-track:d48a70132599f08a79896a8baa5d99ec78dd7247f30cb47ed1f39367db641286` |
| 15 | `theorem` | [isEmpty_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-eq-false-iff--34f23f082280812b77dbecc6.md) | 91 | `result-track:34f23f082280812b77dbecc664a7605c16ed726f50503baafefe87656dc26e2c` |
| 16 | `theorem` | [startPos_ne_endPos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/startpos-ne-endpos-iff--562d71b626adc421f608b03c.md) | 94 | `result-track:562d71b626adc421f608b03cf713db9db1a0b95d49e6a773d41202c99eb4ed34` |
| 17 | `theorem` | [startPos_ne_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/startpos-ne-endpos--7bcfadb6648ba0f059a2eb85.md) | 97 | `result-track:7bcfadb6648ba0f059a2eb85f5d731b146b5cbe29b2a7ee69b044c92b1bdd189` |
| 18 | `theorem` | [isEmpty_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-toslice--8b183f86f95b201811a3d250.md) | 101 | `result-track:8b183f86f95b201811a3d25076de4fce93f16656b55090326218f973abc20fa2` |
| 19 | `theorem` | [isEmpty_toSlice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-toslice-iff--8aabb9711294c1c91b1def6e.md) | 104 | `result-track:8aabb9711294c1c91b1def6e88843c4d3ea6244be8c31a32396c7932be5b8122` |
| 20 | `theorem` | [Slice.isEmpty_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-isempty-copy--114574a476816603eb3722d3.md) | 107 | `result-track:114574a476816603eb3722d394c7a573c0297b87d73b87cec170ca7e61d29d86` |
| 21 | `theorem` | [Slice.copy_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-copy-eq-empty-iff--b37b22a036c0d19dd0167cc6.md) | 111 | `result-track:b37b22a036c0d19dd0167cc6df0c61fbff4123647fd9f508b755c27e392791c4` |
| 22 | `theorem` | [Slice.copy_ne_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-copy-ne-empty-iff--f7447cdfe21831a03738e465.md) | 114 | `result-track:f7447cdfe21831a03738e465aadf9674ecf7644f20d8af33095a304bab3f2047` |
| 23 | `theorem` | [eq_empty_iff_forall_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/eq-empty-iff-forall-eq--042244fae29eab8378dc112b.md) | 117 | `result-track:042244fae29eab8378dc112bfba144a62e2c93f1c3ec145efebe037f43036f3c` |
| 24 | `theorem` | [ne_empty_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/ne-empty-of-lt--ec8376c58cb72eaa7f77af04.md) | 122 | `result-track:ec8376c58cb72eaa7f77af04e037ecbb9bdce3e3702fa0bb2435bc13056772b9` |
| 25 | `theorem` | [isEmpty_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-slicefrom--82fa525587689d37032e2225.md) | 128 | `result-track:82fa525587689d37032e2225dab65d7db28728c18f5c89ac3a54a64e18191243` |
| 26 | `theorem` | [isEmpty_sliceFrom_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-slicefrom-eq-false-iff--c93327a16ae1a0c75f330bd9.md) | 133 | `result-track:c93327a16ae1a0c75f330bd97641eecb3e7908134c766e4d06a4f3b941dbe148` |
| 27 | `theorem` | [isEmpty_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-sliceto--6e1c1f6805acc9726a13db0f.md) | 138 | `result-track:6e1c1f6805acc9726a13db0f7ee29f707a7d8947e6fd6bb397fc00a54d74f242` |
| 28 | `theorem` | [isEmpty_sliceTo_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-sliceto-eq-false-iff--4a3ebb26eb9bbcd025cd0b82.md) | 143 | `result-track:4a3ebb26eb9bbcd025cd0b824006b7715bd757da3c66c8f4ebe5b08fcf417d12` |
| 29 | `theorem` | [isEmpty_slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-slice--54be07c3b4bc69a0f9be51bf.md) | 148 | `result-track:54be07c3b4bc69a0f9be51bfd3d3524dd023bfa83795266dfc7520ab82ac61d5` |
| 30 | `theorem` | [isEmpty_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/isempty-slice-eq-false-iff--41202367f7723186c9ad3d2a.md) | 152 | `result-track:41202367f7723186c9ad3d2a200962d9dc848182144141ac997e975d71de3b2d` |
| 31 | `theorem` | [Slice.isEmpty_slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-isempty-slice--5d9fad7afca2ba8684046f97.md) | 157 | `result-track:5d9fad7afca2ba8684046f97b2280a1b3906f38ce23137fcde7d3d92b1de18ac` |
| 32 | `theorem` | [Slice.isEmpty_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-isempty-slice-eq-false-iff--0135f68a033bb66b1efd3794.md) | 161 | `result-track:0135f68a033bb66b1efd3794f0ac13b70c6e9331c4bb635c556412f8c9af39f0` |
| 33 | `theorem` | [toByteArray_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/tobytearray-eq-empty-iff--cb215921157544bfe9046ead.md) | 166 | `result-track:cb215921157544bfe9046ead245ecd3a453177c03304beb6b0376c4dc0ecc3c5` |
| 34 | `theorem` | [Slice.toByteArray_copy_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-tobytearray-copy-eq-empty-iff--4d93abe2f0e8c84487221abc.md) | 170 | `result-track:4d93abe2f0e8c84487221abcea442ec8b50a71e2bc57c7f4977816398652d1f2` |
| 35 | `theorem` | [Slice.toByteArray_copy_ne_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-tobytearray-copy-ne-empty-iff--9a61093eeddb96f990aa3ef2.md) | 174 | `result-track:9a61093eeddb96f990aa3ef2bb3aa6ba76810c2a34af05134142d14e0e3aca06` |
| 36 | `theorem` | [copy_slice_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/copy-slice-self--aa10e9ba12ce582556f8ae4d.md) | 183 | `result-track:aa10e9ba12ce582556f8ae4da501bd3921f90c9132fdbe8a608f3ef2d988a953` |
| 37 | `theorem` | [copy_sliceTo_startPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/copy-sliceto-startpos--eca22885cd3f53192c0cb7ff.md) | 187 | `result-track:eca22885cd3f53192c0cb7ff6ce12112be65e8fcaf78722c5f6bfc538130a61c` |
| 38 | `theorem` | [copy_sliceFrom_startPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/copy-slicefrom-startpos--337f0b2bb68d5d89753efc10.md) | 191 | `result-track:337f0b2bb68d5d89753efc104e73a687b4766fca7b02bd1c7d6427af6ecaa33c` |
| 39 | `theorem` | [Slice.copy_slice_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-copy-slice-self--a944d307966289977252458c.md) | 195 | `result-track:a944d307966289977252458cbc5747eaad79d7ac7e7c78788b460c0bcbc8e7b1` |
| 40 | `theorem` | [Slice.copy_sliceTo_startPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-copy-sliceto-startpos--a5ab8150a0762ed7c1c83952.md) | 199 | `result-track:a5ab8150a0762ed7c1c839520e525fb80b00b6030dbb2c4e0fe839908a6032e8` |
| 41 | `theorem` | [Slice.copy_sliceFrom_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variant9dfd1d7ba593807f7943fc56bfc4661435c8ac5c99f2addb99b53187939513f2.lean/declarations/slice-copy-slicefrom-endpos--a0e944a6017f237e3a648de8.md) | 203 | `result-track:a0e944a6017f237e3a648de8483cfa14f9820386d23edc98f70d23b4bd7948aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
