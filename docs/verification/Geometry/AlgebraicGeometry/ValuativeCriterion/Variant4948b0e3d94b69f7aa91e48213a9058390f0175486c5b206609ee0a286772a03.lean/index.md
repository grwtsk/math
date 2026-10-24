# Verification target: GRWTSK.Geometry.AlgebraicGeometry.ValuativeCriterion.Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "333066e40f0a638d44d10d0b33079537438b611d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `333066e40f0a638d44d10d0b33079537438b611d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Immersion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Proper` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Injective` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.LocalSubring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ValuativeCommSq](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecommsq--d498fa675a09d05538ed8580.md) | 57 | `declaration-track:d498fa675a09d05538ed8580fa4ab4397b603b2f9e2522a1139719a810a2800a` |
| 2 | `def` | [ValuativeCriterion.Existence](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecriterion-existence--57aaa2d7c8c898a088a5a8f0.md) | 82 | `declaration-track:57aaa2d7c8c898a088a5a8f039503d897f3f53479d5a72b8504199f0d08dadcc` |
| 3 | `def` | [ValuativeCriterion.Uniqueness](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecriterion-uniqueness--7bb35e1f6c6883b6135a36d1.md) | 87 | `declaration-track:7bb35e1f6c6883b6135a36d1fb1ca413d22ab893f0f7c2087bdc7ffc1d291277` |
| 4 | `def` | [ValuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecriterion--e8c445c950225d6ccac1d32b.md) | 92 | `declaration-track:e8c445c950225d6ccac1d32bd990dddb22f818e2e674d6ce3ba340a2f2acdfde` |
| 5 | `lemma` | [ValuativeCriterion.iff](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecriterion-iff--8df9f458ce8311b2e033341c.md) | 97 | `result-track:8df9f458ce8311b2e033341cfbb73ab76ae605a84455c303fce86e13c5ff8c9b` |
| 6 | `lemma` | [ValuativeCriterion.eq](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecriterion-eq--4fcb373352ed3371b714cbca.md) | 102 | `result-track:4fcb373352ed3371b714cbcae9d10275e58f7e947a94fccef6b971161863aebc` |
| 7 | `lemma` | [ValuativeCriterion.existence](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecriterion-existence--1629ab3c84312447e4732b7f.md) | 107 | `result-track:1629ab3c84312447e4732b7f4cdfc0efb2a8d39631da019df1aaed9dde24cb36` |
| 8 | `lemma` | [ValuativeCriterion.uniqueness](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/valuativecriterion-uniqueness--5fb3f3c3af469642fc6bea09.md) | 110 | `result-track:5fb3f3c3af469642fc6bea09381eb989e2732f60a8a400dfb588415fafa4a9e2` |
| 9 | `lemma` | [specializingMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/specializingmap--77f20e5bbe895cb89eff62c4.md) | 118 | `result-track:77f20e5bbe895cb89eff62c4cb19dff78405cef282dfe2ce92563ab3bb3f2172` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/instance--9bb47734414fef8e70c09748.md) | 144 | `declaration-track:9bb47734414fef8e70c097485bd3da3d42e429cbe691ac81cdddab9f01225f0a` |
| 11 | `lemma` | [of_specializingMap](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/of-specializingmap--9e515baeec50ffafe98c7925.md) | 147 | `result-track:9e515baeec50ffafe98c79259ab39afbee4d81a2b5e08c438c7f2d21d045ba39` |
| 12 | `instance` | [stableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/stableunderbasechange--1ced8d6f17b2b0e78bc1eabf.md) | 201 | `declaration-track:1ced8d6f17b2b0e78bc1eabfa2cf2a0de99aa71dedae6e9334c81826bd783881` |
| 13 | `lemma` | [eq](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/eq--b3d183a789fe6947dcdf52a1.md) | 219 | `result-track:b3d183a789fe6947dcdf52a1595c8727f2bbed6799f295e443568852694b5ab8` |
| 14 | `lemma` | [UniversallyClosed.eq_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/universallyclosed-eq-valuativecriterion--f2715b610bf4c44bd4751d81.md) | 233 | `result-track:f2715b610bf4c44bd4751d8121833e1ef9d2ffef11c7de6a43c7572cd5b39b4f` |
| 15 | `lemma` | [UniversallyClosed.of_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/universallyclosed-of-valuativecriterion--28bab9fcc085df4308fb3eaf.md) | 239 | `result-track:28bab9fcc085df4308fb3eafcd03ce543b035252936aa0fdb1bd8ffad33db268` |
| 16 | `lemma` | [IsSeparated.of_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/isseparated-of-valuativecriterion--75ef761c34d0defae6d52ab9.md) | 248 | `result-track:75ef761c34d0defae6d52ab9202c840c88bd688249bd4433df7e135bba600108` |
| 17 | `lemma` | [IsSeparated.valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/isseparated-valuativecriterion--f6735ce7fd42ace8435c7083.md) | 279 | `result-track:f6735ce7fd42ace8435c708337ce9cfbada5e531cd86fc42a6b77e3b5985150e` |
| 18 | `lemma` | [IsSeparated.eq_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/isseparated-eq-valuativecriterion--2f1ded0631bdfc62a571469c.md) | 324 | `result-track:2f1ded0631bdfc62a571469c042449dc504f5270e2c6ebbe3da2ad3ef37c3d33` |
| 19 | `lemma` | [IsProper.eq_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/isproper-eq-valuativecriterion--71b7b6e65c1b324d58df204a.md) | 334 | `result-track:71b7b6e65c1b324d58df204a163d22ce868a6783e6cf74b87868d538a83b78d7` |
| 20 | `lemma` | [IsProper.of_valuativeCriterion](../../../../../mathematics/Geometry/AlgebraicGeometry/ValuativeCriterion/Variant4948b0e3d94b69f7aa91e48213a9058390f0175486c5b206609ee0a286772a03.lean/declarations/isproper-of-valuativecriterion--eee63301a5c59306bb0bf082.md) | 345 | `result-track:eee63301a5c59306bb0bf08200d99ff817c975d463fd3c0677a68529dff6480b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
