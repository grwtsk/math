# Verification target: GRWTSK.Algebra.LinearAlgebra.StrongTopology.Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02afed1729dffb2a40e08bb5c47a094f2755ccbe",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02afed1729dffb2a40e08bb5c47a094f2755ccbe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformConvergence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [strongTopology](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/strongtopology--ff4ff1c446013daa375a7d71.md) | 75 | `declaration-track:ff4ff1c446013daa375a7d718cec2c3e62274ba775a9d41d02eadbcef010461a` |
| 2 | `def` | [strongUniformity](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/stronguniformity--83fc5978c500f7b7118595be.md) | 83 | `declaration-track:83fc5978c500f7b7118595be324bc84f9fa79821de41cfdd1d19b70ff7749aa2` |
| 3 | `theorem` | [strongUniformity_topology_eq](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/stronguniformity-topology-eq--50996681f9f3100cd076d19c.md) | 91 | `result-track:50996681f9f3100cd076d19cc5769ee1186f6d2c58e1b2d42e8701ef9290f35b` |
| 4 | `theorem` | [strongUniformity.uniformEmbedding_coeFn](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/stronguniformity-uniformembedding-coefn--eea4b0a761288d1d353c33d0.md) | 96 | `result-track:eea4b0a761288d1d353c33d03d94403795befffe9abf6f29c9a7f83c6ad317bf` |
| 5 | `theorem` | [strongTopology.embedding_coeFn](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/strongtopology-embedding-coefn--4baa3c2d7d75c4ee2c0382d1.md) | 104 | `result-track:4baa3c2d7d75c4ee2c0382d12d14f7ffe46b89f72ac292c7624bf202d750cc14` |
| 6 | `theorem` | [strongUniformity.uniformAddGroup](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/stronguniformity-uniformaddgroup--6414345f7a26eca9cd0043c0.md) | 110 | `result-track:6414345f7a26eca9cd0043c00203f384b03235585071ec265bba774f6aca0aad` |
| 7 | `theorem` | [strongTopology.topologicalAddGroup](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/strongtopology-topologicaladdgroup--fd627319634296c5f493e54a.md) | 119 | `result-track:fd627319634296c5f493e54afaab39ec586bcb0d4c90d172e1daa7bd4eb72411` |
| 8 | `theorem` | [strongTopology.t2Space](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/strongtopology-t2space--b347be93bfc65a30397f6e51.md) | 128 | `result-track:b347be93bfc65a30397f6e51c2af5c93fbaf30bcaacd5de6f2731480a8ae2be9` |
| 9 | `theorem` | [strongTopology.continuousSMul](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/strongtopology-continuoussmul--2e5e12c4973e26b59e0e03c1.md) | 137 | `result-track:2e5e12c4973e26b59e0e03c1d27329dd8a194e40ee22e966abf5b7dd28a119d5` |
| 10 | `theorem` | [strongTopology.hasBasis_nhds_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/strongtopology-hasbasis-nhds-zero-of-basis--4d448df60ba71085b172233d.md) | 152 | `result-track:4d448df60ba71085b172233d6699fa1bd3e5547884d52ce9eb6d2c16ecaa6242` |
| 11 | `theorem` | [strongTopology.hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/strongtopology-hasbasis-nhds-zero--48d0f0b99b1e56dad4f85669.md) | 167 | `result-track:48d0f0b99b1e56dad4f85669a06550b27f41d30f5ed5d18909ed4e8334643e79` |
| 12 | `instance` | [topologicalSpace](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/topologicalspace--c23e3f6338a83afa709647e3.md) | 186 | `declaration-track:c23e3f6338a83afa709647e376d5bcd16eb349be755273a964f7d95c775d3197` |
| 13 | `instance` | [topologicalAddGroup](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/topologicaladdgroup--9bc401f4890327abf9aea19b.md) | 190 | `declaration-track:9bc401f4890327abf9aea19bb9b070e23c7c20e26355cdd2d5de83eca632ba78` |
| 14 | `instance` | [continuousSMul](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/continuoussmul--e6c296db0e33f6dbab2e6e4b.md) | 194 | `declaration-track:e6c296db0e33f6dbab2e6e4b680ccdb5fc9559390a841f5523e28694e8dceebe` |
| 15 | `instance` | [uniformSpace](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/uniformspace--32de6f69ed96d2218b6b1719.md) | 200 | `declaration-track:32de6f69ed96d2218b6b1719da019cb306839899ad07a97b6bbdb5d87688d64f` |
| 16 | `instance` | [uniformAddGroup](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/uniformaddgroup--09c0a12b62daae26e378b8c9.md) | 203 | `declaration-track:09c0a12b62daae26e378b8c9df1feaa7f8e86549311f74f278abf597dae34fa1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/instance--a553d6c7bbbd4ead49d391e6.md) | 206 | `declaration-track:a553d6c7bbbd4ead49d391e6c776d100dba04feeabc7e470561059ea357dfd30` |
| 18 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/hasbasis-nhds-zero-of-basis--a5552142ced845b6aabf0078.md) | 212 | `result-track:a5552142ced845b6aabf0078023f6d7796bb741a8a1bb5121852b4eb8761e10d` |
| 19 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/hasbasis-nhds-zero--bbc7f176ce0b7745875859b2.md) | 221 | `result-track:bbc7f176ce0b7745875859b25e0ce8c8ca45701a5d50a557477e15ff3bd3c060` |
| 20 | `def` | [precomp](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/precomp--3c38f370ed1c01f060a14a16.md) | 234 | `declaration-track:3c38f370ed1c01f060a14a16c30854f153360f87b21c3623ed5c8abd1d128a8f` |
| 21 | `def` | [postcomp](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/postcomp--7fe7983b05db13303c18dbe1.md) | 256 | `declaration-track:7fe7983b05db13303c18dbe19ab45e11daa8e8ca83ba881f05484182f7059a42` |
| 22 | `def` | [arrowCongrSL](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/arrowcongrsl--a964ecf258b7d4c258259316.md) | 299 | `declaration-track:a964ecf258b7d4c258259316c6c3042a3e0d8f705da8f352c0d811fc9409a697` |
| 23 | `theorem` | [arrowCongrSL_toLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/arrowcongrsl-tolinearequiv-apply--53faa33f4dfae0a9e905f954.md) | 322 | `result-track:53faa33f4dfae0a9e905f9548fa1652dec0ac0fe39d8315924966092ae64681b` |
| 24 | `theorem` | [arrowCongrSL_toLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/arrowcongrsl-tolinearequiv-symm-apply--7a314090253e8dd7691d1598.md) | 330 | `result-track:7a314090253e8dd7691d15988aaf62e924959317e6ecf04f8220b6d70913b123` |
| 25 | `def` | [arrowCongr](../../../../../mathematics/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/declarations/arrowcongr--af744efc267a882d0c2319d2.md) | 349 | `declaration-track:af744efc267a882d0c2319d223e78d8d75adb2fcf508a9e1d9ca4dc8354ae355` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
