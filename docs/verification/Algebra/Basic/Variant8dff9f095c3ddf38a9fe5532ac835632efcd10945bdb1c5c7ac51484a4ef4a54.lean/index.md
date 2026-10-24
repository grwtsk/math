# Verification target: GRWTSK.Algebra.Basic.Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "702b391f3a6fec651d8d04577a60d6dd9a0d5c98",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `702b391f3a6fec651d8d04577a60d6dd9a0d5c98`.

Source path: `GRWTSK/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Group` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulSemiringAction](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/declarations/mulsemiringaction--e702a5d6299f8c2d40f0583d.md) | 45 | `declaration-track:e702a5d6299f8c2d40f0583ddf7355055eb27bdbc853401da11f4abf51c14aa4` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/declarations/instance--fd45ed4bb22e891895bb323c.md) | 60 | `declaration-track:fd45ed4bb22e891895bb323c0aee7a77c159272c3ecc86a1a1baef9d0cf344a8` |
| 3 | `def` | [MulSemiringAction.toRingHom](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/declarations/mulsemiringaction-toringhom--6227f1654841051a45253a8a.md) | 67 | `declaration-track:6227f1654841051a45253a8aafc66821183d0c03df78a543c02a5d71eef52dee` |
| 4 | `theorem` | [toRingHom_injective](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/declarations/toringhom-injective--09b2a43844ec99d947bec545.md) | 72 | `result-track:09b2a43844ec99d947bec545bd8476a894a7d79c2a3f19be87a3e5030d9fe9f9` |
| 5 | `def` | [MulSemiringAction.toRingEquiv](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/declarations/mulsemiringaction-toringequiv--094e25da29e04552eb279d8c.md) | 79 | `declaration-track:094e25da29e04552eb279d8cd0cee3cb68d091ab737d08cb0347a6110a18f96d` |
| 6 | `def` | [MulSemiringAction.compHom](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/declarations/mulsemiringaction-comphom--8e93bad16b312d112429849c.md) | 92 | `declaration-track:8e93bad16b312d112429849ca0358490ff8b53866ef92315c7df884308c1cdb3` |
| 7 | `theorem` | [smul_inv''](../../../../mathematics/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/declarations/smul-inv--2125b265e80a004923ebd419.md) | 107 | `result-track:2125b265e80a004923ebd4197416e8db4eda86d0299541acc25a3802bc369327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
