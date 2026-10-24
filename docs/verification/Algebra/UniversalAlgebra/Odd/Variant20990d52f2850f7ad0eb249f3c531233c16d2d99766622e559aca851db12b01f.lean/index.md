# Verification target: GRWTSK.Algebra.UniversalAlgebra.Odd.Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c9f3dd31e0f209279e87d09156843aeb7d9257c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c9f3dd31e0f209279e87d09156843aeb7d9257c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Union` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strictMono_of_odd_strictMonoOn_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean/declarations/strictmono-of-odd-strictmonoon-nonneg--14ce09e31bbe49cafc4e91be.md) | 26 | `result-track:14ce09e31bbe49cafc4e91bef963268bf40c7d3d07241c754a7efb6263a4eae6` |
| 2 | `theorem` | [strictAnti_of_odd_strictAntiOn_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean/declarations/strictanti-of-odd-strictantion-nonneg--e44c678e80457d1daf214a7f.md) | 34 | `result-track:e44c678e80457d1daf214a7f9c38f7a10e82c551646a0d7fe287e00587f148f5` |
| 3 | `theorem` | [monotone_of_odd_of_monotoneOn_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean/declarations/monotone-of-odd-of-monotoneon-nonneg--d3a33ed8a28542e1a4d53957.md) | 40 | `result-track:d3a33ed8a28542e1a4d5395748b0b2f62bf68fd724ae58b7c593539eb55d306b` |
| 4 | `theorem` | [antitone_of_odd_of_monotoneOn_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Odd/Variant20990d52f2850f7ad0eb249f3c531233c16d2d99766622e559aca851db12b01f.lean/declarations/antitone-of-odd-of-monotoneon-nonneg--8e6ab64fa928b53308540cd2.md) | 48 | `result-track:8e6ab64fa928b53308540cd249bb18f49f7c046fcd7680409b1ace2af89fd180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
