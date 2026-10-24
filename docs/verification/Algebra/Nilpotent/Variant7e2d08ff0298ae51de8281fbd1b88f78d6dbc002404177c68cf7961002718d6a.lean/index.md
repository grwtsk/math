# Verification target: GRWTSK.Algebra.Nilpotent.Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88aaf1eabf4893ac2bed3173596618fe9f5e5984",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88aaf1eabf4893ac2bed3173596618fe9f5e5984`.

Source path: `GRWTSK/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.isRadical_iff_quotient_reduced](../../../../mathematics/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean/declarations/ideal-isradical-iff-quotient-reduced--7c31083e79133ddcddbeda97.md) | 13 | `result-track:7c31083e79133ddcddbeda97d148d226060a0720446f4cbcf9d5c99746557b68` |
| 2 | `theorem` | [Ideal.IsNilpotent.induction_on](../../../../mathematics/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean/declarations/ideal-isnilpotent-induction-on--2df0c311935838d9b1503c33.md) | 22 | `result-track:2df0c311935838d9b1503c33ce271f989a649396c5d5d8f8cc2aef4e4ee76fc2` |
| 3 | `theorem` | [IsNilpotent.isUnit_quotient_mk_iff](../../../../mathematics/Algebra/Nilpotent/Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a.lean/declarations/isnilpotent-isunit-quotient-mk-iff--ee8c89d10fe8a6f17d03557a.md) | 49 | `result-track:ee8c89d10fe8a6f17d03557a15344e1bc147f0c192e632921a6aa92cdf726351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
