# Verification target: GRWTSK.Algebra.Tower.Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d03661a5ac5552e30e2b1fb9fcac91bcb8bf2e2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d03661a5ac5552e30e2b1fb9fcac91bcb8bf2e2`.

Source path: `GRWTSK/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lmul_algebraMap](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/lmul-algebramap--824967b564b0b54a7de58ad0.md) | 42 | `result-track:824967b564b0b54a7de58ad06616bcc937a256caaade7b696d6995120a199ad9` |
| 2 | `instance` | [subalgebra](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/subalgebra--ef9c697bb3eaa6ac135889b3.md) | 54 | `declaration-track:ef9c697bb3eaa6ac135889b312e0caba470fc92e57edadb5f1e672f3913aa9d1` |
| 3 | `instance` | [subalgebra'](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/subalgebra--f83d9c271853f04ecb3fdd05.md) | 59 | `declaration-track:f83d9c271853f04ecb3fdd0551fa8cccddfce28127fbdd8fdd565e3b6b334a35` |
| 4 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/restrictscalars--ead1c49f873b39e8bb6f9c3d.md) | 79 | `declaration-track:ead1c49f873b39e8bb6f9c3d4a168a152588456c7c4ec37988965d2eeb7abd6b` |
| 5 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/coe-restrictscalars--8971764fda2dcd052a0fd831.md) | 86 | `result-track:8971764fda2dcd052a0fd8312a19064abbb34d27991e591e74c58e64d262cd9a` |
| 6 | `theorem` | [restrictScalars_top](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/restrictscalars-top--0fa2e3d68f309ba1086ecda6.md) | 90 | `result-track:0fa2e3d68f309ba1086ecda6cc779a73cf2175b077e5231f202f18dd82877ab2` |
| 7 | `theorem` | [restrictScalars_toSubmodule](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/restrictscalars-tosubmodule--7fdf7a7333a6392c562a2443.md) | 94 | `result-track:7fdf7a7333a6392c562a2443ef275767e725a318c5f2bc55af9e243db81a92ae` |
| 8 | `theorem` | [mem_restrictScalars](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/mem-restrictscalars--ee959f34d20aa33607e54187.md) | 99 | `result-track:ee959f34d20aa33607e54187d70905deb4f9b91fd9485d85ac61ae49eeec071c` |
| 9 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/restrictscalars-injective--71430697c407c75df9a6dc84.md) | 102 | `result-track:71430697c407c75df9a6dc84b408d0d872072c4513e5e19235adeb8d8bb921fb` |
| 10 | `def` | [ofRestrictScalars](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/ofrestrictscalars--21ec4d3d184797a45c3ca30f.md) | 110 | `declaration-track:21ec4d3d184797a45c3ca30f649241f8f2827282de5d3563d1975b1769057203` |
| 11 | `lemma` | [range_isScalarTower_toAlgHom](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/range-isscalartower-toalghom--57963438537b8d9345f5147b.md) | 118 | `result-track:57963438537b8d9345f5147b4f600967ab3bd806a03893909ccfed9b4740e7b3` |
| 12 | `theorem` | [adjoin_range_toAlgHom](../../../../mathematics/Algebra/Tower/Variant383827d14ef7dc570d59f59b3d7f1f17f883d43ea7a4b7cc1c716dcdf6127261.lean/declarations/adjoin-range-toalghom--3d64d751cf1808e18e754dbc.md) | 137 | `result-track:3d64d751cf1808e18e754dbce4cbbb5cac408d8e645d8e43462eb5cbdce77220` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
