# Verification target: GRWTSK.Algebra.Opposite.Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90ce03b8558307d628fdb1bbe24f13e9e5fccb69",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90ce03b8558307d628fdb1bbe24f13e9e5fccb69`.

Source path: `GRWTSK/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNNRatCast](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instnnratcast--b2246e84597cf63890a1c95c.md) | 24 | `declaration-track:b2246e84597cf63890a1c95c129fcd7b46b7f90729a8de0867ab44ed000eafdd` |
| 2 | `instance` | [instRatCast](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instratcast--5c3ea6feda4c09bc19aa37a6.md) | 25 | `declaration-track:5c3ea6feda4c09bc19aa37a67b3e2b4d244a2ac781e31c0c4e99b6535dacc4ff` |
| 3 | `lemma` | [op_nnratCast](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/op-nnratcast--8c8b0dcd40bc4a464f53e294.md) | 28 | `result-track:8c8b0dcd40bc4a464f53e29435c08f074311b0618134200ea0fff0b1a702c6be` |
| 4 | `lemma` | [unop_nnratCast](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/unop-nnratcast--6146a51b89d3a8843f5589e8.md) | 31 | `result-track:6146a51b89d3a8843f5589e8f2c02ae5f8d4b95a261138d5c3bbbcac7241a932` |
| 5 | `lemma` | [op_ratCast](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/op-ratcast--0054e6b1f9df63d0bf06acd2.md) | 34 | `result-track:0054e6b1f9df63d0bf06acd27cb7047446c2fc64c41105ea8e6be7b262ce413a` |
| 6 | `lemma` | [unop_ratCast](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/unop-ratcast--b12aafcffa414f97030128fa.md) | 37 | `result-track:b12aafcffa414f97030128fa2e764e5dbbd21f654125e7140f93cc849a9f8692` |
| 7 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instdivisionsemiring--ef850a6f2b6ac803dc207757.md) | 39 | `declaration-track:ef850a6f2b6ac803dc207757931b1375d808109d55306eaa0a48461ff7697a08` |
| 8 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instdivisionring--4373b70da1e8330f3e5bafde.md) | 47 | `declaration-track:4373b70da1e8330f3e5bafdefdc36d7d44a0add242281ac88b703d03a1dbf6ec` |
| 9 | `instance` | [instSemifield](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instsemifield--e2b2787474f40ae6b3a7071b.md) | 55 | `declaration-track:e2b2787474f40ae6b3a7071bd8c2852edce84f39206a76965cafeff051cd7ed5` |
| 10 | `instance` | [instField](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instfield--3b0b683f8626c69aa4be6a23.md) | 59 | `declaration-track:3b0b683f8626c69aa4be6a234994ba1ea3930bdc77705257a3d9c5e24fc66997` |
| 11 | `instance` | [instDivisionSemiring](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instdivisionsemiring--d18aa78b09a12d44ebf632e5.md) | 67 | `declaration-track:d18aa78b09a12d44ebf632e5351a9d26993f3bec9c2951050f9115567f9130a0` |
| 12 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instdivisionring--986e2bd53a232830c35bfe61.md) | 75 | `declaration-track:986e2bd53a232830c35bfe614cde632726fe03e6b0703e435b16e6f6203990c6` |
| 13 | `instance` | [instSemifield](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instsemifield--4bfebe84f66829adbb466a3e.md) | 83 | `declaration-track:4bfebe84f66829adbb466a3e9c05a6f658d5901272926963bcccdc8907d3f6bb` |
| 14 | `instance` | [instField](../../../../mathematics/Algebra/Opposite/Variant07176b37af58620d99cc77d55d41c389684f2b7678cd04ef7daddadf22280088.lean/declarations/instfield--75c8d63f9770b4ccff2d2930.md) | 87 | `declaration-track:75c8d63f9770b4ccff2d2930c61671bdf850a30cbd299fcd25650f71269fdc20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
