# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48d766846d8cdcee9a6775fe02483db329ea9f7c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48d766846d8cdcee9a6775fe02483db329ea9f7c`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_closure_setOf_eq_single](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/declarations/add-closure-setof-eq-single--3ba1023372d047316c4daf3a.md) | 37 | `result-track:3ba1023372d047316c4daf3a9fd7dde9ceb53beb3cf0de943054387ac26bab10` |
| 2 | `theorem` | [addHom_ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/declarations/addhom-ext--ec74f1fd2bebdf226938fa79.md) | 45 | `result-track:ec74f1fd2bebdf226938fa79333874a7a0ad8a9bd59fef37622d66d245906a10` |
| 3 | `theorem` | [addHom_ext'](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/declarations/addhom-ext--eb0676321cb7fdb757b6415e.md) | 58 | `result-track:eb0676321cb7fdb757b6415e2155bba05dfe46e9a9947fbfcf2e9ca0c74441e5` |
| 4 | `theorem` | [mulHom_ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/declarations/mulhom-ext--bea23adf038810b16ed7f382.md) | 62 | `result-track:bea23adf038810b16ed7f382dc4aefac30296728e65537e63718fc436527b77d` |
| 5 | `theorem` | [mulHom_ext'](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant19b076b43e01f16b91393fcc1cd3bb570ae7be50aa9870a2246356bc448f7262.lean/declarations/mulhom-ext--97eecb465e9ffa840828caab.md) | 74 | `result-track:97eecb465e9ffa840828caabafc16c8d53eab0c0c056aabb8d60225505a2bf4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
