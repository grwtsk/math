# Verification target: GRWTSK.Analysis.BlaschkeFloorAudit.Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dde43ea112cb009333ff666b8b0b7095df81135",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/index.md) · [Full source](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dde43ea112cb009333ff666b8b0b7095df81135`.

Source path: `GRWTSK/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blaschkeAtOne](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/declarations/blaschkeatone--70ba07e3be611644bf9884f4.md) | 9 | `declaration-track:70ba07e3be611644bf9884f4d5d1b8cae70156c02777baffee22bb04e7a5282c` |
| 2 | `theorem` | [reference_denominator_ne_zero](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/declarations/reference-denominator-ne-zero--f3483ec4bdace20ed557fd3f.md) | 12 | `result-track:f3483ec4bdace20ed557fd3f80a2e626fd3b3482601abfef6529fc3cdcc9d938` |
| 3 | `theorem` | [reference_denominator_normSq](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/declarations/reference-denominator-normsq--48f613fa0bef8e3d93beaafe.md) | 20 | `result-track:48f613fa0bef8e3d93beaafe0f101acb6bcdc1fd70ae76758c8c12834abb0234` |
| 4 | `theorem` | [blaschke_deficit](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/declarations/blaschke-deficit--268db803aa1d771df46f236c.md) | 27 | `result-track:268db803aa1d771df46f236cf5c16de97d4ea28df3c60d38b1cd95efd5b0fc25` |
| 5 | `theorem` | [factor_deficit_lower](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/declarations/factor-deficit-lower--e01db2626d29620b28ac9b08.md) | 39 | `result-track:e01db2626d29620b28ac9b08abe2a6de69f84b807e335cace2ff5c36efc05f50` |
| 6 | `theorem` | [blaschke_floor_pos](../../../../mathematics/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/declarations/blaschke-floor-pos--fb32972e423c9134e7c4afc3.md) | 47 | `result-track:fb32972e423c9134e7c4afc3853c2bf0732df0f5c54b49a932ec234fbe50d2e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
