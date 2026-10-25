# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Definability.Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da414992aa3fb9d85586b9d8f25f58d20e01b36e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da414992aa3fb9d85586b9d8f25f58d20e01b36e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Finsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLinearSet.definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/islinearset-definable--f9fa7db25f6a2bd4e2f2ff86.md) | 45 | `result-track:f9fa7db25f6a2bd4e2f2ff86328d37b0d86349d8391e66c05f80b39b55341899` |
| 2 | `theorem` | [IsSemilinearSet.definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/issemilinearset-definable--323f716c79a208d6e854b636.md) | 64 | `result-track:323f716c79a208d6e854b636ca0380e3c931cb4ef4f2ff8a6b533a22e2a9d5c1` |
| 3 | `lemma` | [term_realize_eq_add_dotProduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/term-realize-eq-add-dotproduct--249ce19cd6bb091b49d09a35.md) | 78 | `result-track:249ce19cd6bb091b49d09a356ab43d9e52d442722f8dd62e9b724074fcf27e65` |
| 4 | `lemma` | [isSemilinearSet_boundedFormula_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/issemilinearset-boundedformula-realize--63728f212c4e17e3f3e454ac.md) | 112 | `result-track:63728f212c4e17e3f3e454ac18fefba570857813f3d00e0733e8c4c348a90189` |
| 5 | `lemma` | [isSemilinearSet_formula_realize_semilinear](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/issemilinearset-formula-realize-semilinear--12090885faccac7b9fd160ed.md) | 138 | `result-track:12090885faccac7b9fd160edfa7763b0bce1fa3997f0d8c6d7b319636fd316ee` |
| 6 | `theorem` | [definable_iff_isSemilinearSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/definable-iff-issemilinearset--b04db6a14bb415054dd24c7c.md) | 148 | `result-track:b04db6a14bb415054dd24c7ca077e53c2528e1fac441dd2224a5aa9203e3a882` |
| 7 | `theorem` | [definable₁_iff_ultimately_periodic](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/definable-iff-ultimately-periodic--971dbf1fbc5677c487181a50.md) | 154 | `result-track:971dbf1fbc5677c487181a50a5940fd0efe865744dd9b87733acb8ce8910e251` |
| 8 | `theorem` | [mul_not_definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta3f36b872055ea49734d08d00516f38edd8d06272b79fc3c4032e6b4b0170b98.lean/declarations/mul-not-definable--6df29387975d5a2f00b87de7.md) | 162 | `result-track:6df29387975d5a2f00b87de7b76c7183ff570a307dd00b9fbeb26e7e8feee36a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
