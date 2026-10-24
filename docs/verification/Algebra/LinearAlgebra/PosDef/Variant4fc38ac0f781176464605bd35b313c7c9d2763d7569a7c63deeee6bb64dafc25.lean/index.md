# Verification target: GRWTSK.Algebra.LinearAlgebra.PosDef.Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a770bc7c60ce017c00d946d3827ec60ab04d216",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a770bc7c60ce017c00d946d3827ec60ab04d216`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean.json)

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
| 1 | `lemma` | [IsHermitian.posSemidef_iff_eigenvalues_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/ishermitian-possemidef-iff-eigenvalues-nonneg--06afbaded690b5f06e3567cf.md) | 42 | `result-track:06afbaded690b5f06e3567cf10728530a831010f9ad77b58f85ecf056b8d852b` |
| 2 | `lemma` | [eigenvalues_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/eigenvalues-nonneg--61839bdb9cfbe72ced23d12b.md) | 50 | `result-track:61839bdb9cfbe72ced23d12b1a34c21cf07c90f26903f5cf6cf666d56ea65432` |
| 3 | `lemma` | [re_dotProduct_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/re-dotproduct-nonneg--0e4afdc9749c16094f30ed42.md) | 53 | `result-track:0e4afdc9749c16094f30ed4263181bcbd6387329b8339288fff5a1cc4f20830b` |
| 4 | `lemma` | [det_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/det-nonneg--f7c430c8906e2972f50b1204.md) | 59 | `result-track:f7c430c8906e2972f50b120439399b75be2f0227461c8140cbae4cb4f9c0176d` |
| 5 | `lemma` | [trace_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/trace-eq-zero-iff--9cce9444ad74fceda765adcb.md) | 63 | `result-track:9cce9444ad74fceda765adcbd284dd665a0c5d3cc09db42277c7b858f93595c9` |
| 6 | `lemma` | [eigenvalues_conjTranspose_mul_self_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/eigenvalues-conjtranspose-mul-self-nonneg--f0fb4f5503c76bc72ff3acd1.md) | 71 | `result-track:f0fb4f5503c76bc72ff3acd1b7fd21e6e86d5720bbda3c140406fedef429a0a2` |
| 7 | `lemma` | [eigenvalues_self_mul_conjTranspose_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/eigenvalues-self-mul-conjtranspose-nonneg--67df6bd0d7a7d347f77f5578.md) | 75 | `result-track:67df6bd0d7a7d347f77f55785b4a57eced2150426b124e71fd21438c39773d94` |
| 8 | `lemma` | [IsHermitian.posDef_iff_eigenvalues_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/ishermitian-posdef-iff-eigenvalues-pos--f763fdefbb1f9766887c6977.md) | 82 | `result-track:f763fdefbb1f9766887c6977fdd69c38aa25d371710ebb4a2574f68a48a51db0` |
| 9 | `lemma` | [re_dotProduct_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/re-dotproduct-pos--bc1f0301533251a0ba4b8483.md) | 89 | `result-track:bc1f0301533251a0ba4b848398337d7084bee032f85125ad7d5190b42bd5fd02` |
| 10 | `lemma` | [eigenvalues_pos](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/eigenvalues-pos--6fadcf45d52195b7ade6fd0f.md) | 93 | `result-track:6fadcf45d52195b7ade6fd0f52760060e5ff8c3e237724d8397863d7a3f4598e` |
| 11 | `def` | [PosSemidef.preInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/possemidef-preinnerproductspace--b36f58a9860f265146b23530.md) | 103 | `declaration-track:b36f58a9860f265146b235301dca193adb66b7c1d87c6876ac7dcd40f3ac2f20` |
| 12 | `abbrev` | [toSeminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/toseminormedaddcommgroup--93c09cee57d26f95d18c8b22.md) | 116 | `declaration-track:93c09cee57d26f95d18c8b227d9e9f0616edaf0ad8cb254302925c2fb859b995` |
| 13 | `abbrev` | [toNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/tonormedaddcommgroup--1fd8615733d920e962a979d9.md) | 123 | `declaration-track:1fd8615733d920e962a979d9e9e351e4044843cb8d6f0f8f8bf737bed2a447ec` |
| 14 | `def` | [toInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/PosDef/Variant4fc38ac0f781176464605bd35b313c7c9d2763d7569a7c63deeee6bb64dafc25.lean/declarations/toinnerproductspace--1841cbb499c8c8cf87798ef3.md) | 133 | `declaration-track:1841cbb499c8c8cf87798ef37f90cbf8e6d6b2205af45c70c6bdae8c6ca0b6c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
