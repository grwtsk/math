# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grothendieck.Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa79e12f43f312ac1584903271159657be3201dc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa79e12f43f312ac1584903271159657be3201dc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean.json)

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
| 1 | `lemma` | [hasColimit_ι_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/hascolimit-comp--7e060c372727957af9a1b35d.md) | 46 | `result-track:7e060c372727957af9a1b35d31ae197de68be075d239883fb81ed3da281fa59b` |
| 2 | `def` | [fiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/fiberwisecolimit--a99f7b189582cebf6cad2df7.md) | 55 | `declaration-track:a99f7b189582cebf6cad2df7bf1f732e2a3e872ca8956f3213875e32cfb26c8e` |
| 3 | `def` | [fiberwiseColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/fiberwisecolim--71d4c5e238d3a92510c0e9a5.md) | 92 | `declaration-track:71d4c5e238d3a92510c0e9a50d701d6f63a4293b4d2d687219031d0ee6889558` |
| 4 | `def` | [natTransIntoForgetCompFiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/nattransintoforgetcompfiberwisecolimit--88beb33cab7ab06c951ebadc.md) | 105 | `declaration-track:88beb33cab7ab06c951ebadc8e328a8b6b11e56aaebccb522b0781e0993f7d48` |
| 5 | `def` | [coconeFiberwiseColimitOfCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/coconefiberwisecolimitofcocone--895115abe865ccae912f22c5.md) | 124 | `declaration-track:895115abe865ccae912f22c558646e8bc1b9cbe8771bffc90bff671b9a62bceb` |
| 6 | `def` | [isColimitCoconeFiberwiseColimitOfCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/iscolimitcoconefiberwisecolimitofcocone--643ae80e81639d39003dacfa.md) | 134 | `declaration-track:643ae80e81639d39003dacfa629344a44f4b514101022de7724d23dae1243687` |
| 7 | `lemma` | [hasColimit_fiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/hascolimit-fiberwisecolimit--13ac8e6e1f7f9b64b4807e92.md) | 147 | `result-track:13ac8e6e1f7f9b64b4807e92706a25bd334817048df7825b796fc90484317683` |
| 8 | `def` | [coconeOfCoconeFiberwiseColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/coconeofcoconefiberwisecolimit--7f6f3269e90a06da43aa75e8.md) | 157 | `declaration-track:7f6f3269e90a06da43aa75e8965613739e2e2b5d4aad2576876a6bb609016097` |
| 9 | `def` | [isColimitCoconeOfFiberwiseCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/iscolimitcoconeoffiberwisecocone--211456a73b664d719ca20ae1.md) | 173 | `declaration-track:211456a73b664d719ca20ae150ec04a3f58ce636158db84d97ed159a36957271` |
| 10 | `lemma` | [hasColimit_of_hasColimit_fiberwiseColimit_of_hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/hascolimit-of-hascolimit-fiberwisecolimit-of-hascolimit--576f3cd865946ee84661079a.md) | 192 | `result-track:576f3cd865946ee84661079af7f1140b251839446f32bffbdc64c06cf26aae68` |
| 11 | `def` | [colimitFiberwiseColimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/colimitfiberwisecolimitiso--1b3b7d847c35f00cddf2306c.md) | 198 | `declaration-track:1b3b7d847c35f00cddf2306c64c953f7b4b022a2fcb87b0823bc7ac2a7f51567` |
| 12 | `lemma` | [ι_colimitFiberwiseColimitIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/colimitfiberwisecolimitiso-hom--7c7ab6aa916bddd3f66a3b0d.md) | 205 | `result-track:7c7ab6aa916bddd3f66a3b0d799660455eab274dfd9e95bda7dcb048448a5231` |
| 13 | `lemma` | [ι_colimitFiberwiseColimitIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/colimitfiberwisecolimitiso-inv--6b2d16c8e99f23b428dc70a9.md) | 212 | `result-track:6b2d16c8e99f23b428dc70a9ba9e72717c430f173b2666b14e58c5d976016660` |
| 14 | `theorem` | [hasColimitsOfShape_grothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/hascolimitsofshape-grothendieck--f0c98de7fa3ad23b48f0ab4f.md) | 222 | `result-track:f0c98de7fa3ad23b48f0ab4f0c6fa5a6d319d6572204dfa0769b22eb11e4a1ec` |
| 15 | `def` | [fiberwiseColimCompColimIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/fiberwisecolimcompcolimiso--f0968769fbde6a70bb3fe003.md) | 235 | `declaration-track:f0968769fbde6a70bb3fe0032a562709c59361c6a130a334630c5d2d0bf25376` |
| 16 | `def` | [fiberwiseColimCompEvaluationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantabf9fcdf9ecb9701a02a4988a5be9e3d7cef7fe8d57083062849e5b356ebd928.lean/declarations/fiberwisecolimcompevaluationiso--f4410f2403de841edfda523f.md) | 242 | `declaration-track:f4410f2403de841edfda523f93be3ddf050cd0e5d011c2030cbf8baa03c76e64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
