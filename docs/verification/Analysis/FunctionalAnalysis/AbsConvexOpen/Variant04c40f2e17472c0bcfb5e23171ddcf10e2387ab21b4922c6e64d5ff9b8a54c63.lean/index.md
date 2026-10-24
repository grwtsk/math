# Verification target: GRWTSK.Analysis.FunctionalAnalysis.AbsConvexOpen.Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6786ed8b453cbfc68274ae7b8adf9d8f5eeeea9b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6786ed8b453cbfc68274ae7b8adf9d8f5eeeea9b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean.json)

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
| 1 | `def` | [AbsConvexOpenSets](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/absconvexopensets--5578c81c021c10252525cc03.md) | 57 | `declaration-track:5578c81c021c10252525cc036f0e3ca2f85e961a5990616dd7fdea068f3cf6d9` |
| 2 | `instance` | [AbsConvexOpenSets.instCoeOut](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/absconvexopensets-instcoeout--bd320f0a2239950db7b5e3ad.md) | 60 | `declaration-track:bd320f0a2239950db7b5e3ade26866a67484cf714cb3621d5e432b381f19af3f` |
| 3 | `theorem` | [coe_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/coe-zero-mem--020d9e93d0ea08c69ee14073.md) | 67 | `result-track:020d9e93d0ea08c69ee140734515a999950792e75c55f17cfee45e7586ab31f7` |
| 4 | `theorem` | [coe_isOpen](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/coe-isopen--c309b884ee7472c177a09e49.md) | 70 | `result-track:c309b884ee7472c177a09e4956489646b1a47b1c3e692d3bf64c6148287385a7` |
| 5 | `theorem` | [coe_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/coe-nhds--c3f9f39e0f1319775588edd8.md) | 73 | `result-track:c3f9f39e0f1319775588edd830406e7b1332f4efda3ab655336c164b6c15e308` |
| 6 | `theorem` | [coe_balanced](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/coe-balanced--f3e3901a0e901b7d95201bff.md) | 76 | `result-track:f3e3901a0e901b7d95201bff5e9cc616e6c8bfa58e30681ee3dabf2b00d48e66` |
| 7 | `theorem` | [coe_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/coe-convex--dd3de3aa3973d9c9a0ad9d1f.md) | 79 | `result-track:dd3de3aa3973d9c9a0ad9d1f0756193604408cb261aa05ae77521a26d18e1980` |
| 8 | `instance` | [AbsConvexOpenSets.instNonempty](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/absconvexopensets-instnonempty--eeef516b01577cb50eabb370.md) | 84 | `declaration-track:eeef516b01577cb50eabb37027d05998c1e886b0430a543b1093eb4fda0eada3` |
| 9 | `def` | [gaugeSeminormFamily](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/gaugeseminormfamily--c9fc72b4c7b3644bab1d9a21.md) | 101 | `declaration-track:c9fc72b4c7b3644bab1d9a2197ecba00f33111445950ddc1713e5f87c69c52d0` |
| 10 | `theorem` | [gaugeSeminormFamily_ball](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/gaugeseminormfamily-ball--a5127cbf56775ec9fcb1ec80.md) | 106 | `result-track:a5127cbf56775ec9fcb1ec80ee4e90efc524fbf35369eee658baf34e7fa9aa52` |
| 11 | `theorem` | [with_gaugeSeminormFamily](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/with-gaugeseminormfamily--d1ac4bb98e2499db1e84edd1.md) | 118 | `result-track:d1ac4bb98e2499db1e84edd1d188e68cf316007692c70c38aedf69f71750654e` |
| 12 | `instance` | [LocallyConvexSpace.toPolynormableSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/AbsConvexOpen/Variant04c40f2e17472c0bcfb5e23171ddcf10e2387ab21b4922c6e64d5ff9b8a54c63.lean/declarations/locallyconvexspace-topolynormablespace--8b630d3cd08f5b5dbbc7bbdd.md) | 142 | `declaration-track:8b630d3cd08f5b5dbbc7bbdd9579e18d59f632a72fe2b8bf1ad526ce6da6bdab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
