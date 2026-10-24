# Verification target: GRWTSK.Algebra.LinearAlgebra.Artinian.Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09428545fcd5c9687b9ae49a336d1a1040b063b5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09428545fcd5c9687b9ae49a336d1a1040b063b5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HopkinsLevitzki` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.finite_of_isSemisimpleRing](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/declarations/module-finite-of-issemisimplering--25eb455619cf43ffe3654675.md) | 21 | `result-track:25eb455619cf43ffe365467529c523c966dfe8479d06d4b422fc3fff274b097e` |
| 2 | `lemma` | [Module.finite_of_isArtinianRing](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/declarations/module-finite-of-isartinianring--01e933c6613c09423df73848.md) | 33 | `result-track:01e933c6613c09423df73848638692b9f97f579c3cdd093a93f2c4571c66a72e` |
| 3 | `lemma` | [Module.finite_iff_isArtinianRing](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/declarations/module-finite-iff-isartinianring--a67f5282d10955fb926f5791.md) | 40 | `result-track:a67f5282d10955fb926f579158d9d4316d01ce303f0aa132dd2fb4ca8056e956` |
| 4 | `lemma` | [Module.finite_iff_krullDimLE_zero](../../../../../mathematics/Algebra/LinearAlgebra/Artinian/Variantc2872e17a7a030fb2a0645181563eca7318c69ebf9bcf363d50ba62e8d45fb47.lean/declarations/module-finite-iff-krulldimle-zero--2b799b64565fbb5d933b1cb4.md) | 47 | `result-track:2b799b64565fbb5d933b1cb4a6be824ed9cf8204e6924bb4719ba5de3491bd42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
