# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ByteSlice.Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "556342243f755da7a7a883058a54af294bd6ac09",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `556342243f755da7a7a883058a54af294bd6ac09`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean.json)

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
| 1 | `abbrev` | [isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/isempty--b86bbbfa3f2bdf751b418461.md) | 25 | `declaration-track:b86bbbfa3f2bdf751b418461828e715f2db873fc10d1a1c9c75d35e6b6536241` |
| 2 | `theorem` | [stop_eq_start_add_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/stop-eq-start-add-size--7f5fd05de6d2c424b2734bbc.md) | 27 | `result-track:7f5fd05de6d2c424b2734bbc21d9aa06ae22950943e66e097d82d90966ee4d15` |
| 3 | `abbrev` | [pop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/pop--b0d1533742c02587a2201e86.md) | 31 | `declaration-track:b0d1533742c02587a2201e865768dfb372c6d4b76e37657a85fab31fc38d68b5` |
| 4 | `abbrev` | [popFront](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/popfront--d6766bd6907b57360a483066.md) | 35 | `declaration-track:d6766bd6907b57360a4830667ecf155bdb58c9d307dad9cfbde45b961efd4a1c` |
| 5 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/foldlm--13c84266b93b82637716f70f.md) | 40 | `declaration-track:13c84266b93b82637716f70f17323ca13522a003d943e2ccbf77ff02bec8aa1c` |
| 6 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/foldl--bf5b091d5d94d87f3d3de4e9.md) | 45 | `declaration-track:bf5b091d5d94d87f3d3de4e94b2c6602f67baa749daf2a6a5a8a138fe9ff1c4d` |
| 7 | `def` | [forIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/forin--5e31e66781b05b427de2dde5.md) | 50 | `declaration-track:5e31e66781b05b427de2dde5a5c623e3b81f78067122daf460687271e3060d5c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/instance--7476de851de6f7f27f4b21aa.md) | 62 | `declaration-track:7476de851de6f7f27f4b21aacfc83299ebcf0c38191c01a37ecc50ef1f22a452` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/instance--8a17ad49b719f03be16b3842.md) | 65 | `declaration-track:8a17ad49b719f03be16b3842542dd3c5c7e01dfaa30e1e1d48e991921567b971` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/instance--d11336e38e276489372d366a.md) | 68 | `declaration-track:d11336e38e276489372d366ac6a76f18c6e97f37370d8e5a2dbf5a938eaf9c10` |
| 11 | `structure` | [ByteSubarray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/bytesubarray--4c2e13986b5747ca537c35d2.md) | 77 | `declaration-track:4c2e13986b5747ca537c35d28168caf0450752a2042427e471336ddad682c0fc` |
| 12 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/size--f0bf256e09d502c76cba5287.md) | 109 | `declaration-track:f0bf256e09d502c76cba5287907dca5fa7b4075eb282057068f6db99363f8ee5` |
| 13 | `def` | [isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/isempty--18a6bdeef3f3275dd86f9230.md) | 113 | `declaration-track:18a6bdeef3f3275dd86f9230c8b5cef68bed9ba2769a9270d40f366818cd159a` |
| 14 | `theorem` | [stop_eq_start_add_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/stop-eq-start-add-size--05b36c11e759055bfca11460.md) | 116 | `result-track:05b36c11e759055bfca1146071bd629254aea824fc5c177a79fe535b6b9d7c4c` |
| 15 | `def` | [toByteArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/tobytearray--7932d7f84852ddadb56e40d9.md) | 121 | `declaration-track:7932d7f84852ddadb56e40d927ce7645ce1630a070ce9e97958eebd31ce8ed4f` |
| 16 | `def` | [get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/get--9061e3da8a023cfcc039dfc4.md) | 126 | `declaration-track:9061e3da8a023cfcc039dfc46821face7188ab3bd6f997dc4e254fb3d3c878de` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/instance--bf16771a96a0e95d63981712.md) | 133 | `declaration-track:bf16771a96a0e95d63981712719077ad34dab79143e2c6877782e9aff529909e` |
| 18 | `def` | [pop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/pop--73ae1fb0abab298f98712ce4.md) | 138 | `declaration-track:73ae1fb0abab298f98712ce44d25546c0109674c2d8a656a09f42e094ae0b32e` |
| 19 | `def` | [popFront](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/popfront--10f8d646534e7f6dba74b617.md) | 148 | `declaration-track:10f8d646534e7f6dba74b6174462179afab9f0657feaa4da856fc1101e30cd7e` |
| 20 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/foldlm--2db8003e63d7032efcba4f0b.md) | 157 | `declaration-track:2db8003e63d7032efcba4f0bdac1352db32fdbaec1bd3472f6b82dd9969bf57f` |
| 21 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/foldl--d43b9eeb769294566786bbb6.md) | 162 | `declaration-track:d43b9eeb769294566786bbb6b7f5a615176577b5af3e072d18d948033f905b43` |
| 22 | `def` | [forIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/forin--807d824374ced6647c50e093.md) | 168 | `declaration-track:807d824374ced6647c50e093dd8d3433923d35bb55b925de589b9dbf12071795` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/instance--58511d491158456295391328.md) | 180 | `declaration-track:58511d491158456295391328a6da73afb5ba0a5a1d4a4b0b002628bd588011ea` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/instance--47695d787c0003249e62abdc.md) | 183 | `declaration-track:47695d787c0003249e62abdcd0cd3a67a4dbb1567efd5d05629fdc2c6f48254a` |
| 25 | `def` | [ByteArray.toByteSubarray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/bytearray-tobytesubarray--3429f1707397a4e2a76c7453.md) | 191 | `declaration-track:3429f1707397a4e2a76c7453f188a503c01a81f7c29775a6219a544f4a2b0615` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/declarations/instance--9783034046020753d9c07f8b.md) | 199 | `declaration-track:9783034046020753d9c07f8b7c5ae83702a9bacbdc97f5d38e71ff3a2abdc6d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
