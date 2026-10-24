# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bf66d5d6cc6f5d01ff8706a72dd5affe02ecbd3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bf66d5d6cc6f5d01ff8706a72dd5affe02ecbd3`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonarchimedeanAddGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/nonarchimedeanaddgroup--c75bedf301808447deabb324.md) | 35 | `declaration-track:c75bedf301808447deabb3245147f9cc44a4c5478a05eb3745e31be3d2efa305` |
| 2 | `class` | [NonarchimedeanGroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/nonarchimedeangroup--75a4581ef0837c013edf6414.md) | 42 | `declaration-track:75a4581ef0837c013edf6414ef1950fee0e14ff883f10e1a584ae3a679218036` |
| 3 | `class` | [NonarchimedeanRing](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/nonarchimedeanring--ff6da2a4b6ef2985ac8c3599.md) | 49 | `declaration-track:ff6da2a4b6ef2985ac8c359902aedf10af4fbf4dbcd053730da88b60dd5ce96a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/instance--de4df176657d17327b5b230f.md) | 56 | `declaration-track:de4df176657d17327b5b230f3d8b988b7f4bb21eb4809065d56d8964b6cd4db5` |
| 5 | `theorem` | [nonarchimedean_of_emb](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/nonarchimedean-of-emb--ed85ca682246bd4081037c55.md) | 71 | `result-track:ed85ca682246bd4081037c5571c82f2816870a636bd5746baa6fe439e63ae93d` |
| 6 | `theorem` | [prod_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/prod-subset--806acdf68853f7eb71286c15.md) | 86 | `result-track:806acdf68853f7eb71286c1552c7df07b75a16dd00c3a5dfba0e590048a043f5` |
| 7 | `theorem` | [prod_self_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/prod-self-subset--bbcdb33d5bff633f3ed4248d.md) | 104 | `result-track:bbcdb33d5bff633f3ed4248da679d719617ce1979b203111c8ec19ea62ebadfb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/instance--cd7f040cd80b98d41683a9ad.md) | 113 | `declaration-track:cd7f040cd80b98d41683a9ade8644976b3d24db8199d21d0c22974b93ac9b61d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/instance--2109dbf8432a94e640cbb8aa.md) | 133 | `declaration-track:2109dbf8432a94e640cbb8aa3821305ff7f59ef3d07a433f955ecc98c1aee4dc` |
| 10 | `theorem` | [left_mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/left-mul-subset--ca5ac9026014b52fce6db63f.md) | 138 | `result-track:ca5ac9026014b52fce6db63fc0dcd001cb2c75cbabdd0c4ca1864c14c7f84513` |
| 11 | `theorem` | [mul_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant0992a345de5c9e4ee04c6cd37c37a9b7f757a00cc23e9014de11b6a8c42a5327.lean/declarations/mul-subset--91617e5ad7d30ab887e466ed.md) | 144 | `result-track:91617e5ad7d30ab887e466ed96d37f9b202d59967919973d640da5108bc7fddf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
