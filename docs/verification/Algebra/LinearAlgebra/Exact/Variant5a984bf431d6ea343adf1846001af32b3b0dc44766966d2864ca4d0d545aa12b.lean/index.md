# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ae6e0822aace43b3db91b9c0ddcafe238fbf521",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ae6e0822aace43b3db91b9c0ddcafe238fbf521`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean.json)

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
| 1 | `lemma` | [LinearIndependent.linearIndependent_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/linearindependent-linearindependent-of-exact-of-retraction--5a51ed49c482e71cd51229bf.md) | 35 | `result-track:5a51ed49c482e71cd51229bf131713122a064a5ddc474ef96b9a530dd84f7b22` |
| 2 | `lemma` | [top_le_span_of_aux](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/top-le-span-of-aux--7417d16c162263750a2f6f45.md) | 55 | `result-track:7417d16c162263750a2f6f45eea871791c66d5aca4237fa653a25561a16bdb9d` |
| 3 | `lemma` | [Submodule.top_le_span_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/submodule-top-le-span-of-exact-of-retraction--6d28ef3b581350e8611e2683.md) | 79 | `result-track:6d28ef3b581350e8611e26830d9a20d35a7ee11173227a35b558ebf399538a40` |
| 4 | `def` | [Module.Basis.ofSplitExact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/module-basis-ofsplitexact--5c4f67ad84d79fb5290a524e.md) | 94 | `declaration-track:5c4f67ad84d79fb5290a524e43057c13628626b468d90bacb4ee58b143d1fa70` |
| 5 | `lemma` | [Module.Basis.ofSplitExact_apply](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/module-basis-ofsplitexact-apply--62a4cf0e0543892fde1b21a0.md) | 103 | `result-track:62a4cf0e0543892fde1b21a0bcb5bfb84e71d2860b3ee44c44d9e9c6fb1c44f8` |
| 6 | `lemma` | [Submodule.projectionOnto_comp_surjective_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/submodule-projectiononto-comp-surjective-of-exact--ac3eab41612d1c5519271a20.md) | 115 | `result-track:ac3eab41612d1c5519271a20a18fd76de3443545d2a0ebb3d163fc50c82d4443` |
| 7 | `lemma` | [Submodule.projectionOnto_comp_bijective_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/submodule-projectiononto-comp-bijective-of-exact--a02f08a6c2e4c443ee13ca86.md) | 130 | `result-track:a02f08a6c2e4c443ee13ca8626ba2ace24ecfba811168f3bdf1d579a4524b18c` |
| 8 | `lemma` | [LinearMap.linearProjOfIsCompl_comp_bijective_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant5a984bf431d6ea343adf1846001af32b3b0dc44766966d2864ca4d0d545aa12b.lean/declarations/linearmap-linearprojofiscompl-comp-bijective-of-exact--204319c47282e5f8f5e8076c.md) | 142 | `result-track:204319c47282e5f8f5e8076c532d4c745aadc15f4978a9fdee977363dbd29758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
