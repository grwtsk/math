# Verification target: GRWTSK.Topology.GeneralTopology.Partial.Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1c952f4ea401743a475f2c0df802638a62720a3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1c952f4ea401743a475f2c0df802638a62720a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Tendsto` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rmap--cbb6c38bf1bb4fff1e9eb693.md) | 64 | `declaration-track:cbb6c38bf1bb4fff1e9eb6935df66de7a0994f3151b90324549d679982e079b4` |
| 2 | `theorem` | [rmap_sets](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rmap-sets--26cb1d1501d0799140dba492.md) | 73 | `result-track:26cb1d1501d0799140dba4921a10c65529eb8d657cdfe518041d6614d7e4d9d4` |
| 3 | `theorem` | [mem_rmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/mem-rmap--1934d7e38d7be88afc72f2cb.md) | 77 | `result-track:1934d7e38d7be88afc72f2cba3f7c93e0149f1ba13005d15fffeadbb7b24e903` |
| 4 | `theorem` | [rmap_rmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rmap-rmap--69fa6cd7abbf994bdcac1316.md) | 81 | `result-track:69fa6cd7abbf994bdcac13162025093944f18f09a16eaf644bfde9fbd7ea22f7` |
| 5 | `theorem` | [rmap_compose](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rmap-compose--4b737ce6c4956703e262ba07.md) | 86 | `result-track:4b737ce6c4956703e262ba07fdeeb25e5f138a1f7dfd04f4bd708576a4d0cac2` |
| 6 | `def` | [RTendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rtendsto--2dd5a25ceda0793716d6dd1b.md) | 92 | `declaration-track:2dd5a25ceda0793716d6dd1b85eba7b3f95c11624cb8b547a3350d52835386e1` |
| 7 | `theorem` | [rtendsto_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rtendsto-def--6356262f3061124811f4b1d0.md) | 95 | `result-track:6356262f3061124811f4b1d0be74d65d8fbbd03f0149d678ed272efb8032a772` |
| 8 | `def` | [rcomap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap--63066c855b8fa567f38a948b.md) | 101 | `declaration-track:63066c855b8fa567f38a948bb40932904ffc5e3efcb5d6a072b7c394692b58f8` |
| 9 | `theorem` | [rcomap_sets](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap-sets--d0078c90672b1ed3deed08c9.md) | 108 | `result-track:d0078c90672b1ed3deed08c998f0950343e0e97196688d962c6ff58598252add` |
| 10 | `theorem` | [rcomap_rcomap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap-rcomap--248d2f9643acdd9d73990110.md) | 112 | `result-track:248d2f9643acdd9d73990110109f50120edf00838064d07dff966fe8cca984ae` |
| 11 | `theorem` | [rcomap_compose](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap-compose--d490345c339e6a11789d7863.md) | 123 | `result-track:d490345c339e6a11789d7863ad3ef9d91aa6d08919a38d3affe409306e2b97cf` |
| 12 | `theorem` | [rtendsto_iff_le_rcomap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rtendsto-iff-le-rcomap--e29977489be4579fd81eefce.md) | 126 | `result-track:e29977489be4579fd81eefce8f786434c9a99f711262ced74b0c84fe70511caf` |
| 13 | `def` | [rcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap--ea0be286ea1cc77100fcd35c.md) | 139 | `declaration-track:ea0be286ea1cc77100fcd35c8fa05a06b3ca8a3edc4d52ff99a740b5af2b6450` |
| 14 | `theorem` | [mem_rcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/mem-rcomap--af229a3b2b5dbea608f90d39.md) | 148 | `result-track:af229a3b2b5dbea608f90d39df0208ec0d12b2fdd792647e25610c8cdb642e26` |
| 15 | `theorem` | [rcomap'_sets](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap-sets--7d674295051020fd094b16e2.md) | 152 | `result-track:7d674295051020fd094b16e23a351df09a7da672eb14a1e5406b58a85d849716` |
| 16 | `theorem` | [rcomap'_rcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap-rcomap--8d75d812d69ba0000adf2c8d.md) | 157 | `result-track:8d75d812d69ba0000adf2c8d1a68a436e86e412fc581ed7dcccecf29811d378d` |
| 17 | `theorem` | [rcomap'_compose](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rcomap-compose--4064ce2d06449289e20f4321.md) | 168 | `result-track:4064ce2d06449289e20f432154a2b1e24bb9bfe85a01f99afb18001a29183935` |
| 18 | `def` | [RTendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rtendsto--c54cae90efedfbbc985df7e4.md) | 174 | `declaration-track:c54cae90efedfbbc985df7e4545d6336514524a0f2a66c4941dfad456660c15c` |
| 19 | `theorem` | [rtendsto'_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/rtendsto-def--913cedfd11813eabb8561293.md) | 177 | `result-track:913cedfd11813eabb8561293529af0819e80c144a2c312488eb5d74a8db96ad4` |
| 20 | `theorem` | [tendsto_iff_rtendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/tendsto-iff-rtendsto--42488ae46ffd11625a9253e9.md) | 183 | `result-track:42488ae46ffd11625a9253e98fe3dfb50a79f231c7a9e0631c360f91d4b4b63b` |
| 21 | `theorem` | [tendsto_iff_rtendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/tendsto-iff-rtendsto--aba3064f19a130dc7be18fbe.md) | 187 | `result-track:aba3064f19a130dc7be18fbed9f3987d2417083e818d69ad15a4912daa42e47b` |
| 22 | `def` | [pmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/pmap--5f919260b92d54f184800c4e.md) | 196 | `declaration-track:5f919260b92d54f184800c4efc18a0092aba80f9d30c904b69915a8d0692e6bc` |
| 23 | `theorem` | [mem_pmap](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/mem-pmap--67ace2510b79f0f8ed133ec0.md) | 200 | `result-track:67ace2510b79f0f8ed133ec0478bd69b2475f148614999866c2615b0243d8014` |
| 24 | `def` | [PTendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/ptendsto--144c83eaec63c9396ff03bb2.md) | 206 | `declaration-track:144c83eaec63c9396ff03bb294c32666242fd761f87c988c56a365c1704d0582` |
| 25 | `theorem` | [ptendsto_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/ptendsto-def--c6cc4accf605d395de34af3e.md) | 209 | `result-track:c6cc4accf605d395de34af3e7485604917e54315938a4372a902026979f349c8` |
| 26 | `theorem` | [ptendsto_iff_rtendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/ptendsto-iff-rtendsto--4ff3f1f2010cbfec394f0995.md) | 213 | `result-track:4ff3f1f2010cbfec394f09950acab651d58a23e0e05620ea4861414cf4bba1d6` |
| 27 | `theorem` | [pmap_res](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/pmap-res--e933aa54ed23df350d4cd3d1.md) | 217 | `result-track:e933aa54ed23df350d4cd3d1b54d7e7e57099ce1a5af6565ae92e465c5e75880` |
| 28 | `theorem` | [tendsto_iff_ptendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/tendsto-iff-ptendsto--66f459aa490784968096663c.md) | 223 | `result-track:66f459aa490784968096663c153099707f0916d93c6dcd375c20ab6c517bc1ad` |
| 29 | `theorem` | [tendsto_iff_ptendsto_univ](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/tendsto-iff-ptendsto-univ--b8f2268ab7b6eb47342a1fd1.md) | 227 | `result-track:b8f2268ab7b6eb47342a1fd11ce070863e5ab85ab0e9cd6b9de3574d67b4984c` |
| 30 | `def` | [pcomap'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/pcomap--1c33d9642e1872a568e0fe44.md) | 234 | `declaration-track:1c33d9642e1872a568e0fe44a3551243329947c91e3d68072596b3c3b63d9e7d` |
| 31 | `def` | [PTendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/ptendsto--268d98859acd47baa8a8054d.md) | 240 | `declaration-track:268d98859acd47baa8a8054d506360c3ef85f0210ca61bf86ad748cb84ceade2` |
| 32 | `theorem` | [ptendsto'_def](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/ptendsto-def--1954cc0588a0237285541710.md) | 243 | `result-track:1954cc0588a02372855417105dfffe02b44d0dbdcba883b4039f8642e6c09bb1` |
| 33 | `theorem` | [ptendsto_of_ptendsto'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/ptendsto-of-ptendsto--96d8ef1fc6abd01afb2c6eef.md) | 247 | `result-track:96d8ef1fc6abd01afb2c6eef13ee26f557245504e619f9851f94003b0c9a66d7` |
| 34 | `theorem` | [ptendsto'_of_ptendsto](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/declarations/ptendsto-of-ptendsto--40c099e8aa3f7839bed14eaa.md) | 252 | `result-track:40c099e8aa3f7839bed14eaa552d2878721e0f02280fb507f88a731acf77fb16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
