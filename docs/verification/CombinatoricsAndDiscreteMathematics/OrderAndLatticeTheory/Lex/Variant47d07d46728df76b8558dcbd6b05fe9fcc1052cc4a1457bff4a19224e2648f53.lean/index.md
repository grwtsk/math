# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7021dfc021a16fe1ad7c3feddfed2cb1f7df093a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7021dfc021a16fe1ad7c3feddfed2cb1f7df093a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.OrderSynonym` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Notation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex--761cf56cbd50cdcfc178cd4e.md) | 42 | `declaration-track:761cf56cbd50cdcfc178cd4e1bf9ee908381a9621fb399384b34d3e0b393c915` |
| 2 | `theorem` | [toLex_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/tolex-apply--1612c0f115c7864ac85f5d62.md) | 52 | `result-track:1612c0f115c7864ac85f5d623b667b421ccf3077da0817dc4cf3a20e2f5037ba` |
| 3 | `theorem` | [ofLex_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/oflex-apply--83f63b094f7fb20539c008bd.md) | 57 | `result-track:83f63b094f7fb20539c008bd32cf5357c4dcc264a11fb112202084a3200c034c` |
| 4 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-lt-of-lt-of-preorder--eb1531f9a742d08efeb10013.md) | 61 | `result-track:eb1531f9a742d08efeb100139276f48b584b363cc33b9953ed4613c6a4f4cf6d` |
| 5 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-lt-of-lt--262d15d80e4cd8a33f75ca83.md) | 68 | `result-track:262d15d80e4cd8a33f75ca83e2f2a4ba553e7847c36b1a7c159aeba03ea213eb` |
| 6 | `theorem` | [isTrichotomous_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/istrichotomous-lex--b6e4b29685f895d26b5f8efc.md) | 74 | `result-track:b6e4b29685f895d26b5f8efcda53c1f1d6d9aca9f7604fbe1ba29e5b7dbc184f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--09c873caa1fa012b64a6b5be.md) | 91 | `declaration-track:09c873caa1fa012b64a6b5beabf7d9f591e82620a04a093fc7c78d812a3eb6b5` |
| 8 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-isstrictorder--2321caee326b657c7e30dfa7.md) | 94 | `declaration-track:2321caee326b657c7e30dfa74dec66baa443e2b2c217f58ddcf3455c072ec2d2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--c76f4ce8e0b31f9df0701692.md) | 105 | `declaration-track:c76f4ce8e0b31f9df0701692693e523dfedb1e0016f3990f45dce58db9b25009` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--5ec5fa0a4c04f1d2058bce69.md) | 109 | `declaration-track:5ec5fa0a4c04f1d2058bce691509320ed2e5ef10184648b70374c1ec01def5d4` |
| 11 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/tolex-monotone--b2b22507820975a7eddd360d.md) | 121 | `result-track:b2b22507820975a7eddd360d60248baefe0c589a959e2731626b92f65cd2979d` |
| 12 | `theorem` | [toLex_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/tolex-strictmono--5c157e0aea35e6e75aa025e0.md) | 130 | `result-track:5c157e0aea35e6e75aa025e0dd56c23a060cd4803d426ce95d9667c3cf950d3c` |
| 13 | `theorem` | [lt_toLex_update_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lt-tolex-update-self-iff--9d00ab58e856a3e4bc5ac1d7.md) | 139 | `result-track:9d00ab58e856a3e4bc5ac1d757a2feb81110c07f61e83a02a1459d62ea0604a2` |
| 14 | `theorem` | [toLex_update_lt_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/tolex-update-lt-self-iff--8405527fd892f2d07eefe65b.md) | 151 | `result-track:8405527fd892f2d07eefe65b6a1db50c0c8b672cba3081200c9d95608e0f5962` |
| 15 | `theorem` | [le_toLex_update_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/le-tolex-update-self-iff--b4c5905a4ba7e0d587f044bc.md) | 163 | `result-track:b4c5905a4ba7e0d587f044bca70881c70d21663e25a26170f644dd476ea3171f` |
| 16 | `theorem` | [toLex_update_le_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/tolex-update-le-self-iff--2a7ac962311edfbca2976f38.md) | 168 | `result-track:2a7ac962311edfbca2976f389b1b6b35ae79193c4f169a97a0bde183105ea28b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--f28de4e95bd0583c1cda2c97.md) | 174 | `declaration-track:f28de4e95bd0583c1cda2c974daa38c5de109fb010eb1839a75672f9578243ab` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--64ddce44195c8507faa83a70.md) | 179 | `declaration-track:64ddce44195c8507faa83a70346ab8900bbe233800db4ad000b890816c6166f1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--c2052d920f94d68886397e26.md) | 184 | `declaration-track:c2052d920f94d68886397e265441781a0b30af77b9759276db213a9c140c10ea` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--aefe8762fd7a82c5bfe1467b.md) | 188 | `declaration-track:aefe8762fd7a82c5bfe1467be9eda4fb5cbb0f27b4c1a2fa00c999d6c6292f0a` |
| 21 | `theorem` | [Lex.noMaxOrder'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-nomaxorder--ed2521b48c09f1c2b0459223.md) | 202 | `result-track:ed2521b48c09f1c2b0459223d0fa43892bf220a7514f5e0fcecfbac8ea69579a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--fe95312ca18f25d9ac181218.md) | 211 | `declaration-track:fe95312ca18f25d9ac1812184c8ecc54666d6ab45f1b5168bb453100853ee1e4` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/instance--48671256bd442c8d5e72d890.md) | 217 | `declaration-track:48671256bd442c8d5e72d890245adffba25b2016851c875b63d30248cc330273` |
| 24 | `instance` | [Lex.orderedCancelCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-orderedcancelcommmonoid--fca81589aba53a664f8d7079.md) | 228 | `declaration-track:fca81589aba53a664f8d7079e7ad31c6cd205348c852af4197c2fa6aa3257351` |
| 25 | `instance` | [Lex.orderedCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-orderedcommgroup--23e3bf7adb6be2951ebad991.md) | 238 | `declaration-track:23e3bf7adb6be2951ebad991403322a84364c38725fae403adcd62385e72ca0b` |
| 26 | `instance` | [Lex.linearOrderedCancelCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-linearorderedcancelcommmonoid--344d5eb159b8eee2115da45a.md) | 245 | `declaration-track:344d5eb159b8eee2115da45a305f561eb1b904c45ce337f55d2dac9b27a87b92` |
| 27 | `instance` | [Lex.linearOrderedCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-linearorderedcommgroup--41e9be5b2fc8a1eb549e60f5.md) | 252 | `declaration-track:41e9be5b2fc8a1eb549e60f54dc7f1acd9fa9e5a5b7c6b2987af566c36ce4f55` |
| 28 | `theorem` | [lex_desc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant47d07d46728df76b8558dcbd6b05fe9fcc1052cc4a1457bff4a19224e2648f53.lean/declarations/lex-desc--e97e98460518e8fc950d5f42.md) | 262 | `result-track:e97e98460518e8fc950d5f42aa4743db10a6ee979150bf4c333281fc904f2ff4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
