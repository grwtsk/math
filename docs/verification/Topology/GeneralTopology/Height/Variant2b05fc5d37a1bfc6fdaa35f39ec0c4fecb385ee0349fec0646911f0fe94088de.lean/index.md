# Verification target: GRWTSK.Topology.GeneralTopology.Height.Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e91d9826e1c6a06557f242ca2bca1374a91406",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e91d9826e1c6a06557f242ca2bca1374a91406`.

Source path: `GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/subchain--bbbea75993e661883f2b19b1.md) | 68 | `declaration-track:bbbea75993e661883f2b19b14af2edd04794683804c52c9578a292425609b639` |
| 2 | `theorem` | [nil_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/nil-mem-subchain--f665b2952cbbc28357057115.md) | 73 | `result-track:f665b2952cbbc2835705711548de736c7823b2b1391a7720034abb9268409406` |
| 3 | `theorem` | [cons_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/cons-mem-subchain-iff--b69c6dd02af5df74aa3b3fb8.md) | 78 | `result-track:b69c6dd02af5df74aa3b3fb8218076ef046a376940f70d300d9856001e2a9c0c` |
| 4 | `theorem` | [singleton_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/singleton-mem-subchain-iff--94a40b9f6dbb4ca1d3d7f2ca.md) | 85 | `result-track:94a40b9f6dbb4ca1d3d7f2ca4050c30c089d0c9925c976fc73d7cd2abd44639a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/instance--10ebcd7656618736746dbdce.md) | 87 | `declaration-track:10ebcd7656618736746dbdce3b688e87399a78dab8fb5325f8c9b00c7c14ecc6` |
| 6 | `def` | [chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight--bae6177096d69101fb9f5e4e.md) | 93 | `declaration-track:bae6177096d69101fb9f5e4e583e29aab8425900f055e78c0e11c233d6d89547` |
| 7 | `theorem` | [chainHeight_eq_iSup_subtype](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-eq-isup-subtype--7f95163a2fa23c01edf36feb.md) | 97 | `result-track:7f95163a2fa23c01edf36feb42cbecbdf7924b5d98d31cecd657af6d06127728` |
| 8 | `theorem` | [exists_chain_of_le_chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/exists-chain-of-le-chainheight--17a3ff52d196fa336a200fb4.md) | 101 | `result-track:17a3ff52d196fa336a200fb44626e0de55be1cf3f804cef506f34ebe5ee1308c` |
| 9 | `theorem` | [le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/le-chainheight-tfae--d94b874127211f27c76674f8.md) | 117 | `result-track:d94b874127211f27c76674f853f258aa1e7c8b86307cb1d8e9d87c09660a83de` |
| 10 | `theorem` | [le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/le-chainheight-iff--93f359fa939c9c79b3b19355.md) | 127 | `result-track:93f359fa939c9c79b3b193558020bde442a1e587bb9ef6e8ba5154e4451a770b` |
| 11 | `theorem` | [length_le_chainHeight_of_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/length-le-chainheight-of-mem-subchain--dedccbf5b7900618a8e7d748.md) | 131 | `result-track:dedccbf5b7900618a8e7d7483fa45caaa7dbc5b27e1843d2cb7e72097b7f17c0` |
| 12 | `theorem` | [chainHeight_eq_top_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-eq-top-iff--2f8b78d16d085acc0979b163.md) | 135 | `result-track:2f8b78d16d085acc0979b16304e16ed4ed91407db485281ef29de939fb65e51b` |
| 13 | `theorem` | [one_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/one-le-chainheight-iff--38e08a320267bc7ced15cb4f.md) | 143 | `result-track:38e08a320267bc7ced15cb4f5ff182b9950dd993040f44542b822bd72e4397a9` |
| 14 | `theorem` | [chainHeight_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-eq-zero-iff--56948d852762b4d9fbbc4ba2.md) | 150 | `result-track:56948d852762b4d9fbbc4ba20ec78d13748a5d53d44ef2573c15d4641ae7eac1` |
| 15 | `theorem` | [chainHeight_empty](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-empty--79710990f72ce1ce0c041826.md) | 156 | `result-track:79710990f72ce1ce0c04182622169ba4d259f31813b047e5dbdc4377e866f83e` |
| 16 | `theorem` | [chainHeight_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-of-isempty--fe62a21935c9ff4899e69a0c.md) | 161 | `result-track:fe62a21935c9ff4899e69a0ca24bd6d78e25fbc1f9c761fcc9211567ffb2d940` |
| 17 | `theorem` | [le_chainHeight_add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/le-chainheight-add-nat-iff--1d19f8c604804286324e5c10.md) | 165 | `result-track:1d19f8c604804286324e5c102ddc893199139a20ee9c7763d089043e48814549` |
| 18 | `theorem` | [chainHeight_add_le_chainHeight_add](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-add-le-chainheight-add--6827258186c4fc0ccfab9537.md) | 170 | `result-track:6827258186c4fc0ccfab9537a929aa72294911f4b1ca32d0b905b4fbe26c7135` |
| 19 | `theorem` | [chainHeight_le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-le-chainheight-tfae--6ce4817c700e5ef15ee26b88.md) | 195 | `result-track:6ce4817c700e5ef15ee26b8866e63a24e11ad18bdd62780bb4dcb76bbe389306` |
| 20 | `theorem` | [chainHeight_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-le-chainheight-iff--baa2a86ca72ae7773cc8a7e9.md) | 206 | `result-track:baa2a86ca72ae7773cc8a7e9d77322af53e3d7c1c7c5432c7006e8ccd44f987e` |
| 21 | `theorem` | [chainHeight_le_chainHeight_iff_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-le-chainheight-iff-le--5d3f22af4bd9a6c6b6425819.md) | 211 | `result-track:5d3f22af4bd9a6c6b642581995a3989cc7c9055e562ffb67855452f6db4da48b` |
| 22 | `theorem` | [chainHeight_mono](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-mono--f3c7c7c9a3ce173845aa66cc.md) | 216 | `result-track:f3c7c7c9a3ce173845aa66cc7f828aa61475005148dac0d6f8ca0dfeabd127b5` |
| 23 | `theorem` | [chainHeight_image](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-image--7638a0a52acee9cf87a24b4e.md) | 220 | `result-track:7638a0a52acee9cf87a24b4eeacbcbc80c9a39bc3d8b8487474b1b66fb1dd5d6` |
| 24 | `theorem` | [chainHeight_dual](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-dual--66272610eed8e94aff04bba4.md) | 251 | `result-track:66272610eed8e94aff04bba45cdd81dc2e5b25449efb107acf59872a05dd5e68` |
| 25 | `theorem` | [chainHeight_eq_iSup_Ici](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-eq-isup-ici--b98092b67789e79728e4d862.md) | 265 | `result-track:b98092b67789e79728e4d86282ee118d620d01ce3922754b989dbad3acb6bb31` |
| 26 | `theorem` | [chainHeight_eq_iSup_Iic](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-eq-isup-iic--f7121f5bab5c402653dd4c41.md) | 281 | `result-track:f7121f5bab5c402653dd4c413993d91223949cbadde5030479da010e73918104` |
| 27 | `theorem` | [chainHeight_insert_of_forall_gt](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-insert-of-forall-gt--2aa6bbcd3c4a768ffe5cce32.md) | 289 | `result-track:2aa6bbcd3c4a768ffe5cce32d3776a50be7f9e0c4c9a09cc002f68ab80551ce1` |
| 28 | `theorem` | [chainHeight_insert_of_forall_lt](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-insert-of-forall-lt--2f3ce09996aa6ca688511638.md) | 317 | `result-track:2f3ce09996aa6ca6885116387a6e00da471eeb17362702855df9fe287cc0191d` |
| 29 | `theorem` | [chainHeight_union_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-union-le--358ec535cf34b1dc84fa78b1.md) | 323 | `result-track:358ec535cf34b1dc84fa78b193a3a0a2161adfc91ad0252986c4ced046b4926e` |
| 30 | `theorem` | [chainHeight_union_eq](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/chainheight-union-eq--be9dd257d4e9d9db7df1eed2.md) | 340 | `result-track:be9dd257d4e9d9db7df1eed2e00b40045fd04fca05b5718a3d17ec01153ab9bb` |
| 31 | `theorem` | [wellFoundedGT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/wellfoundedgt-of-chainheight-ne-top--b8f85959e49bf05afcee170d.md) | 359 | `result-track:b8f85959e49bf05afcee170db08a77ccd63db13ea40417e4c10420c04b497bff` |
| 32 | `theorem` | [wellFoundedLT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/declarations/wellfoundedlt-of-chainheight-ne-top--937c24cd4544657a717ecfe4.md) | 380 | `result-track:937c24cd4544657a717ecfe40508a6ae8dc8885a8779ce22bac569e3ccaf280f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
