# Verification target: GRWTSK.Algebra.ConjSqrt.Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f03800b154fae4fc4d3e6712d3c206bde076c2c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/index.md) · [Full source](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f03800b154fae4fc4d3e6712d3c206bde076c2c`.

Source path: `GRWTSK/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean.json)

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
| 1 | `def` | [conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt--001ef1774d5c870f76adb0b1.md) | 40 | `declaration-track:001ef1774d5c870f76adb0b1e7c3c23a25a84ca041244fdcf27debc6113cd17d` |
| 2 | `lemma` | [toLinearMap_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/tolinearmap-conjsqrt--2c80ef2301894d7bfebd1d58.md) | 43 | `result-track:2c80ef2301894d7bfebd1d58faa7887e5bf9a5a784c084aabf8e231b2539e4b7` |
| 3 | `lemma` | [conjSqrt_apply](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-apply--d96ffd04a3efbd9fb0136509.md) | 46 | `result-track:d96ffd04a3efbd9fb01365090b6cd6852eb53d23ec8501cd05ca44f9cfd97f17` |
| 4 | `lemma` | [conjSqrt_of_not_nonneg](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-of-not-nonneg--2aef316423ed11237c119beb.md) | 48 | `result-track:2aef316423ed11237c119beb606bed1dc2f3fc65c0d4b73fcd768a02e7e8f3e7` |
| 5 | `lemma` | [conjSqrt_monotone](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-monotone--0ca7591208ca604c8a922d23.md) | 51 | `result-track:0ca7591208ca604c8a922d23838fa65919487ec5a61ac29fad2d63c4d9afac13` |
| 6 | `lemma` | [conjSqrt_le_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-le-conjsqrt--be263875cd42c5b72fcdc48b.md) | 58 | `result-track:be263875cd42c5b72fcdc48b03f0d887ee4110402a8e8642ba9f506bf9b42401` |
| 7 | `lemma` | [isStrictlyPositive_conjSqrt_iff](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/isstrictlypositive-conjsqrt-iff--c11eb7087a4c9d7dfbeef985.md) | 66 | `result-track:c11eb7087a4c9d7dfbeef985c75fd756762b96a935ef2545f706379a641b6543` |
| 8 | `lemma` | [ringInverse_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/ringinverse-conjsqrt--95250e8287eff01aa55190e4.md) | 73 | `result-track:95250e8287eff01aa55190e4f4c0e5c88d146d7d3cf77ee96667283eeb36c87d` |
| 9 | `lemma` | [conjSqrt_ringInverse_conjSqrt](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-ringinverse-conjsqrt--bd6388b549b12d29b80cb618.md) | 81 | `result-track:bd6388b549b12d29b80cb61826b3c633795faa45db3865cb0e482c977e1ec76d` |
| 10 | `lemma` | [conjSqrt_conjSqrt_ringInverse](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-conjsqrt-ringinverse--090554ff312745ba0900fc33.md) | 90 | `result-track:090554ff312745ba0900fc3346ee652e51242cdc231b152ab8c04610143b5fd5` |
| 11 | `lemma` | [conjSqrt_one](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-one--4a69ea5ec5ccc8dd20cf72a4.md) | 95 | `result-track:4a69ea5ec5ccc8dd20cf72a43848ecb6d3457433a34368d4e990ab8dbef22186` |
| 12 | `lemma` | [conjSqrt_ringInverse_self](../../../../mathematics/Algebra/ConjSqrt/Variantb3617503ea5aca585b8ea8741adf14471c91bcaea2904d28c12607866d76c636.lean/declarations/conjsqrt-ringinverse-self--97cbff1e0daf93748b606002.md) | 99 | `result-track:97cbff1e0daf93748b6060027238e1cecc34fb2eab68c5b9e47852f878931c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
