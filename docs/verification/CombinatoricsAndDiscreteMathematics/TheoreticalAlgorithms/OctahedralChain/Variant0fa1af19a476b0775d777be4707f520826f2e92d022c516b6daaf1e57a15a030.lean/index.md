# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralChain.Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd7534f8f90c479521f2b0bc134d62e9d7ffdcd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd7534f8f90c479521f2b0bc134d62e9d7ffdcd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OctahedralSign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralsign--40bbfdb20693ba5ad7759f47.md) | 27 | `declaration-track:40bbfdb20693ba5ad7759f475770d33ae7e6db5c920e21116c1691010e7cdf95` |
| 2 | `def` | [octahedralSignWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralsignweight--6d22832eae4c7a1cc1e0b9da.md) | 33 | `declaration-track:6d22832eae4c7a1cc1e0b9dac5e92292c0e129274011bf6a90d763051ba65ab2` |
| 3 | `inductive` | [OctahedralVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralvertex--9ebb8e4075feadff95115470.md) | 38 | `declaration-track:9ebb8e4075feadff951154707096ff4db2fad64c6b23c5fb03d7fef19f77ed9d` |
| 4 | `inductive` | [OctahedralEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedraledge--a81c716c4367903f70d143c9.md) | 45 | `declaration-track:a81c716c4367903f70d143c9bb2fc423bde0f251e10ad7f7e6a012583296400f` |
| 5 | `structure` | [OctahedralFace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralface--f167d25fe58eb2f8681fc7fd.md) | 52 | `declaration-track:f167d25fe58eb2f8681fc7fd45bec3c0f48c0c9613ec632176931ce2253f7f4f` |
| 6 | `def` | [octahedralVertexId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralvertexid--6f67b24c0891f15202c45102.md) | 59 | `declaration-track:6f67b24c0891f15202c4510216618bb7151da6d3a3cfa1b95b2beeef7789ad9b` |
| 7 | `def` | [octahedralEdgeId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedraledgeid--b3f79c1a8e8fc4e99c88bafa.md) | 68 | `declaration-track:b3f79c1a8e8fc4e99c88bafa10a966288f5559817a59df41cbe4822af76d8370` |
| 8 | `def` | [octahedralFaceId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfaceid--5de3cca02dbd764087d8329f.md) | 83 | `declaration-track:5de3cca02dbd764087d8329f6cf3a325e79426a7b31d58e4b8c2a56b1a2ea9b5` |
| 9 | `def` | [octahedralVertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralvertices--aae7507069331c0f1db88b1b.md) | 94 | `declaration-track:aae7507069331c0f1db88b1bfd85a6597431ad98671bd2f20cd348b2c0fa477c` |
| 10 | `def` | [octahedralEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedraledges--53df1e6824e0d0b83fe8fece.md) | 100 | `declaration-track:53df1e6824e0d0b83fe8fece8405f6e46aeb2662eb38d2244c36e319c4b2ec6a` |
| 11 | `def` | [octahedralFaces](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfaces--d20047ff2416c5e032180eea.md) | 109 | `declaration-track:d20047ff2416c5e032180eea98ed4c0f027a5f2465b26a87ec8797f4867158f6` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedraledgeboundary--ebc67a8cabf90409a6950eb9.md) | 120 | `declaration-track:ebc67a8cabf90409a6950eb95594dde20610d6b2de8ce7af8e4508910d0aae75` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfaceboundary--f6f22c58f6e6082df08ad103.md) | 127 | `declaration-track:f6f22c58f6e6082df08ad103d7d066e2b56456a7f8cef073cc5064442a3be11f` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfacecoefficient--9788063865e6233de145cd24.md) | 134 | `declaration-track:9788063865e6233de145cd240f2284efab53e5569041bda4a8b359254c7030d1` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralemptycell--54d5754ae193a2bd8a5a23ae.md) | 140 | `declaration-track:54d5754ae193a2bd8a5a23aecc34d0c4a620aee6fe9418de72020b34bfb9bb61` |
| 16 | `def` | [OctahedralCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralcell--bc85bfdbfff0420c6ae1e4fe.md) | 143 | `declaration-track:bc85bfdbfff0420c6ae1e4feddf44528d016352688246711eee5f44df749f291` |
| 17 | `def` | [octahedralCellLabel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralcelllabel--a0f055cbb3296dd282822ca8.md) | 149 | `declaration-track:a0f055cbb3296dd282822ca8f6737ec6c586a07d59a860decda8b43d44ff8fda` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralboundarycells--f9fdb89a971318b923a20479.md) | 156 | `declaration-track:f9fdb89a971318b923a20479a191c6b3dc9b474c079ef410c47cc2bb1eb65abc` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfinitesound--a3bc5b41ebc5210d7deda880.md) | 164 | `declaration-track:a3bc5b41ebc5210d7deda880f3caf9bcfaa9f2b60e3946b075d4a1900d8b2981` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfinitesoundproof--482328e564e2fd147c754acf.md) | 169 | `result-track:482328e564e2fd147c754acfc36a500822984e83d5ac1271894e4e40994bad05` |
| 21 | `def` | [octahedralCellComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralcellcomplex--b895383335351096ee5e9c82.md) | 173 | `declaration-track:b895383335351096ee5e9c82152c4333e10e7012bc1bb43d31bc44e2bd53cf50` |
| 22 | `def` | [octahedralSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralspherechain--befe29e9f90942c673c5140f.md) | 184 | `declaration-track:befe29e9f90942c673c5140ff218879883c77957d38bd02f56805e252faa5f50` |
| 23 | `def` | [octahedralSphereBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralsphereboundary--5a02be498c5275bc9a73a422.md) | 189 | `declaration-track:5a02be498c5275bc9a73a422265561a5e50bc7303ec019d7d6c5ebdf9d805592` |
| 24 | `def` | [octahedralEdgeCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedraledgecoefficient--a760336048f6d30a185f7d57.md) | 193 | `declaration-track:a760336048f6d30a185f7d57206268eee589ebb27af7c98a0ff2179e2a501acf` |
| 25 | `def` | [OctahedralSphereClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralsphereclosed--0d3cd8a8042b4a9638dc2aa9.md) | 202 | `declaration-track:0d3cd8a8042b4a9638dc2aa9c22084118573e9a9910f55d9be24963ff21d9ed2` |
| 26 | `theorem` | [octahedralSphereClosedProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralsphereclosedproof--f0888255471d01f3d5052de0.md) | 207 | `result-track:f0888255471d01f3d5052de061dbbb3549b68a4b4b9ea7ff01d2070db2a7b2db` |
| 27 | `def` | [octahedralVertexCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralvertexcoefficient--d663634991062932acf68e38.md) | 215 | `declaration-track:d663634991062932acf68e38c74b4f96dec55a14524ae89711f2f38e3e16b9c4` |
| 28 | `def` | [octahedralFaceChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfacechain--ad30f1f21727bcf2f485e483.md) | 224 | `declaration-track:ad30f1f21727bcf2f485e48345b960e04ea883df38f9fb34b5b1da7004b58b16` |
| 29 | `def` | [octahedralFaceBoundarySquared](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralfaceboundarysquared--59c369e0b77524234582f378.md) | 229 | `declaration-track:59c369e0b77524234582f37875f19f4d8527921da8e688f1e3df02cd43b8ad09` |
| 30 | `def` | [OctahedralBoundarySquaredZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralboundarysquaredzero--2e024e2b7b0d7a4ac7ca3bc2.md) | 234 | `declaration-track:2e024e2b7b0d7a4ac7ca3bc2c7b2bde05ccc76752d88137aeb077eb5603d3027` |
| 31 | `theorem` | [octahedralBoundarySquaredZeroProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralboundarysquaredzeroproof--6d69e3dba7a9e9801a6fd5b3.md) | 239 | `result-track:6d69e3dba7a9e9801a6fd5b3bfecf4f0aef6116d8baf0fdd0e2bc2603590a378` |
| 32 | `def` | [octahedralClosedSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/declarations/octahedralclosedspherechain--0b26d8a052a8d3ac8c038ad2.md) | 250 | `declaration-track:0b26d8a052a8d3ac8c038ad27417a0507abb1f92104a0504a917dafe07b3bba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
