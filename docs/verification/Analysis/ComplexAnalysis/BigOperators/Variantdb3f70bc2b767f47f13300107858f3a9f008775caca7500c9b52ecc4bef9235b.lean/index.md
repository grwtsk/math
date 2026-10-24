# Verification target: GRWTSK.Analysis.ComplexAnalysis.BigOperators.Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1028a7770c70bc7fe9646d4c17991daa25b0581",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1028a7770c70bc7fe9646d4c17991daa25b0581`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Balance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofReal_prod](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/ofreal-prod--f2770eaaf748671908f21ce1.md) | 29 | `result-track:f2770eaaf748671908f21ce11d63554c6b23b82224fab403a2a8b7017710c2f6` |
| 2 | `theorem` | [ofReal_sum](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/ofreal-sum--3a03801eb23251d6a327010a.md) | 33 | `result-track:3a03801eb23251d6a327010aa7041eb3b087d04b9cca9ec809057fa1f1fa24cc` |
| 3 | `lemma` | [ofReal_expect](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/ofreal-expect--fd995c13dee09d1aafbb129f.md) | 37 | `result-track:fd995c13dee09d1aafbb129fe121e97c3485f4625dccb2ce24881a35f45118a2` |
| 4 | `lemma` | [ofReal_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/ofreal-balance--84628e39a82976e6a939c919.md) | 41 | `result-track:84628e39a82976e6a939c919abe09cfb8e4616e90b2860faf27dadff2297026d` |
| 5 | `lemma` | [ofReal_comp_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/ofreal-comp-balance--9b99ceb178855f260ee89a6f.md) | 44 | `result-track:9b99ceb178855f260ee89a6fa22b7d5b4479fdcb4cfa774b583e48f5ed04b834` |
| 6 | `theorem` | [re_sum](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/re-sum--6d5e0c56082863f7ccf55e3d.md) | 48 | `result-track:6d5e0c56082863f7ccf55e3d139773be361bcb1dd7937790845e274f3058c717` |
| 7 | `lemma` | [re_expect](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/re-expect--f9387b62a613c1729710094a.md) | 52 | `result-track:f9387b62a613c1729710094a336bd80ff38242d3965f27d95d1078cefffdd463` |
| 8 | `lemma` | [re_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/re-balance--df99293955b7fa0ccd74b2ef.md) | 56 | `result-track:df99293955b7fa0ccd74b2efa51c8686f5f7f98904b2f83ce509be485ac53606` |
| 9 | `lemma` | [re_comp_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/re-comp-balance--9f6f1e36089dd70afa6e11d4.md) | 59 | `result-track:9f6f1e36089dd70afa6e11d4402732e66c2b67cfe3fdfc01dde8c2d56132da44` |
| 10 | `theorem` | [im_sum](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/im-sum--8fd0672f6692ed5185b47ae5.md) | 63 | `result-track:8fd0672f6692ed5185b47ae57f523075178455754b29d52b461f742524697458` |
| 11 | `lemma` | [im_expect](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/im-expect--bd1a059a64a1cb3ba4840096.md) | 67 | `result-track:bd1a059a64a1cb3ba4840096d920345299e74372e3f40315cc960581bd9eb255` |
| 12 | `lemma` | [im_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/im-balance--b74375e078927e987d33c06e.md) | 71 | `result-track:b74375e078927e987d33c06e27c941978df258afe7941e739ee860ea869eeffd` |
| 13 | `lemma` | [im_comp_balance](../../../../../mathematics/Analysis/ComplexAnalysis/BigOperators/Variantdb3f70bc2b767f47f13300107858f3a9f008775caca7500c9b52ecc4bef9235b.lean/declarations/im-comp-balance--71a89dae47f03b1af3b37b24.md) | 74 | `result-track:71a89dae47f03b1af3b37b2400a6994c09f36b457e63c7c26113ed5bb8b27109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
