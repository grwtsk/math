# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicTopology.Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d889c7809a5da3a878d3174dee01835ff8b60d72",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d889c7809a5da3a878d3174dee01835ff8b60d72`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/adic-basis--87c58cc9fa13d649981f8231.md) | 60 | `result-track:87c58cc9fa13d649981f8231dcd4bda6adc34d2b1c1c513e49a85dc1f10239ff` |
| 2 | `def` | [ringFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/ringfilterbasis--24cae1b7f396351a8a6ad94e.md) | 83 | `declaration-track:24cae1b7f396351a8a6ad94e1efceef4b46d414c5122e83d15d3fb343c4942a3` |
| 3 | `def` | [adicTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/adictopology--9ecf33d75f724f7b066d9f41.md) | 89 | `declaration-track:9ecf33d75f724f7b066d9f4124f6bacecddcd2a887e810095a13775985891cef` |
| 4 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/nonarchimedean--e69aebee6444c0c3f719f3c6.md) | 92 | `result-track:e69aebee6444c0c3f719f3c6645f77521e1a1c4af7f983a27987f82b44e84de0` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/hasbasis-nhds-zero-adic--3c3dcc65ea2b4c61bf4b9231.md) | 96 | `result-track:3c3dcc65ea2b4c61bf4b9231acf3bee7f677806aa3d7945952de6d74064d5918` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/hasbasis-nhds-adic--fec75f723194edf28fd06494.md) | 109 | `result-track:fec75f723194edf28fd06494f5855006eafb70576266833b9e4c751d1a961aa8` |
| 7 | `theorem` | [isLinearTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/islineartopology--8dd390f87609bd01f3591652.md) | 116 | `result-track:8dd390f87609bd01f3591652ea514c322938bd7a8ec9e15ef3023a0225c1ed14` |
| 8 | `theorem` | [adic_module_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/adic-module-basis--a14ac62d884aa3c9abdb4ed1.md) | 122 | `result-track:a14ac62d884aa3c9abdb4ed1b787f80d6a15dd49f2ca96b427242d7bc564f069` |
| 9 | `def` | [adicModuleTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/adicmoduletopology--161ddc390999a16097d3e8df.md) | 137 | `declaration-track:161ddc390999a16097d3e8df914c100a49ed42ceefe769070e1b2b1affd99a8d` |
| 10 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/openaddsubgroup--188e197e17e2c1c18684282d.md) | 143 | `declaration-track:188e197e17e2c1c18684282d1c6a89b5d66a762902ee5171ace11377f7af202a` |
| 11 | `def` | [IsAdic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/isadic--a49e70422ea928b49ca0d920.md) | 156 | `declaration-track:a49e70422ea928b49ca0d9201e45bd159dd95c397522e26a7e26eb8e90ca2c62` |
| 12 | `theorem` | [isAdic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/isadic-iff--b9951b61b1fe87ba09dfc340.md) | 161 | `result-track:b9951b61b1fe87ba09dfc340d09b50ddd472ecb5bd3a665c7cd99973f45f70c6` |
| 13 | `theorem` | [is_ideal_adic_pow](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/is-ideal-adic-pow--4319a9588c208bf85fc12561.md) | 191 | `result-track:4319a9588c208bf85fc12561731375f38f424bbac0011530b63b3dda9d08a437` |
| 14 | `theorem` | [is_bot_adic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/is-bot-adic-iff--4a199ec5ce8181e53d088aca.md) | 208 | `result-track:4a199ec5ce8181e53d088aca279858ff06eff269e981ad466d1d12e51a7952e1` |
| 15 | `theorem` | [IsAdic.hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/isadic-hasbasis-nhds-zero--c1c381b7ef3d411196505b66.md) | 223 | `result-track:c1c381b7ef3d411196505b66125213bbfcede46850659900b8c67e199bbc8dcc` |
| 16 | `theorem` | [IsAdic.hasBasis_nhds](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/isadic-hasbasis-nhds--a26b123315d5b10b1adcab94.md) | 228 | `result-track:a26b123315d5b10b1adcab94d2835d6a083e3198c4fcc5b914affc31efa0a639` |
| 17 | `class` | [WithIdeal](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/withideal--8822d61392de388ef7bb5450.md) | 235 | `declaration-track:8822d61392de388ef7bb5450c75fce991fcf08728cc515809dd870c901cc1ca3` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/instance--f8143b1e5d313dea0087af4a.md) | 243 | `declaration-track:f8143b1e5d313dea0087af4a37f3b7d08bb5ce4dd512fdca4fa1d035d7df39f8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/instance--d87aced5471978579511d315.md) | 246 | `declaration-track:d87aced5471978579511d315f0e353e6ec4b347ec73a1c1ab61b44f5af1e7073` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/instance--7cea088d651541f2e293ee2d.md) | 249 | `declaration-track:7cea088d651541f2e293ee2ddc9814c9b21f7e136d40ee3d3e2260d1a209cf9f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/instance--0d0b4e73d9952e74db01e4a8.md) | 252 | `declaration-track:0d0b4e73d9952e74db01e4a800e7f326e5c9b680f07878cfa3348674a8de326d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/instance--a30ae501115fe5bae5fe9b0a.md) | 255 | `declaration-track:a30ae501115fe5bae5fe9b0a1f56e88071f8fab29ca1e44402ec887c6f4af10b` |
| 23 | `theorem` | [uniformContinuous_of_map_le](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/uniformcontinuous-of-map-le--61462c667d0dfc3222d51043.md) | 258 | `result-track:61462c667d0dfc3222d51043ff0c732caa8bbaf0528a89d41b557b16db0491e9` |
| 24 | `def` | [uniformEquiv](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/uniformequiv--b239eef0c7307161fdf19830.md) | 267 | `declaration-track:b239eef0c7307161fdf198308b35fc6cf65b8c070a3777ce78de00aac722cf99` |
| 25 | `lemma` | [isTopologicallyNilpotent_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/istopologicallynilpotent-of-mem--ed86bc1325b449de98e5f0cc.md) | 274 | `result-track:ed86bc1325b449de98e5f0cc5fd29d54a5251dd5c609e50a6263af40a76fd0f3` |
| 26 | `def` | [topologicalSpaceModule](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/topologicalspacemodule--f67d41cc5aed1cd25663106d.md) | 282 | `declaration-track:f67d41cc5aed1cd25663106d3e1507146cd5c4f79c6129e1d17acf6794ccb231` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/example--cd40f02a70f9f4db024ada64.md) | 289 | `declaration-track:cd40f02a70f9f4db024ada641107bcda5dfc2a24773201e012ffb0dbcb91637d` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/example--f3d353ac312d4f55c341db34.md) | 291 | `declaration-track:f3d353ac312d4f55c341db342ca64a10f6dfa319159a1ecf769fc1e505104364` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/example--67eb2d85c3366971d80f2318.md) | 293 | `declaration-track:67eb2d85c3366971d80f2318d31745bf4269ea1a21fb442a4763753bfdf5fe5c` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/example--5f8f1a471aa74c579cfb8386.md) | 296 | `declaration-track:5f8f1a471aa74c579cfb838634bbfc9da33e018005d468b841aca4ac56619a57` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/declarations/example--8891cab1e233d16dab4d505b.md) | 299 | `declaration-track:8891cab1e233d16dab4d505b8d4e500e3adbc9788743bbc69132b60378a93755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
