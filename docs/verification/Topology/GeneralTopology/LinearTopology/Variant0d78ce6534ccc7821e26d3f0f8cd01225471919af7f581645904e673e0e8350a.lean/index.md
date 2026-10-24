# Verification target: GRWTSK.Topology.GeneralTopology.LinearTopology.Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23ab2997781262817d165315ca05ab7786ca4f5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23ab2997781262817d165315ca05ab7786ca4f5`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean.json)

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
| 1 | `class` | [_root_.IsLinearTopology](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-islineartopology--7208da13e2fa8ae8708d1dd0.md) | 101 | `declaration-track:7208da13e2fa8ae8708d1dd027107aa95716e3b9db31cf05fc3fa8338ea6f2bf` |
| 2 | `lemma` | [hasBasis_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-submodule--34f7a097b3084c9b69c4eeed.md) | 106 | `result-track:34f7a097b3084c9b69c4eeed80db0299b19139c982299e66d31902b2a8159b7f` |
| 3 | `lemma` | [hasBasis_open_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-open-submodule--c2f398eae040b1218d99de94.md) | 111 | `result-track:c2f398eae040b1218d99de94beb2da372d09e6597ffb46f84ad1bde0ae77463c` |
| 4 | `lemma` | [mk_of_hasBasis'](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/mk-of-hasbasis--4b14da768de18853f801ff0b.md) | 121 | `result-track:4b14da768de18853f801ff0bd0448b80e2612ab388031f053995f7cdbb8a0a62` |
| 5 | `lemma` | [mk_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/mk-of-hasbasis--8ccf3d39c0d545a4d2ecc688.md) | 143 | `result-track:8ccf3d39c0d545a4d2ecc688c7cd7cff139800762995bc1a82073af3ceecff20` |
| 6 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-islineartopology-iff-hasbasis-submodule--d319846f6b69a4aaf2b470ff.md) | 150 | `result-track:d319846f6b69a4aaf2b470ffdd51fca74caf2e6789f3092a84d12bdf69fb5ac2` |
| 7 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_open_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-islineartopology-iff-hasbasis-open-submodule--c28929cdaa5dd37555dc1038.md) | 155 | `result-track:c28929cdaa5dd37555dc1038011808c4e71eee3f25236bb80cc178037b7307d5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/instance--52cbe6d015043a358d3399b0.md) | 161 | `declaration-track:52cbe6d015043a358d3399b0edd242506f31bb59f18a721d4951dc2c973ae422` |
| 9 | `lemma` | [hasBasis_subbimodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-subbimodule--950f3d0fb9d5c4233fcb75a9.md) | 178 | `result-track:950f3d0fb9d5c4233fcb75a928ad8a5718b104d389638be013058dc2e6951934` |
| 10 | `lemma` | [hasBasis_open_subbimodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-open-subbimodule--bbc5fb05351acc6cece50163.md) | 234 | `result-track:bbc5fb05351acc6cece50163b50fec84ba97fa9b263dea06b60987c03ee953ee` |
| 11 | `theorem` | [tendsto_smul_zero](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/tendsto-smul-zero--2c445423f52b8fc22529ef0f.md) | 248 | `result-track:2c445423f52b8fc22529ef0fa1d5d13a6c354b92b2fc5a6962db48115b99bf59` |
| 12 | `theorem` | [_root_.IsCentralScalar.isLinearTopology_iff](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-iscentralscalar-islineartopology-iff--a0d126c28f6d76a99db69716.md) | 259 | `result-track:a0d126c28f6d76a99db69716d046d9f7c9cd563349436bdbe1f2f19c1cecef63` |
| 13 | `theorem` | [hasBasis_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-ideal--96d7b0c5ad952a0a5a8fba62.md) | 273 | `result-track:96d7b0c5ad952a0a5a8fba621f07cdb17443c471e40359f7b1d35671a9a880c5` |
| 14 | `theorem` | [hasBasis_open_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-open-ideal--ebb998407ba8a459db413753.md) | 277 | `result-track:ebb998407ba8a459db41375329960a764587fcca2db7277e69a51cae9b8bf8f9` |
| 15 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-islineartopology-iff-hasbasis-ideal--ea57cf5ca5ee90b7c5d28753.md) | 281 | `result-track:ea57cf5ca5ee90b7c5d287533f08eb39e0b4db3cf00f31567e99034204a001be` |
| 16 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_open_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-islineartopology-iff-hasbasis-open-ideal--7270477708c5972a670275ff.md) | 286 | `result-track:7270477708c5972a670275ff2cd63f6ed5ed642541bac7fdfd1e1dbb10a4dcef` |
| 17 | `theorem` | [hasBasis_right_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-right-ideal--9d0ee18f42672abead7ccf2d.md) | 291 | `result-track:9d0ee18f42672abead7ccf2d16fd298995601e6c65f46cf9f5a9e2b9be76bc6f` |
| 18 | `lemma` | [hasBasis_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-twosidedideal--2832158c969aaa879296f7f2.md) | 301 | `result-track:2832158c969aaa879296f7f206bd5a7b77f662abc73978ecc59354cd18420095` |
| 19 | `lemma` | [hasBasis_open_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/hasbasis-open-twosidedideal--adff474c3e97f586e6899e63.md) | 310 | `result-track:adff474c3e97f586e6899e632dd3f703c76b8e1d64c8eb12041db2fc54fe72f5` |
| 20 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-islineartopology-iff-hasbasis-twosidedideal--97f3a7faaa6fb84622bf8480.md) | 318 | `result-track:97f3a7faaa6fb84622bf84804d85f6009d12daf5c38a2fdd826ac20fb291ebd6` |
| 21 | `theorem` | [_root_.isLinearTopology_iff_hasBasis_open_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/root-islineartopology-iff-hasbasis-open-twosidedideal--88e4e21dd17c51d7879461b7.md) | 326 | `result-track:88e4e21dd17c51d7879461b7b2b95eadb5d35b6e670de207409f18c301f8091d` |
| 22 | `theorem` | [tendsto_mul_zero_of_left](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/tendsto-mul-zero-of-left--68741d0b1e1e04066c0f4b14.md) | 333 | `result-track:68741d0b1e1e04066c0f4b14ed885ef19bc9e8c9fc0931a52d6c04bc55c34f81` |
| 23 | `theorem` | [tendsto_mul_zero_of_right](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/tendsto-mul-zero-of-right--972f590501ef700d1ab9505a.md) | 338 | `result-track:972f590501ef700d1ab9505ad7cceaeb551d820ef0cc8b6956835d54a011c70f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant0d78ce6534ccc7821e26d3f0f8cd01225471919af7f581645904e673e0e8350a.lean/declarations/instance--5c8a19bb2e8ff3f480c91888.md) | 350 | `declaration-track:5c8a19bb2e8ff3f480c9188872c1e771a523081c97ca1b0680adb2dd6d38b721` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
