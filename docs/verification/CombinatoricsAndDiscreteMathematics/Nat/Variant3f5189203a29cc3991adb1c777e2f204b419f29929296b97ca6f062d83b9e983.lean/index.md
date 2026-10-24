# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nat.Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f50d006bd20b64a4487e85344409fa825814a7c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f50d006bd20b64a4487e85344409fa825814a7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instWfDvdMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean/declarations/instwfdvdmonoid--58514781acab203a31049043.md) | 22 | `declaration-track:58514781acab203a31049043b486c5576a15354baa5dfd9e16246885a3c1fdfd` |
| 2 | `instance` | [instUniqueFactorizationMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean/declarations/instuniquefactorizationmonoid--868ac34823bb97697e20cdb6.md) | 38 | `declaration-track:868ac34823bb97697e20cdb6c9709b93ae3b204d15505520032658e8616e6d9b` |
| 3 | `lemma` | [factors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean/declarations/factors-eq--c2dc10e25618363773690c59.md) | 43 | `result-track:c2dc10e25618363773690c59de57b5b5db8d793cb3de81ffde64ac4065c4f4d3` |
| 4 | `lemma` | [factors_multiset_prod_of_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant3f5189203a29cc3991adb1c777e2f204b419f29929296b97ca6f062d83b9e983.lean/declarations/factors-multiset-prod-of-irreducible--7ad7bc267b5a5fd9694fc827.md) | 54 | `result-track:7ad7bc267b5a5fd9694fc82756490e137b63a42e7566d3041165a144c3d67783` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
