# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4819a3123767c7ad6558a864ce23b1b6785bcdde",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4819a3123767c7ad6558a864ce23b1b6785bcdde`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.EquivFin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean/declarations/fintyperange--4b64a098b8f99c83f7228bce.md) | 47 | `declaration-track:4b64a098b8f99c83f7228bce2de28fe196c7d55c9605186265a4ebf0d2f60c73` |
| 2 | `instance` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean/declarations/finite-range--7563b6344857ed00ee256e55.md) | 68 | `declaration-track:7563b6344857ed00ee256e55f4a7eaa4403d5498efafef27020d7ea924924e05` |
| 3 | `instance` | [finite_replacement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean/declarations/finite-replacement--06c9a49fe31455368917a13f.md) | 73 | `declaration-track:06c9a49fe31455368917a13f562cdea00427e9bf6a953f32d983b6b23f5500f0` |
| 4 | `theorem` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean/declarations/finite-range--3630449cc51c9fb43987fdb5.md) | 93 | `result-track:3630449cc51c9fb43987fdb5f1d6f4efc34e8678016d27851739938801f69d3a` |
| 5 | `theorem` | [Finite.dependent_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantdfda83e4da0dc853c7d9b574ff9aaacefac20bd67648e817166ae8a8051de736.lean/declarations/finite-dependent-image--2f98367f8bd5b8e5b0ebf617.md) | 96 | `result-track:2f98367f8bd5b8e5b0ebf617b1eb86a76be126c4d52ed22bd49e1449024ba87d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
