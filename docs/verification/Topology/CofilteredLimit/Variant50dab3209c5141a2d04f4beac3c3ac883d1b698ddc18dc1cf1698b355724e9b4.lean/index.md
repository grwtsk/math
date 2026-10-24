# Verification target: GRWTSK.Topology.CofilteredLimit.Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3e3526d4a89e72d495a1991ec5cd2066b49316c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/index.md) · [Full source](../../../../mathematics/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3e3526d4a89e72d495a1991ec5cd2066b49316c`.

Source path: `GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Cofiltered` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Konig` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isClopen_of_cofiltered](../../../../mathematics/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/declarations/exists-isclopen-of-cofiltered--db787e3e22788d1e73d1e41b.md) | 44 | `result-track:db787e3e22788d1e73d1e41b90e97ff51fd87e2481efadd365bded0dc235f89b` |
| 2 | `theorem` | [exists_locallyConstant_fin_two](../../../../mathematics/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/declarations/exists-locallyconstant-fin-two--efd1637f61bdf17fa0b5a472.md) | 115 | `result-track:efd1637f61bdf17fa0b5a47220ab023a1c592966eacb4f10163ce875ef87bbdc` |
| 3 | `theorem` | [exists_locallyConstant_finite_aux](../../../../mathematics/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/declarations/exists-locallyconstant-finite-aux--c988b64ee8eb092f1dad9816.md) | 128 | `result-track:c988b64ee8eb092f1dad9816499291870f6305ac83c44aa1a5bbdfc974cec273` |
| 4 | `theorem` | [exists_locallyConstant_finite_nonempty](../../../../mathematics/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/declarations/exists-locallyconstant-finite-nonempty--1ab76a309c372dddcd9c7bf0.md) | 161 | `result-track:1ab76a309c372dddcd9c7bf023a68069165bf8434cb57883f17eed6d3979d290` |
| 5 | `theorem` | [exists_locallyConstant](../../../../mathematics/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/declarations/exists-locallyconstant--6c08dcf6f9f711256109b045.md) | 195 | `result-track:6c08dcf6f9f711256109b045ffe549eb55dd518ba01af504268cca5662e4cc58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
