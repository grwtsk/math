# Verification target: GRWTSK.Algebra.UniversalAlgebra.Center.Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dbe6e02450c81000b2be09a05e9251cb00b89fe",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dbe6e02450c81000b2be09a05e9251cb00b89fe`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Centralizer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pointwise` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.star_mem_center](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean/declarations/set-star-mem-center--1dc21b924d97e44a02ab11aa.md) | 23 | `result-track:1dc21b924d97e44a02ab11aa3ac2e1a71c680a6be483f7531c89e6541e45e434` |
| 2 | `theorem` | [Set.star_mem_centralizer'](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean/declarations/set-star-mem-centralizer--8266343b0c70304a7a142b0f.md) | 27 | `result-track:8266343b0c70304a7a142b0f13378ad3b6894c142fde7a2d08ec3eb05015b612` |
| 3 | `theorem` | [Set.star_mem_centralizer](../../../../../mathematics/Algebra/UniversalAlgebra/Center/Variant0a4d692ee5965230595fd813b91889f4a5897e5fbcf7b04699b57b47284e6ef1.lean/declarations/set-star-mem-centralizer--72dc0cb898a338d9606d80b9.md) | 32 | `result-track:72dc0cb898a338d9606d80b9f769a885ba498b37ac41275a57631c8fa200de8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
