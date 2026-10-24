# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalBicomplex.Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9f7ce59fdfb94a4286c6503668e36da197012ac",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9f7ce59fdfb94a4286c6503668e36da197012ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HomologicalComplex₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/homologicalcomplex--17e9b60ddf6493c6808fd79e.md) | 34 | `declaration-track:17e9b60ddf6493c6808fd79e9284f2f9497f9d95a9544f7ce0744163f40331a9` |
| 2 | `def` | [toGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/togradedobject--6139371e2c40a51c22b34bca.md) | 44 | `declaration-track:6139371e2c40a51c22b34bca99a9ed7629661da7653a621b218f4f71c0ca2462` |
| 3 | `def` | [toGradedObjectMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/togradedobjectmap--4048626d7f4dcd23c7c7f2ca.md) | 49 | `declaration-track:4048626d7f4dcd23c7c7f2ca819aa6e03d3e354fc1201154f662c45003ed8fcd` |
| 4 | `lemma` | [toGradedObjectMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/togradedobjectmap-apply--066c7e6a2ff06c272da3a615.md) | 54 | `result-track:066c7e6a2ff06c272da3a615ded7bb5c3767398625c2566b65eb3d9eb7a5b21f` |
| 5 | `def` | [toGradedObjectFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/togradedobjectfunctor--4a2cd8dcc453f545c0919626.md) | 60 | `declaration-track:4a2cd8dcc453f545c0919626bee74ad51767f190d00a1b90fc0baa7ded628779` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/instance--fb679580cd086b64d1f9df8a.md) | 64 | `declaration-track:fb679580cd086b64d1f9df8a3673bcb787a1506fa726fda844428e82c8797f28` |
| 7 | `def` | [ofGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/ofgradedobject--d28e18828a4bda6e23c5bab8.md) | 85 | `declaration-track:d28e18828a4bda6e23c5bab8e65a89b1f4b307bcd975be5a8ab3a62c809a02dc` |
| 8 | `lemma` | [ofGradedObject_toGradedObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/ofgradedobject-togradedobject--bd43ae4eadd6456cf2209192.md) | 101 | `result-track:bd43ae4eadd6456cf220919210b0226f3d51208f21f1f087e124ee11b0032981` |
| 9 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/hommk--d3dad0a521da37057079f2ad.md) | 111 | `declaration-track:d3dad0a521da37057079f2ad0eae7d62c05b2fb352de70eb748bda54222790e1` |
| 10 | `lemma` | [shape_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/shape-f--3c30f20e38d6a793e9b277cc.md) | 124 | `result-track:3c30f20e38d6a793e9b277cc5534f59459fd7ae1533075706f0827ddc61cac39` |
| 11 | `lemma` | [d_f_comp_d_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/d-f-comp-d-f--acc0cc760427e065e9143592.md) | 129 | `result-track:acc0cc760427e065e9143592e555caf72d2f06a660bdbb69954ea3d2ddbf1256` |
| 12 | `lemma` | [d_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/d-comm--d92318422c8abe4903e65a70.md) | 135 | `result-track:d92318422c8abe4903e65a70b01f957d70fae759b9d1b374c3f8b1dc2b18f9e1` |
| 13 | `lemma` | [comm_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/comm-f--f95ba1f368f5451a2442995e.md) | 140 | `result-track:f95ba1f368f5451a2442995ef68b915df3f9f943520353f5ebe4cb45a4955679` |
| 14 | `def` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/flip--1881a200af287571c2376732.md) | 148 | `declaration-track:1881a200af287571c23767327b2ca6ae99453e0b078903df7aa48c4ae204622d` |
| 15 | `lemma` | [flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/flip-flip--c68a015232900ae8eaf85cbf.md) | 159 | `result-track:c68a015232900ae8eaf85cbf306b096559c5024d8906b390060cbaf7382813ab` |
| 16 | `def` | [flipFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/flipfunctor--8760626601f3dd591743a2a3.md) | 165 | `declaration-track:8760626601f3dd591743a2a3c5f1a6f79e9467db038556b2a1f85519092b73eb` |
| 17 | `def` | [flipEquivalenceUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/flipequivalenceunitiso--83cd8c98484a4f847fca378b.md) | 176 | `declaration-track:83cd8c98484a4f847fca378b71f6c94af54e70abad94e5b127d89d019a4b1cd8` |
| 18 | `def` | [flipEquivalenceCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/flipequivalencecounitiso--51b0194f6e205df5fc380ba2.md) | 184 | `declaration-track:51b0194f6e205df5fc380ba2ef721027b64e2215eb8ca739195640dbeb050bde` |
| 19 | `def` | [flipEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/flipequivalence--8fbe6c08dddbade07d5930ff.md) | 192 | `declaration-track:8fbe6c08dddbade07d5930ff56713d5fe9e5519332a763707fabb0cf381bdd5a` |
| 20 | `def` | [XXIsoOfEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/xxisoofeq--08c3ad6ceda6a8f4c5aba7d9.md) | 202 | `declaration-track:08c3ad6ceda6a8f4c5aba7d9aa64ebe4fdabc8d713e966aebbd1f1a5671e263c` |
| 21 | `lemma` | [XXIsoOfEq_rfl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/declarations/xxisoofeq-rfl--c3432b76702dcb748b07ff67.md) | 207 | `result-track:c3432b76702dcb748b07ff675eaf2fcd6a1de3f3d3457db6be6586e9730ec7d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
