# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e885c4a02ab6f2ac37f57a6e2f4c81f6d69c5e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e885c4a02ab6f2ac37f57a6e2f4c81f6d69c5e`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SemiconjBy.map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean/declarations/semiconjby-map--9b1a37b946a01d62aa9a0588.md) | 29 | `result-track:9b1a37b946a01d62aa9a05888a49ec5b025a1ff96aa7aee6e884397d5f8e75bc` |
| 2 | `theorem` | [Commute.map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean/declarations/commute-map--e963278a1ea90d5592582866.md) | 33 | `result-track:e963278a1ea90d55925828669f39ead8bc8c9ba5ac1b0b26115e32111c3354ca` |
| 3 | `theorem` | [SemiconjBy.of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean/declarations/semiconjby-of-map--5e65727c4ebb8ed587d35483.md) | 37 | `result-track:5e65727c4ebb8ed587d3548325f34e461ef7074018aa09e9ca874d70294e4ba6` |
| 4 | `theorem` | [Commute.of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant19a23be54b11a5efe46e4305722638ba27f56f02273214311908fbb53176a2f1.lean/declarations/commute-of-map--d65468a88b0bfa4d3f6e3c90.md) | 42 | `result-track:d65468a88b0bfa4d3f6e3c908d79fb994c38e5f201f832f5359f9e04593a90b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
