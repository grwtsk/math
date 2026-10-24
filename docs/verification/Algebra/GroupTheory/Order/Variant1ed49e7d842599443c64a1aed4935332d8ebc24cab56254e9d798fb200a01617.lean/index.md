# Verification target: GRWTSK.Algebra.GroupTheory.Order.Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41b3e8577042d3a8524f6060088da8b056a89460",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41b3e8577042d3a8524f6060088da8b056a89460`.

Source path: `GRWTSK/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mabs_mem_iff](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/mabs-mem-iff--5ce8fc5f6f22c56006c96a1a.md) | 27 | `result-track:5ce8fc5f6f22c56006c96a1a97b440f2c24ac9324eff0f5affb54fdae8c097b0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/instance--c40aafb12bf10e44a289db48.md) | 36 | `declaration-track:c40aafb12bf10e44a289db486e18e6c4b3a4eb6452925b296af5a090673190f4` |
| 3 | `theorem` | [NormalizerCondition.normal_of_coatom](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/normalizercondition-normal-of-coatom--11bec108530e5982dd683b6f.md) | 51 | `result-track:11bec108530e5982dd683b6f16f9be3c953415f4a8c8c999de2d5005e2c56f15` |
| 4 | `theorem` | [isCoatom_comap](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/iscoatom-comap--8cba3186327634994e425a8b.md) | 56 | `result-track:8cba3186327634994e425a8bdede21106c292ffd4e0ea6587527c0b57cae96aa` |
| 5 | `theorem` | [isCoatom_map](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/iscoatom-map--e7b480a79597a9b519bc115d.md) | 61 | `result-track:e7b480a79597a9b519bc115d67d803f4752604152011ae03120ceab6d677e4bd` |
| 6 | `lemma` | [isCoatom_comap_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/iscoatom-comap-of-surjective--c5c53c6d72b7ff57422c2745.md) | 65 | `result-track:c5c53c6d72b7ff57422c27452bf79256fc1488e0764ab22f877731bbb0b15683` |
| 7 | `instance` | [toIsOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/toisorderedmonoid--08790441e94d7e405365dc9a.md) | 85 | `declaration-track:08790441e94d7e405365dc9a1d9720c09e5192d38bf15fdcce55238ee46e320c` |
| 8 | `lemma` | [Subsemigroup.strictMono_topEquiv](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/subsemigroup-strictmono-topequiv--bd045704af0961e3fb6c91e8.md) | 92 | `result-track:bd045704af0961e3fb6c91e84119b22a67d85b7433cf7f4d1574e14091673153` |
| 9 | `lemma` | [MulEquiv.strictMono_subsemigroupCongr](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/mulequiv-strictmono-subsemigroupcongr--dfba2b6b30e49f65f1885d4c.md) | 96 | `result-track:dfba2b6b30e49f65f1885d4c31722796c15e23fec59f18774a9e3f9dab4f7964` |
| 10 | `lemma` | [MulEquiv.strictMono_symm](../../../../../mathematics/Algebra/GroupTheory/Order/Variant1ed49e7d842599443c64a1aed4935332d8ebc24cab56254e9d798fb200a01617.lean/declarations/mulequiv-strictmono-symm--c3efd13db0c4dd99ddbe13c0.md) | 101 | `result-track:c3efd13db0c4dd99ddbe13c064f354b4d18da62721a022979bb04eb49b188db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
