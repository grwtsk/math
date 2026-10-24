# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9188aafb5e05d45efdc9056db8b2f670106049da",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9188aafb5e05d45efdc9056db8b2f670106049da`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Monoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/monoid-ext--b712dc9b757cc8eeb564c77f.md) | 35 | `result-track:b712dc9b757cc8eeb564c77f41d7cbd6eefbba6ac49f2a8ffafda796904fd270` |
| 2 | `theorem` | [CommMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/commmonoid-tomonoid-injective--3ed688adb47a0d9935b0ea8f.md) | 51 | `result-track:3ed688adb47a0d9935b0ea8ffe164f395af1e8a499b0999bb5495c040eef6d24` |
| 3 | `theorem` | [CommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/commmonoid-ext--9154edeeb475fbe507b781a6.md) | 57 | `result-track:9154edeeb475fbe507b781a69a6eb7a0407b032162732ad0e6e2d3e873023da2` |
| 4 | `theorem` | [LeftCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/leftcancelmonoid-tomonoid-injective--f09eb8595277d9828b7c1093.md) | 62 | `result-track:f09eb8595277d9828b7c1093d7a955e7498251516dbc9a92be0455f54e324336` |
| 5 | `theorem` | [LeftCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/leftcancelmonoid-ext--a24bac1b10cb030e387630f2.md) | 68 | `result-track:a24bac1b10cb030e387630f2b4792fe8467c7747ecb04e57d9c83ce1c287e194` |
| 6 | `theorem` | [RightCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/rightcancelmonoid-tomonoid-injective--09e90fe31c4f6e8708fadbc8.md) | 74 | `result-track:09e90fe31c4f6e8708fadbc878e7d61b960a4622ec1718b4a49411e817f69afe` |
| 7 | `theorem` | [RightCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/rightcancelmonoid-ext--01934c76e6da7eb10b5cb020.md) | 80 | `result-track:01934c76e6da7eb10b5cb020895da7d515d478064fc6e61d31ccd6434b4d2c47` |
| 8 | `theorem` | [CancelMonoid.toLeftCancelMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/cancelmonoid-toleftcancelmonoid-injective--2069f4ef1756cc4e32c3e0cd.md) | 86 | `result-track:2069f4ef1756cc4e32c3e0cdcdf8281c29920a8cc1b709c8abfd2df190a6c101` |
| 9 | `theorem` | [CancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/cancelmonoid-ext--320014983f7a90580d7e397c.md) | 92 | `result-track:320014983f7a90580d7e397cc82a27b72c596d9ef969f5513c4f807f471ff5b8` |
| 10 | `theorem` | [CancelCommMonoid.toCommMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/cancelcommmonoid-tocommmonoid-injective--48cbdab67613a4e1992e44cf.md) | 98 | `result-track:48cbdab67613a4e1992e44cfcc1217357dfc2ca9b069598475440130f92294e8` |
| 11 | `theorem` | [CancelCommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/cancelcommmonoid-ext--52529ecb7ec2e59911ab508b.md) | 106 | `result-track:52529ecb7ec2e59911ab508ba5dc53b42cc0102ac32da0e95a9d9348352dcf23` |
| 12 | `theorem` | [DivInvMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/divinvmonoid-ext--6385cbc58f13f479e65eb9c2.md) | 112 | `result-track:6385cbc58f13f479e65eb9c214cbf1c3c2fe16c442616785ccf5580708c01d35` |
| 13 | `lemma` | [Group.toDivInvMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/group-todivinvmonoid-injective--e9bde91a603bf11380535e9a.md) | 133 | `result-track:e9bde91a603bf11380535e9ab994be8c1ed9fd33eef1b9a8eed83f584863d425` |
| 14 | `theorem` | [Group.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/group-ext--514b603fdeeadac6cc618911.md) | 137 | `result-track:514b603fdeeadac6cc6189119f58cb5237ae0bdbda7c52a677236e5879769a56` |
| 15 | `lemma` | [CommGroup.toGroup_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/commgroup-togroup-injective--f4ceaa9fdd0299abb356bcce.md) | 150 | `result-track:f4ceaa9fdd0299abb356bcce23c17a7830bff21c142191b675f7678aa102731d` |
| 16 | `theorem` | [CommGroup.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variant0758dbca0337c5625c8f4abb1a833c9a84aeaef437bd7f058947e998a8ea9684.lean/declarations/commgroup-ext--5f1091dbbf01ab38281e5792.md) | 154 | `result-track:5f1091dbbf01ab38281e57927652274950fed808b69b648374410212ca4d9546` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
