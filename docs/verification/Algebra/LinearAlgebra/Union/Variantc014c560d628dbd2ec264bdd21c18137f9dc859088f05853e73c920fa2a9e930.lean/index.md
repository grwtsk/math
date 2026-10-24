# Verification target: GRWTSK.Algebra.LinearAlgebra.Union.Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3236d3ca60f4f0121ed88dd8e71bb22f2307906b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3236d3ca60f4f0121ed88dd8e71bb22f2307906b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Submodule.iUnion_ssubset_of_forall_ne_top_of_card_lt](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/declarations/submodule-iunion-ssubset-of-forall-ne-top-of-card-lt--b86f423aa3b5c4c0570d63d9.md) | 31 | `result-track:b86f423aa3b5c4c0570d63d92c6f00fb247401390bb801cd147945df67b6d223` |
| 2 | `lemma` | [Submodule.exists_forall_notMem_of_forall_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/declarations/submodule-exists-forall-notmem-of-forall-ne-top--6a5774c238674d364eab335e.md) | 88 | `result-track:6a5774c238674d364eab335e7dae668fd6001470cbeee6008fac464d7656b49b` |
| 3 | `lemma` | [Module.Dual.exists_forall_ne_zero_of_forall_exists](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/declarations/module-dual-exists-forall-ne-zero-of-forall-exists--1a54574c514cf28d824029a8.md) | 94 | `result-track:1a54574c514cf28d824029a831b8072b799a38d1f843cec94ec768b60be7c5b5` |
| 4 | `lemma` | [Module.Dual.exists_forall_mem_ne_zero_of_forall_exists](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/declarations/module-dual-exists-forall-mem-ne-zero-of-forall-exists--e84d841d8b485722ae2dc9a5.md) | 104 | `result-track:e84d841d8b485722ae2dc9a548e825c58b34d65bfbd81d085bbee09752dc375b` |
| 5 | `lemma` | [Module.exists_dual_forall_apply_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/declarations/module-exists-dual-forall-apply-ne-zero--fbaa186863bdb949e1548125.md) | 112 | `result-track:fbaa186863bdb949e1548125a552a99203f5e5c8af3abddad3a0c2560bb26306` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
