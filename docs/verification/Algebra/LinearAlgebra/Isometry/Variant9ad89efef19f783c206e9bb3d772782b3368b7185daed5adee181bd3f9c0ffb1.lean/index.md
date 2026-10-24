# Verification target: GRWTSK.Algebra.LinearAlgebra.Isometry.Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e6eafdaac3536d8f8f538e9de72a7daf5e2a3d0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e6eafdaac3536d8f8f538e9de72a7daf5e2a3d0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean.json)

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
| 1 | `structure` | [Isometry](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/isometry--40809f8bc09b52da45e21fa6.md) | 41 | `declaration-track:40809f8bc09b52da45e21fa6bd51ba88fc016b5804f2f2da88a92a4a65d21f11` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/instfunlike--43610579a7d4efd4994b6377.md) | 55 | `declaration-track:43610579a7d4efd4994b6377853864cfdb32c29e16d094f360b09e6d51c8e411` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/instlinearmapclass--5d0875f00ae72bf7a26aecb4.md) | 59 | `declaration-track:5d0875f00ae72bf7a26aecb4f7089ef48996dd4f3c6d67f2366a1e0fa9804164` |
| 4 | `theorem` | [toLinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/tolinearmap-injective--4e9f7d9954fd86d642343e3b.md) | 63 | `result-track:4e9f7d9954fd86d642343e3bc2cfe8b639d187a701195a4a6e6d281b31f0883f` |
| 5 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/ext--032c97d8374910b6310d3e81.md) | 68 | `result-track:032c97d8374910b6310d3e8104bafbb3b4745d183f651d45ce3cb5cd6c38a5a3` |
| 6 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/simps-apply--643ba576ac1101835d122fad.md) | 72 | `declaration-track:643ba576ac1101835d122fade396222c8f1d64b66479e3528324ce7a0f08f76d` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/map-app--b01e0c789f572ca784eacf31.md) | 77 | `result-track:b01e0c789f572ca784eacf31c3e84303af39adf6e30bc691f3b0b07391fc158d` |
| 8 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/coe-tolinearmap--f09eceaf08a46b17d2e8dd16.md) | 81 | `result-track:f09eceaf08a46b17d2e8dd16abed208f3ae7540615e463012b172d4e677f5c03` |
| 9 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/id--62349890befc270ad6469127.md) | 86 | `declaration-track:62349890befc270ad6469127b763f815edcae089ab05f35fc5fb1d9f62268634` |
| 10 | `def` | [ofEq](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/ofeq--91e6ff79e5f8bef8bc7f63db.md) | 92 | `declaration-track:91e6ff79e5f8bef8bc7f63db20fb580c12c74fabfc3d78a75c652e9243e7c4cf` |
| 11 | `theorem` | [ofEq_rfl](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/ofeq-rfl--c673b0810abf521e3ef707e1.md) | 97 | `result-track:c673b0810abf521e3ef707e1dd27ad677f93e930935754077468faee0cbaff4d` |
| 12 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/comp--d9201935240be95fdf394f5c.md) | 101 | `declaration-track:d9201935240be95fdf394f5ca158a000d391ceac1dabd2e4c83a640a94bd1d07` |
| 13 | `theorem` | [toLinearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/tolinearmap-comp--4c073fe3b3cc208e8bdba948.md) | 107 | `result-track:4c073fe3b3cc208e8bdba948666fb64f2bb6fecfc9454cfc1e883a3f9e0a0e36` |
| 14 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/id-comp--7b424bc250f88160512a533d.md) | 112 | `result-track:7b424bc250f88160512a533d27f68934cddf893998ae7ace7aaf3dfb3bdf4a70` |
| 15 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/comp-id--e4e4953f6cfa173b66a09592.md) | 116 | `result-track:e4e4953f6cfa173b66a09592b22cf203c0c06f2328406b7030e81bc239529c8b` |
| 16 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/comp-assoc--07fcc04e43b588f246f40955.md) | 119 | `result-track:07fcc04e43b588f246f409558ad6fbaaa8710849402806e4d608d5209ea49cb9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/instance--75c24e4e97008ec5c7ceaf0b.md) | 124 | `declaration-track:75c24e4e97008ec5c7ceaf0bf06e84da7627c1cf90c5b5863b4d3ce10be7484b` |
| 18 | `instance` | [hasZeroOfSubsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/haszeroofsubsingleton--26eadae3865c7d0f98bab124.md) | 128 | `declaration-track:26eadae3865c7d0f98bab124b4bc4df9a7ff24f459e0618a43e41f7b4b0b5a8b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant9ad89efef19f783c206e9bb3d772782b3368b7185daed5adee181bd3f9c0ffb1.lean/declarations/instance--2794624bee8689f739f6b534.md) | 136 | `declaration-track:2794624bee8689f739f6b534692c9541fc08f2aadd4ea31dcbcd1f00e429c5b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
