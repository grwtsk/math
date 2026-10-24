# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71bb6ee575359f5f8a9194f1244d7ffc7ebf190",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71bb6ee575359f5f8a9194f1244d7ffc7ebf190`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/sub--8e5ca0d8d3b185ac4c115c3d.md) | 41 | `declaration-track:8e5ca0d8d3b185ac4c115c3d6d5c2a92a6d06aac285b8676af332747af37a3e2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/instance--a06d041f551f9cd27c36f5e5.md) | 46 | `declaration-track:a06d041f551f9cd27c36f5e56eafd5137c701ebb223d2bd0272bb2f385464a41` |
| 3 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/coe-sub--e0668b6489d2513ff3977ead.md) | 50 | `result-track:e0668b6489d2513ff3977ead3e5c9eb19688186fd55408b05da5b471334815a9` |
| 4 | `theorem` | [top_sub_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/top-sub-coe--d692a5fc6782e17813ec4143.md) | 54 | `result-track:d692a5fc6782e17813ec4143fa600875f009b345e87e6cc55a5b9640287ce151` |
| 5 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/sub-top--4c41d921f3d6e3a3dac0a6d3.md) | 58 | `result-track:4c41d921f3d6e3a3dac0a6d34de0b1da965ef30427a8f1f5038c6417541b8d61` |
| 6 | `theorem` | [sub_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/sub-eq-top-iff--3a3f8a816601ab72fcea9a6b.md) | 60 | `result-track:3a3f8a816601ab72fcea9a6b57e351942559c7a091bf6ed539e23f00fcced52b` |
| 7 | `lemma` | [sub_ne_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/sub-ne-top-iff--c94796e1d162ab50126bdaf0.md) | 65 | `result-track:c94796e1d162ab50126bdaf027dcf010f76278f470506ac57518ec399a7ecf68` |
| 8 | `theorem` | [map_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/map-sub--75c77437be7d60b3c421b513.md) | 68 | `result-track:75c77437be7d60b3c421b513a1b7a305865682cb63d9c315e61cb0eb837b4c2a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant79b0ed0dbe1e6fd929abf9f284d08ee4c845eea7738a562fcda7491964d73642.lean/declarations/instance--0c9286581863c91ed31c720a.md) | 78 | `declaration-track:0c9286581863c91ed31c720af071d8522e66a22a44c33d49ffeea4b2277c4241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
