# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38b0ae6fcf6f763c5a91c9fda3a896fd06a0175",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38b0ae6fcf6f763c5a91c9fda3a896fd06a0175`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Tauto` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Units` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [units_natAbs](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/units-natabs--15705948a192cbe56810fb35.md) | 24 | `result-track:15705948a192cbe56810fb353e9d79080a44ad1c8434da69ffd1155d6abe7d06` |
| 2 | `lemma` | [natAbs_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/natabs-of-isunit--fe90612f023cbd2944a23ef3.md) | 30 | `result-track:fe90612f023cbd2944a23ef3def3e3fb0ba12b63cd463917bdefd5695ee110f3` |
| 3 | `lemma` | [isUnit_eq_one_or](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/isunit-eq-one-or--9d359c0cd6b5567eefa55179.md) | 32 | `result-track:9d359c0cd6b5567eefa55179fe67d387aecba2a1235ca2347b127068ce98a5d0` |
| 4 | `lemma` | [isUnit_ne_iff_eq_neg](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/isunit-ne-iff-eq-neg--f51eab519d5c184d9e54ee14.md) | 35 | `result-track:f51eab519d5c184d9e54ee14be62a0f397599b005c1c022be3e5af7db818e2a3` |
| 5 | `lemma` | [isUnit_eq_or_eq_neg](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/isunit-eq-or-eq-neg--db7a52af49476846653aeb33.md) | 38 | `result-track:db7a52af49476846653aeb3363f881e682bfa87a4a58216dde764d5aeeae21c7` |
| 6 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/isunit-iff--c2986da5f5f01c65094d09b4.md) | 41 | `result-track:c2986da5f5f01c65094d09b46641838d023d878248e8442014dc4072f2055d7e` |
| 7 | `lemma` | [eq_one_or_neg_one_of_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/eq-one-or-neg-one-of-mul-eq-one--18234d1ca6e6c2fa33029ea2.md) | 47 | `result-track:18234d1ca6e6c2fa33029ea2a6553f395cad117d92bd4e6e4899708de097996b` |
| 8 | `lemma` | [eq_one_or_neg_one_of_mul_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/eq-one-or-neg-one-of-mul-eq-one--1a6f7fea082d7233da29558f.md) | 50 | `result-track:1a6f7fea082d7233da29558fc31e551365c76bb4bb69e53bfd6ec3d0426b6758` |
| 9 | `lemma` | [eq_of_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/eq-of-mul-eq-one--bff23fef62006e397ca4ec28.md) | 55 | `result-track:bff23fef62006e397ca4ec28f8bb369c44a17b2d1a29440828faa31fe9902b26` |
| 10 | `lemma` | [mul_eq_one_iff_eq_one_or_neg_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/mul-eq-one-iff-eq-one-or-neg-one--2ab5f6a0dd283d5080b20da1.md) | 59 | `result-track:2ab5f6a0dd283d5080b20da192a075867b2a16163aaf014ec3324aa3cd0b1ca2` |
| 11 | `lemma` | [eq_one_or_neg_one_of_mul_eq_neg_one'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one--14e4f41b90b2822b04122064.md) | 63 | `result-track:14e4f41b90b2822b04122064b91c9ee975a4726c616afd7a7aaf2d6e49f475f1` |
| 12 | `lemma` | [mul_eq_neg_one_iff_eq_one_or_neg_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/mul-eq-neg-one-iff-eq-one-or-neg-one--9c4729046cc0dc6dc4826a12.md) | 68 | `result-track:9c4729046cc0dc6dc4826a12bb06c56f05df1ba73c5e9eb158ca0ae424d20716` |
| 13 | `lemma` | [isUnit_iff_natAbs_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/isunit-iff-natabs-eq--5aecf700a1bd38a4935486fd.md) | 72 | `result-track:5aecf700a1bd38a4935486fd93efce51f280b2c68959f64d735fc84b3910d17a` |
| 14 | `lemma` | [ofNat_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/ofnat-isunit--5e265e6ef675adf358a4e21f.md) | 77 | `result-track:5e265e6ef675adf358a4e21f208d6b6a13cd7817a0ddcf1099c87d7de5d12f14` |
| 15 | `lemma` | [isUnit_mul_self](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/isunit-mul-self--4531cf119bfbcc77b9cab9c9.md) | 79 | `result-track:4531cf119bfbcc77b9cab9c9859fee9ae31b4abf31c7868dd0b630e0c2254d6f` |
| 16 | `lemma` | [isUnit_add_isUnit_eq_isUnit_add_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/isunit-add-isunit-eq-isunit-add-isunit--4c71268a1865200bbcbc0ea6.md) | 82 | `result-track:4c71268a1865200bbcbc0ea640221092e69e490ab148f7f2ad53fe5e73879c45` |
| 17 | `lemma` | [eq_one_or_neg_one_of_mul_eq_neg_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant1ed249d4f81f7af749512c2339bc11e97e05c1a953e761a635ddffd0327729d3.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one--62281023b1526c04bda17934.md) | 87 | `result-track:62281023b1526c04bda179343dec9da16c578fec7a278824fc7871fb2974b681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
