# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Units.Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1405b498718f1c58eef94e3763def02a970d5bda",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1405b498718f1c58eef94e3763def02a970d5bda`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitsMap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/unitsmap--a8ca0cfc527a5ba96155f2f7.md) | 29 | `declaration-track:a8ca0cfc527a5ba96155f2f77affbc84056c4043e27ebf9bd05a0f7c62c5bf2d` |
| 2 | `lemma` | [unitsMap_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/unitsmap-def--0b131cd63417c34ea8c3ba4c.md) | 31 | `result-track:0b131cd63417c34ea8c3ba4c388e2cd7c240616153d23a8f8d8121c29d1ff965` |
| 3 | `lemma` | [unitsMap_comp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/unitsmap-comp--8d7c4717288ddb5cb4fe29ac.md) | 33 | `result-track:8d7c4717288ddb5cb4fe29ac6089c613392d1fa7abcfeae84f08109800f4f2c1` |
| 4 | `lemma` | [unitsMap_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/unitsmap-self--71411fb9e1aa3ac19d841be4.md) | 40 | `result-track:71411fb9e1aa3ac19d841be41ce5e85947627bb901705f0a54d4796400c90d1b` |
| 5 | `lemma` | [unitsMap_val](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/unitsmap-val--05abf030cc219921db4204ab.md) | 45 | `result-track:05abf030cc219921db4204ab5edc85f9c36686c37c1ed39f3b5b49baa25c39d8` |
| 6 | `lemma` | [isUnit_cast_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/isunit-cast-of-dvd--d7f9896b528a48f38102b8fb.md) | 48 | `result-track:d7f9896b528a48f38102b8fb07f68373876ae404fe430534ef1617f8886aa1ce` |
| 7 | `theorem` | [unitsMap_surjective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/unitsmap-surjective--d6c73d10c672b4e48c2b6d14.md) | 52 | `result-track:d6c73d10c672b4e48c2b6d145e60f9e8a33922416a7824d255d9f0aa612950d7` |
| 8 | `lemma` | [not_isUnit_of_mem_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/not-isunit-of-mem-primefactors--64e3695bf920d138f950bd97.md) | 81 | `result-track:64e3695bf920d138f950bd971d8507d10328be89a070a8605974a01c91ba6ea9` |
| 9 | `lemma` | [eq_unit_mul_divisor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/declarations/eq-unit-mul-divisor--a456262bfbe8707fba7df912.md) | 87 | `result-track:a456262bfbe8707fba7df912572b50771dff2d301959643480b5d3a89efdd469` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
