# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb1a754b7c0f4b312c0d84acff4108a2a686495d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb1a754b7c0f4b312c0d84acff4108a2a686495d`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_closure_iUnion_range_single](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean/declarations/add-closure-iunion-range-single--09f6e74033787f34268bcf77.md) | 41 | `result-track:09f6e74033787f34268bcf774261243768be3b6ee89d6ce0cd2365158a0fc413` |
| 2 | `theorem` | [addHom_ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean/declarations/addhom-ext--4b19743d8eec26b257168679.md) | 52 | `result-track:4b19743d8eec26b257168679db5f11b2445f020150a96d543591074495601c50` |
| 3 | `theorem` | [addHom_ext'](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant4b7bebb802ad8d8d8ddb4a82e4307491224b08ad007c5eff1623deb4a91abb51.lean/declarations/addhom-ext--f49491abad8bd091de65bbca.md) | 64 | `result-track:f49491abad8bd091de65bbca7e66646174f2eaef624f3906cb4412a0601185d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
