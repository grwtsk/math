# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b96598d45ab19110dd48d58a923a2d56b017514d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b96598d45ab19110dd48d58a923a2d56b017514d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/sub--f3979c973c0bc44f7e66873e.md) | 33 | `declaration-track:f3979c973c0bc44f7e66873ed5975b4e5de091b6742e77fcff7cd3d5eb76d40f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/instance--638aed9893635e36079d3681.md) | 39 | `declaration-track:638aed9893635e36079d3681cfef1104e972f15ef7e28bcf0d920cf6fccc7804` |
| 3 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/coe-sub--601738f83c6e98c748148518.md) | 43 | `result-track:601738f83c6e98c7481485182e474621e554dc5051c6590d3a77d0ac6ce7173c` |
| 4 | `theorem` | [top_sub_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/top-sub-coe--ffbbc44145c2afe204cc1b5c.md) | 48 | `result-track:ffbbc44145c2afe204cc1b5c2accb2211f3e366ec1b8003ad2475608c5cc3f12` |
| 5 | `theorem` | [sub_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/sub-top--59e32f06df3b1bfd368bd417.md) | 53 | `result-track:59e32f06df3b1bfd368bd417b21243ff527d82ca4a7f79d975ec06dd829e1d58` |
| 6 | `theorem` | [sub_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/sub-eq-top-iff--3bc10189b03c08294b688baf.md) | 56 | `result-track:3bc10189b03c08294b688baf5d056373ec7807a35c23130ca6de0a5a52a06db7` |
| 7 | `theorem` | [map_sub](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/map-sub--6768ee20722b55cec01ca9f9.md) | 62 | `result-track:6768ee20722b55cec01ca9f981be4484cdcc866513559b245cb0d50c04eaa0f2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant7063d9fdb03cf7f9a82b35cba38b49c98e17fcb3644d861e0415aa4f61148213.lean/declarations/instance--12931d56bd3590f42043a92a.md) | 73 | `declaration-track:12931d56bd3590f42043a92ac0fd68cc70b9c5ea6d15f5879d60666358f0c7a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
