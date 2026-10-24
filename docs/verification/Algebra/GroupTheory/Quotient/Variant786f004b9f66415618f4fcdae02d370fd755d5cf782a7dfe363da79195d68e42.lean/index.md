# Verification target: GRWTSK.Algebra.GroupTheory.Quotient.Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bed401e7386048928516a9c188ef4c254e7f8bf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bed401e7386048928516a9c188ef4c254e7f8bf`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zsmul_mem_zmultiples_iff_exists_sub_div](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/declarations/zsmul-mem-zmultiples-iff-exists-sub-div--4728d1607fee051f08bdbf38.md) | 22 | `result-track:4728d1607fee051f08bdbf38a9cdc54a08567bd72e563dbd7ad6d89775a7314f` |
| 2 | `theorem` | [nsmul_mem_zmultiples_iff_exists_sub_div](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/declarations/nsmul-mem-zmultiples-iff-exists-sub-div--a4d1b07e87acda7759c1e894.md) | 43 | `result-track:a4d1b07e87acda7759c1e89499536e2694ca3c65cfe2f3a8498fa1567f5c15af` |
| 3 | `theorem` | [zmultiples_zsmul_eq_zsmul_iff](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/declarations/zmultiples-zsmul-eq-zsmul-iff--4a0a092ec53ad4bfc6ae4ba8.md) | 54 | `result-track:4a0a092ec53ad4bfc6ae4ba8823b74aaf309fe697842ce0977dada1667972958` |
| 4 | `theorem` | [zmultiples_nsmul_eq_nsmul_iff](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant786f004b9f66415618f4fcdae02d370fd755d5cf782a7dfe363da79195d68e42.lean/declarations/zmultiples-nsmul-eq-nsmul-iff--25e3224ab123d6d821ffda38.md) | 66 | `result-track:25e3224ab123d6d821ffda38da02b6265e411c469d7269502544f3bbcf21da8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
