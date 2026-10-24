# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7668c9ab5baf4f6b466d43c47085948cf76ee159",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7668c9ab5baf4f6b466d43c47085948cf76ee159`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_dvd](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean/declarations/map-dvd--ef00b8425b08d7a8469dba30.md) | 34 | `result-track:ef00b8425b08d7a8469dba306a3062ebd6b94ed6ed71961dca0b5ad461ba7e2e` |
| 2 | `theorem` | [MulHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean/declarations/mulhom-map-dvd--cfb2af175c682e704a5f7010.md) | 38 | `result-track:cfb2af175c682e704a5f70101c67dedc80330e98dbe787c2c4476da4db4cc3d1` |
| 3 | `theorem` | [MonoidHom.map_dvd](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1.lean/declarations/monoidhom-map-dvd--60b96d3a34d0ade71174e5ec.md) | 41 | `result-track:60b96d3a34d0ade71174e5ecf2313ff9fcdc210482bf882b1a21113818b17cd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
