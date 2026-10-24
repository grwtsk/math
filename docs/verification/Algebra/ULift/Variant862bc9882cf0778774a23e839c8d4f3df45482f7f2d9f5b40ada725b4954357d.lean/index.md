# Verification target: GRWTSK.Algebra.ULift.Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6c89a97f272686cbeaeb51cc006a1c728a3fa65",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/index.md) · [Full source](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6c89a97f272686cbeaeb51cc006a1c728a3fa65`.

Source path: `GRWTSK/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [mulZeroClass](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/mulzeroclass--1356c4ae40b7e056e8972ea8.md) | 33 | `declaration-track:1356c4ae40b7e056e8972ea84a5114c62d281e0d47b9d89fbddc5c0932864c82` |
| 2 | `instance` | [distrib](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/distrib--4aa11a172a903baa70278dea.md) | 37 | `declaration-track:4aa11a172a903baa70278deaa709832aea341477e4951b554bbe4c4c9eea2cf6` |
| 3 | `instance` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonunitalnonassocsemiring--ccfa81410b9f90c254f29dee.md) | 42 | `declaration-track:ccfa81410b9f90c254f29dee2c7f30b273d746a988fb12265b89ae84fa6ad0d8` |
| 4 | `instance` | [nonAssocSemiring](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonassocsemiring--585dfe76f0c00287e12a9123.md) | 50 | `declaration-track:585dfe76f0c00287e12a9123b1e87d8042e0e98dc860e98d13038ce7d87710c8` |
| 5 | `instance` | [nonUnitalSemiring](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonunitalsemiring--96532e17d3a5f47edf314329.md) | 55 | `declaration-track:96532e17d3a5f47edf314329a222f81b08ddf06614f2e51a7cf2674110fd32f4` |
| 6 | `instance` | [semiring](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/semiring--2f9d557cff0f533d58c7f0a9.md) | 61 | `declaration-track:2f9d557cff0f533d58c7f0a946955074e87971bc200a26fde3c42c397f9a07bc` |
| 7 | `def` | [ringEquiv](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/ringequiv--13d897518e809ee9cfe34ce1.md) | 69 | `declaration-track:13d897518e809ee9cfe34ce10b377cad579b9724be8c1b2ee2392b76fdf409d1` |
| 8 | `instance` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonunitalcommsemiring--65a121f26a396ce941ac5e2c.md) | 77 | `declaration-track:65a121f26a396ce941ac5e2cf66e5f7ebea0bc7d92b6c3172d24533afbfdadcf` |
| 9 | `instance` | [commSemiring](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/commsemiring--9ab2fab0be44c29427d4a393.md) | 83 | `declaration-track:9ab2fab0be44c29427d4a393624144cb6ecb9198fb57bf5c4f1095bdd7d61679` |
| 10 | `instance` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonunitalnonassocring--7b7b11eae2611054b977d4b7.md) | 87 | `declaration-track:7b7b11eae2611054b977d4b7c4f1d85649dd756b896fdb1bcbf51fe58b93e5b9` |
| 11 | `instance` | [nonUnitalRing](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonunitalring--b484208c65f5cd9777e13579.md) | 96 | `declaration-track:b484208c65f5cd9777e135795a987e812c08452d43777b7801e7a867bfa03264` |
| 12 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonassocring--822ecdd6690207c7475737ab.md) | 105 | `declaration-track:822ecdd6690207c7475737ab6ca146f276aae302dd852cd16ca776fb1134674a` |
| 13 | `instance` | [ring](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/ring--3cda2d3b06ac69ef22be576f.md) | 118 | `declaration-track:3cda2d3b06ac69ef22be576ffc6bc27235edade870700c38e385ba01445affd8` |
| 14 | `instance` | [nonUnitalCommRing](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/nonunitalcommring--5423b9e70dbc78ec7fe404a7.md) | 130 | `declaration-track:5423b9e70dbc78ec7fe404a78df37125c65c6eaadd22a4e141603dda7cf83f62` |
| 15 | `instance` | [commRing](../../../../mathematics/Algebra/ULift/Variant862bc9882cf0778774a23e839c8d4f3df45482f7f2d9f5b40ada725b4954357d.lean/declarations/commring--c23b0a481b361b75dab059da.md) | 140 | `declaration-track:c23b0a481b361b75dab059dad5ab4207d58cc60e6d7d442e2244da3d9fd245c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
