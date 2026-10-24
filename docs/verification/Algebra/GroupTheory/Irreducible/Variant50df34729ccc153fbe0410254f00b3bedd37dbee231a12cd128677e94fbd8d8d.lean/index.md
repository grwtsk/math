# Verification target: GRWTSK.Algebra.GroupTheory.Irreducible.Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23eff18c6411be414d0cd965b46f9ddc2fc45322",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23eff18c6411be414d0cd965b46f9ddc2fc45322`.

Source path: `GRWTSK/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean.json)

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
| 1 | `lemma` | [irreducible_mem_submonoidClosure_subset](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean/declarations/irreducible-mem-submonoidclosure-subset--44b27027d1793e63f4bfad3e.md) | 30 | `result-track:44b27027d1793e63f4bfad3e51966810906f675eaeeb27a531f8cd174bac8b1d` |
| 2 | `lemma` | [irreducible_subset_of_submonoidClosure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean/declarations/irreducible-subset-of-submonoidclosure-eq-top--1e52fdd44ba95c3e7637e443.md) | 39 | `result-track:1e52fdd44ba95c3e7637e4433c35d0060ee319e6fc85ffeb11f6aa4d9a78563f` |
| 3 | `lemma` | [Submonoid.FG.finite_irreducible_mem_submonoidClosure](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean/declarations/submonoid-fg-finite-irreducible-mem-submonoidclosure--1fcd27e93946503d0e09dce8.md) | 48 | `result-track:1fcd27e93946503d0e09dce8bac16083682765981a2951e3de43d1a7bce68fb2` |
| 4 | `lemma` | [finite_irreducible](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean/declarations/finite-irreducible--aea8c1dcbafe12064d9e234e.md) | 58 | `result-track:aea8c1dcbafe12064d9e234e82d1bbcce3a83ac21a3af0e43ba3e547c70c6d8c` |
| 5 | `lemma` | [Submonoid.closure_irreducible](../../../../../mathematics/Algebra/GroupTheory/Irreducible/Variant50df34729ccc153fbe0410254f00b3bedd37dbee231a12cd128677e94fbd8d8d.lean/declarations/submonoid-closure-irreducible--5eb225943f7d8af9848edc7f.md) | 71 | `result-track:5eb225943f7d8af9848edc7f1e7d8d46f1bdaccbceb3c9217c84af030f058297` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
