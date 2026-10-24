# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OperatorOrder.Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e48c8e3439a2b08426b0be4c2e33d9613ff5f876",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e48c8e3439a2b08426b0be4c2e33d9613ff5f876`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OperatorModel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/declarations/operatormodel--d283abdfffe17356138a29c6.md) | 17 | `declaration-track:d283abdfffe17356138a29c648eaebd032675130afa90c733b617e758faa7c61` |
| 2 | `def` | [OperatorLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/declarations/operatorle--55bd32ec2b5f406cf3e903a7.md) | 52 | `declaration-track:55bd32ec2b5f406cf3e903a700906fcb34d05d2a7988e9d91b682eef618c397a` |
| 3 | `theorem` | [operatorLE_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/declarations/operatorle-refl--8d5ef7b3c077373e79b0c939.md) | 57 | `result-track:8d5ef7b3c077373e79b0c939ba34c0f050b7b76aa68519091860c19eb4acc566` |
| 4 | `theorem` | [operatorLE_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/declarations/operatorle-trans--53ad4052c0808909c1b1ab23.md) | 63 | `result-track:53ad4052c0808909c1b1ab23faffd9b4fadded2e70b30a54d4a81b7cf68bfe57` |
| 5 | `theorem` | [operatorLE_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/declarations/operatorle-antisymm--7118a3bf0279109892efd6a5.md) | 76 | `result-track:7118a3bf0279109892efd6a5d4124eea8b892dd882dbbdc9609445fe323aadc0` |
| 6 | `def` | [OperatorPositive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/declarations/operatorpositive--bfea4c5712cee820e5fc44ba.md) | 90 | `declaration-track:bfea4c5712cee820e5fc44bab7aca4717f949ec39909fd274792f1d5bf88a49b` |
| 7 | `theorem` | [operatorFinsetSum_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OperatorOrder/Variantfd96e250f51137017151882cef5c88b1a51a18320d49e16bc5e3961e39a33ef9.lean/declarations/operatorfinsetsum-nonnegative--5dd4d1b2b86941a6a3f41a12.md) | 95 | `result-track:5dd4d1b2b86941a6a3f41a1203e005f1823afced49e5c05f129d154c5fd733bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
